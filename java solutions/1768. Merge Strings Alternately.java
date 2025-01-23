class Solution {
    public String mergeAlternately(String word1, String word2) {
        StringBuilder buffer = new StringBuilder();
        int maxlen = Math.max(word1.length(), word2.length());
        int i = 0;

        while (buffer.length() != word1.length() + word2.length() && i < maxlen) {
            if (i < word1.length()) {
                buffer.append(word1.charAt(i));
            }
            if (i < word2.length()) {
                buffer.append(word2.charAt(i));
            }
            i++;
        }

        return buffer.toString();
    }
}
