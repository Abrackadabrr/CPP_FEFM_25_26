#include <iostream>

class Log {
    struct log_row {
        long int ship_id;
        long int run_id;
        long int time_stamp;
        int event_type;


        bool compare_rows(const log_row& other)  {
            return time_stamp < other.time_stamp;
        }
};

    log_row* data;
    int size;

public:
    Log extract(long int ship_to_check) {
        int new_size = 0;
        
        for (int i = 0; i < size; i++) {
            new_size += (ship_to_check == data[i].ship_id);
        }

        Log new_log(new_size); 

        int k = 0;
        for (int i = 0; i < size; i++) {
            if (ship_to_check == data[i].ship_id) {
                new_log.data[k++] = data[i];
            }
        }

        return new_log;
    }

    void sort_log() {
        int n = size;
        for (int i = 0; i < n; i++) 
            for (int j = 0; j < n; j++) {
                if (data[i].compare_rows(data[j])) {
                    log_row tmp;
                    tmp = data[j];
                    data[j] = data[i];
                    data[i] = tmp;
                }
            }
    }

    bool analyze() {
        int current_state = 0;

        if (data[0].event_type != current_state)
            return false;

        current_state++;

        for (int i = 1; i < size; i++) {
            if (data[i].event_type != current_state &&
                data[i].event_type <= 3)
                return false;
            if (data[i].event_type == current_state)
                current_state = (current_state + 1) % 4;
            if (i != size - 1 && 
                data[i].event_type == 3 && 
                data[i + 1].event_type != 0)
                return false;
        }
        return true;
    }

    Log(int N) {
        data = new log_row[N];
        size = N;

        for (int i = 0; i < N; i++) {
            std::cin >> data[i].ship_id 
                    >> data[i].run_id 
                    >> data[i].time_stamp
                    >> data[i].event_type;
        }
    }

    ~Log() {
        delete[] data;
    }
};

int main() {
    int N;
    std::cin >> N;
    Log log(N); 

    int ship_to_check;
    std::cin >> ship_to_check;

    Log new_log = log.extract(ship_to_check);

    new_log.sort_log();

    if (new_log.analyze())
        std::cout << "YES" << std::endl;
    else 
        std::cout << "NO" << std::endl;
}
