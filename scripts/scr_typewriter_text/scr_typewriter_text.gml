function scr_typewriter_text(_text, _chars_visible, _max_width) {
    var result = "";
    var current_line = "";
    var current_word = "";
    var count = 0;
    var len = string_length(_text);

    for (var i = 1; i <= len; i++) {
        if (count >= _chars_visible) break;

        var ch = string_char_at(_text, i);

        if (ch == " " || ch == "\n") {
            var test_line = current_line + current_word;

            if (string_width(test_line) > _max_width && current_line != "") {
                result += string_trim_end(current_line) + "\n";
                current_line = current_word + ch;
            } else {
                current_line += current_word + ch;
            }

            current_word = "";
            count++;
        }
        else {
            current_word += ch;
            count++;
        }
    }

    if (current_word != "") {
        var test_line = current_line + current_word;

        if (string_width(test_line) > _max_width && current_line != "") {
            result += string_trim_end(current_line) + "\n" + current_word;
        } else {
            result += current_line + current_word;
        }
    } else {
        result += current_line;
    }

    return result;
}