public with sharing class TestUtil {
    static Integer snum = 1;
    
    public static String getFakeId(Schema.SObjectType sot) {
        String result = String.valueOf(snum++);
        return sot.getDescribe().getKeyPrefix() +
          '0'.repeat(12 - result.length()) +
          result;
      }
}