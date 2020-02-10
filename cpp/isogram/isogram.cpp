#include "isogram.h"

namespace isogram {

bool is_isogram(std::string s) {
    std::unordered_set<char> set;
    for (auto &c : s) {
        if (c >= 'A' && c <= 'Z') c = 'a' + c - 'A';
        if (c >= 'a' && c <= 'z') {
            if (set.count(c)) return false;
            set.insert(c);
        }
    }
    return true;
}

}  // namespace isogram
