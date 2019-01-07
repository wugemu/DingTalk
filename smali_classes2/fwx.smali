.class public Lfwx;
.super Ljava/lang/Object;
.source "TimeZoneConfigUtil.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/Long;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-class v0, Lfwx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfwx;->a:Ljava/lang/String;

    .line 34
    const-wide/32 v0, 0x36ee80

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lfwx;->b:Ljava/lang/Long;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lfwx;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "timeZoneId"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-static {p0}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lfwx;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1175
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    .line 171
    :cond_1
    sget-object v0, Lfwx;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p0, "timeZoneId"    # Ljava/lang/String;
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static/range {p0 .. p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v15

    .line 122
    .local v15, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v15}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v16

    move/from16 v0, v16

    int-to-long v10, v0

    .line 125
    .local v10, "offset":J
    :try_start_0
    sget-object v16, Lfwx;->b:Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    div-long v16, v10, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 127
    .local v8, "hour":J
    sget-object v16, Lfwx;->b:Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    rem-long v16, v10, v16

    move-wide/from16 v0, v16

    long-to-double v4, v0

    .line 131
    .local v4, "decimals":D
    sget-object v16, Lfwx;->b:Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v16, v4, v16

    const-wide/high16 v18, 0x404e000000000000L    # 60.0

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    div-double v6, v16, v18

    .line 133
    .local v6, "decimalsZone":D
    const-wide/16 v16, 0x0

    cmp-long v16, v8, v16

    if-ltz v16, :cond_3

    .line 134
    const-string/jumbo v12, "+"

    .line 138
    .local v12, "sAdd":Ljava/lang/String;
    :goto_0
    const-wide/16 v16, 0x0

    cmp-long v16, v8, v16

    if-lez v16, :cond_4

    .line 139
    :goto_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 141
    .local v2, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 142
    .local v14, "sHour":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 143
    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "0"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 146
    :cond_0
    const-wide/16 v16, 0x0

    cmpg-double v16, v6, v16

    if-gez v16, :cond_1

    neg-double v6, v6

    .line 147
    :cond_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 148
    .local v13, "sDecimalsZone":Ljava/lang/String;
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 149
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 150
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x30

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 154
    :cond_2
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "GMT"

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .local v3, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string/jumbo v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 163
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "decimals":D
    .end local v6    # "decimalsZone":D
    .end local v8    # "hour":J
    .end local v12    # "sAdd":Ljava/lang/String;
    .end local v13    # "sDecimalsZone":Ljava/lang/String;
    .end local v14    # "sHour":Ljava/lang/String;
    .end local p0    # "timeZoneId":Ljava/lang/String;
    :goto_3
    return-object p0

    .line 136
    .restart local v4    # "decimals":D
    .restart local v6    # "decimalsZone":D
    .restart local v8    # "hour":J
    .restart local p0    # "timeZoneId":Ljava/lang/String;
    :cond_3
    const-string/jumbo v12, "-"

    .restart local v12    # "sAdd":Ljava/lang/String;
    goto/16 :goto_0

    .line 138
    :cond_4
    neg-long v8, v8

    goto/16 :goto_1

    .line 151
    .restart local v2    # "buffer":Ljava/lang/StringBuffer;
    .restart local v13    # "sDecimalsZone":Ljava/lang/String;
    .restart local v14    # "sHour":Ljava/lang/String;
    :cond_5
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_2

    .line 152
    const/16 v16, 0x0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    goto :goto_2

    .line 163
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .end local v4    # "decimals":D
    .end local v6    # "decimalsZone":D
    .end local v8    # "hour":J
    .end local v12    # "sAdd":Ljava/lang/String;
    .end local v13    # "sDecimalsZone":Ljava/lang/String;
    .end local v14    # "sHour":Ljava/lang/String;
    :catch_0
    move-exception v16

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/user/model/TimezoneInfosObject;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Lcom/alibaba/android/user/model/TimezoneInfosObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/user/model/TimezoneInfosObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    const/4 v5, 0x0

    .line 74
    :goto_0
    return-object v5

    .line 52
    :cond_0
    const-string/jumbo v5, "timezone_etag"

    invoke-static {v5}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "etag":Ljava/lang/String;
    iget-object v5, p1, Lcom/alibaba/android/user/model/TimezoneInfosObject;->etag:Ljava/lang/String;

    invoke-static {v5}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 55
    const-string/jumbo v5, "timezone_etag"

    iget-object v6, p1, Lcom/alibaba/android/user/model/TimezoneInfosObject;->etag:Ljava/lang/String;

    invoke-static {v5, v6}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p1, Lcom/alibaba/android/user/model/TimezoneInfosObject;->etag:Ljava/lang/String;

    .line 59
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 60
    .local v3, "filesDir":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "timezone.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, "file":Ljava/io/File;
    const-string/jumbo v4, ""

    .line 63
    .local v4, "timezoneInfos":Ljava/lang/String;
    invoke-static {v0}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p1, Lcom/alibaba/android/user/model/TimezoneInfosObject;->needUpdate:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 64
    :cond_2
    iget-object v5, p1, Lcom/alibaba/android/user/model/TimezoneInfosObject;->timezoneInfos:Ljava/lang/String;

    invoke-static {v5}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 65
    iget-object v4, p1, Lcom/alibaba/android/user/model/TimezoneInfosObject;->timezoneInfos:Ljava/lang/String;

    .line 66
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v1, v6}, Lhcs;->a([BLjava/io/File;Z)V

    .line 74
    :cond_3
    :goto_1
    sget-object v5, Lfwx;->c:Ljava/util/Map;

    invoke-static {v4, v5}, Lfwx;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    goto :goto_0

    .line 68
    :cond_4
    invoke-static {v0}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v6, p1, Lcom/alibaba/android/user/model/TimezoneInfosObject;->needUpdate:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 70
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/FileUtils;->isExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 71
    new-instance v4, Ljava/lang/String;

    .end local v4    # "timezoneInfos":Ljava/lang/String;
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/FileUtils;->readFile(Ljava/io/File;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .restart local v4    # "timezoneInfos":Ljava/lang/String;
    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 11
    .param p0, "timezoneInfos"    # Ljava/lang/String;
    .param p1, "descMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 78
    invoke-static {p0}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 111
    :cond_0
    return-object v9

    .line 81
    :cond_1
    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "locale":Ljava/lang/String;
    invoke-static {p0}, Lcoo;->b(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 83
    .local v2, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v2, :cond_0

    .line 86
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v9, "timeZoneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 88
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v10

    if-ge v1, v10, :cond_0

    .line 89
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/JSONObject;

    .line 90
    .local v5, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v10, "timezone"

    invoke-virtual {v5, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 91
    .local v8, "timeZoneId":Ljava/lang/String;
    invoke-static {v8}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 94
    const-string/jumbo v10, "text"

    invoke-virtual {v5, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, "text":Ljava/lang/String;
    invoke-static {v6}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 98
    invoke-static {v6}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 99
    .local v4, "localeObj":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v4, :cond_3

    .line 102
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "desc":Ljava/lang/String;
    invoke-static {v0}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 104
    const-string/jumbo v10, "en_US"

    invoke-virtual {v4, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_2
    invoke-static {v8, v0}, Lfwx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, "timeZoneGMT":Ljava/lang/String;
    invoke-interface {p1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .end local v0    # "desc":Ljava/lang/String;
    .end local v4    # "localeObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "text":Ljava/lang/String;
    .end local v7    # "timeZoneGMT":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 179
    const-class v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v2, "user_settings"

    const-string/jumbo v3, "timezone_id"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 180
    .local v0, "cloudSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 183
    :goto_0
    return-object v1

    .line 2175
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
