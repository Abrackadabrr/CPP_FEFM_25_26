#include <iostream>

struct log_row {
    long int ship_id;
    long int run_id;
    long int time_stamp;
    int event_type;
};

struct Log {
    log_row* data;
    int size;
};

Log extract(Log l, long int ship_to_check) {
    int new_size = 0;
    
    for (int i = 0; i < l.size; i++) {
        new_size += (ship_to_check == l.data[i].ship_id);
    }

    Log new_log; 
    new_log.data = new log_row[new_size];
    new_log.size = new_size;

    int k = 0;
    for (int i = 0; i < l.size; i++) {
        if (ship_to_check == l.data[i].ship_id) {
            new_log.data[k++] = l.data[i];
        }
    }

    return new_log;
}

bool compare_rows(log_row r1, log_row r2) {
    return r1.time_stamp < r2.time_stamp;
}

void sort_log(Log* l) {
    int n = l->size;
    for (int i = 0; i < n; i++) 
        for (int j = 0; j < n; j++) {
            if (compare_rows(l->data[i], l->data[j])) {
                log_row tmp;
                tmp = l->data[j];
                l->data[j] = l->data[i];
                l->data[i] = tmp;
            }
        }
}

bool analyze(Log sorted_log) {
    int current_state = 0;

    if (sorted_log.data[0].event_type != current_state)
        return false;

    current_state++;

    for (int i = 1; i < sorted_log.size; i++) {
        if (sorted_log.data[i].event_type != current_state &&
            sorted_log.data[i].event_type <= 3)
            return false;
        if (sorted_log.data[i].event_type == current_state)
            current_state = (current_state + 1) % 4;
        if (i != sorted_log.size - 1 && 
            sorted_log.data[i].event_type == 3 && 
            sorted_log.data[i + 1].event_type != 0)
            return false;
    }
    return true;
}


int main() {
    int N;
    std::cin >> N;
    Log log; 
    log.data = new log_row[N];
    log.size = N;

// 1) read log
    for (int i = 0; i < N; i++) {
        std::cin >> log.data[i].ship_id 
                >> log.data[i].run_id 
                >> log.data[i].time_stamp
                >> log.data[i].event_type;
    }
// read ship_to_check
    long int ship_to_check;
    std::cin >> ship_to_check;

// 2) extract all row with ship_to_check
    Log new_log = extract(log, ship_to_check);
// 3) sort by time_stamp
    sort_log(&new_log);
// 4) analyze sorted array
    if (analyze(new_log))
        std::cout << "YES" << std::endl;
    else 
        std::cout << "NO" << std::endl;
    delete[] log.data;
    delete[] new_log.data;
}
