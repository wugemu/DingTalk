.class public Larh;
.super Ljava/lang/Object;
.source "CalendarReportDataManager.java"


# static fields
.field private static a:J

.field private static b:J

.field private static volatile c:Larh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-wide/16 v0, 0x1f

    sput-wide v0, Larh;->a:J

    .line 41
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Larh;->b:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static a()Larh;
    .locals 2

    .prologue
    .line 55
    sget-object v0, Larh;->c:Larh;

    if-nez v0, :cond_1

    .line 56
    const-class v1, Larh;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Larh;->c:Larh;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Larh;

    invoke-direct {v0}, Larh;-><init>()V

    sput-object v0, Larh;->c:Larh;

    .line 60
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_1
    sget-object v0, Larh;->c:Larh;

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Larh;II)V
    .locals 0
    .param p0, "x0"    # Larh;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Larh;->a(II)V

    return-void
.end method

.method static synthetic a(Larh;JJ)V
    .locals 7
    .param p0, "x0"    # Larh;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 38
    .line 3247
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3249
    new-instance v0, Larh$3;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Larh$3;-><init>(Larh;JJLjava/util/List;)V

    .line 3316
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Latf;->a(JJLcom/alibaba/wukong/Callback;)V

    .line 38
    return-void
.end method

.method static synthetic a(Larh;Lasd;)V
    .locals 4
    .param p0, "x0"    # Larh;
    .param p1, "x1"    # Lasd;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    .line 3129
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarReportDataManager] requestCalendarReportConfig :"

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lasd;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 3131
    :try_start_0
    invoke-static {p1}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3132
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3133
    const-string/jumbo v1, "pref_key_calendar_report_config_model"

    invoke-static {v1, v0}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3137
    :cond_0
    :goto_0
    return-void

    .line 3136
    :catch_0
    move-exception v0

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarReportDataManager] CalendarReportConfigObject to String exception"

    aput-object v1, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Larh;Ljava/util/List;)V
    .locals 4
    .param p0, "x0"    # Larh;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 38
    .line 4320
    new-instance v0, Larh$4;

    invoke-direct {v0, p0}, Larh$4;-><init>(Larh;)V

    .line 4336
    const-string/jumbo v1, "pref_key_calendar_report_upload_data_rpc_request_time"

    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcpk;->b(Ljava/lang/String;J)V

    .line 4337
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    .line 4531
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4533
    :cond_0
    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "dataList is empty or null"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4535
    :goto_0
    return-void

    .line 4537
    :cond_1
    iget-object v2, v1, Latf;->c:Latf$c;

    new-instance v3, Latf$25;

    invoke-direct {v3, v1, p1, v0}, Latf$25;-><init>(Latf;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v2, v3}, Latf$c;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(J)Z
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 341
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    sub-long/2addr v0, p0

    sget-wide v2, Larh;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Larh;Lcom/alibaba/android/calendar/data/object/InstanceShowObject;JJ)Z
    .locals 2
    .param p0, "x0"    # Larh;
    .param p1, "x1"    # Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .prologue
    .line 38
    .line 3345
    invoke-virtual {p1}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRealInstanceStartTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-ltz v0, :cond_0

    .line 3346
    invoke-virtual {p1}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRealInstanceStartTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, p4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 38
    goto :goto_0
.end method

.method static synthetic a(Larh;Ljava/util/Map;J)Z
    .locals 2
    .param p0, "x0"    # Larh;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # J

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Larh;->a(Ljava/util/Map;J)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/Map;J)Z
    .locals 8
    .param p2, "startTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lasl;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lasl;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 201
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lasl;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 202
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lasl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 204
    .local v1, "folderId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[CalendarReportDataManager] checkLocalFolderDataNotComplete folderId is null"

    aput-object v6, v3, v5

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 1220
    :cond_0
    invoke-static {}, Lark;->a()Lark;

    move-result-object v3

    invoke-virtual {v3, v1}, Lark;->d(Ljava/lang/String;)Lasj;

    move-result-object v3

    .line 1221
    if-nez v3, :cond_1

    .line 1222
    const/4 v3, 0x0

    .line 209
    :goto_1
    if-nez v3, :cond_5

    .line 210
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[CalendarReportDataManager] checkLocalFolderDataNotComplete Incomplete data folderId="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ", startTime="

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 211
    const/4 v3, 0x1

    .line 216
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lasl;>;"
    .end local v1    # "folderId":Ljava/lang/String;
    :goto_2
    return v3

    .line 1225
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lasl;>;"
    .restart local v1    # "folderId":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "[CalendarReportDataManager] isFolderDataComplete folderExtra="

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v3}, Lasj;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lavy;->a([Ljava/lang/String;)V

    .line 1226
    invoke-static {}, Larl;->a()Larl;

    move-result-object v5

    invoke-virtual {v5, v1}, Larl;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2066
    iget-boolean v5, v3, Lasj;->c:Z

    .line 1227
    if-eqz v5, :cond_2

    .line 1228
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[CalendarReportDataManager] isFolderDataComplete=false has gap."

    aput-object v6, v3, v5

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 1229
    const/4 v3, 0x0

    goto :goto_1

    .line 2090
    :cond_2
    iget-wide v6, v3, Lasj;->f:J

    .line 1233
    cmp-long v5, p2, v6

    if-gez v5, :cond_3

    .line 1234
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[CalendarReportDataManager] isFolderDataComplete=false startTime < notRepeatStartAnchor startTime="

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 1235
    const/4 v3, 0x0

    goto :goto_1

    .line 3082
    :cond_3
    iget-boolean v3, v3, Lasj;->e:Z

    .line 1238
    if-eqz v3, :cond_4

    .line 1239
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[CalendarReportDataManager] isFolderDataComplete=false repeat has more. "

    aput-object v6, v3, v5

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 1240
    const/4 v3, 0x0

    goto :goto_1

    .line 1242
    :cond_4
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 213
    :cond_5
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[CalendarReportDataManager] checkLocalFolderDataNotComplete Complete data folderId="

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ", startTime="

    aput-object v6, v3, v5

    const/4 v5, 0x3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lasl;>;"
    .end local v1    # "folderId":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method public static b()Lasd;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 141
    const/4 v2, 0x0

    .line 142
    .local v2, "object":Lasd;
    const-string/jumbo v4, "pref_key_calendar_report_config_model"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 144
    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "[CalendarReportDataManager] getCalendarReportConfig result="

    aput-object v5, v4, v6

    aput-object v3, v4, v7

    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    .line 146
    :try_start_0
    const-class v4, Lasd;

    invoke-static {v3, v4}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lasd;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_0
    :goto_0
    return-object v2

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "exception":Lcom/google/gson/JsonParseException;
    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "[CalendarReportDataManager] getCalendarReportConfig exception :"

    aput-object v5, v4, v6

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(II)V
    .locals 16
    .param p1, "before"    # I
    .param p2, "after"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 157
    .line 1185
    const-string/jumbo v3, "pref_key_calendar_report_upload_data_rpc_request_time"

    const-wide/16 v12, 0x0

    invoke-static {v3, v12, v13}, Lcpk;->a(Ljava/lang/String;J)J

    move-result-wide v12

    .line 1186
    invoke-static {v12, v13}, Larh;->a(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1187
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "[CalendarReportDataManager] checkIfUploadCalendarReportData is is not more than one day\u3002 lastedRpcTime="

    aput-object v15, v3, v14

    const/4 v14, 0x1

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v14

    const/4 v12, 0x2

    const-string/jumbo v13, ", currentSystemTime="

    aput-object v13, v3, v12

    const/4 v12, 0x3

    invoke-static {}, Lcms;->u()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v12

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 1188
    const/4 v3, 0x1

    .line 157
    :goto_0
    if-eqz v3, :cond_4

    .line 182
    :goto_1
    return-void

    .line 1190
    :cond_0
    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    add-int v3, p1, p2

    int-to-long v12, v3

    sget-wide v14, Larh;->a:J

    cmp-long v3, v12, v14

    if-lez v3, :cond_3

    .line 1191
    :cond_2
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "[CalendarReportDataManager] checkIfUploadCalendarReportData duration error: before="

    aput-object v13, v3, v12

    const/4 v12, 0x1

    .line 1192
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v12

    const/4 v12, 0x2

    const-string/jumbo v13, ", after="

    aput-object v13, v3, v12

    const/4 v12, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v12

    .line 1191
    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 1193
    const/4 v3, 0x1

    goto :goto_0

    .line 1195
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 161
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 163
    .local v10, "systemCurrentTime":J
    sget-wide v12, Larh;->b:J

    rem-long v12, v10, v12

    sub-long v12, v10, v12

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    int-to-long v14, v3

    sub-long v8, v12, v14

    .line 164
    .local v8, "currentTime":J
    move/from16 v0, p1

    int-to-long v12, v0

    sget-wide v14, Larh;->b:J

    mul-long/2addr v12, v14

    sub-long v4, v8, v12

    .line 165
    .local v4, "startTime":J
    move/from16 v0, p2

    int-to-long v12, v0

    sget-wide v14, Larh;->b:J

    mul-long/2addr v12, v14

    add-long v6, v8, v12

    .line 167
    .local v6, "endTime":J
    new-instance v2, Larh$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Larh$2;-><init>(Larh;JJ)V

    .line 181
    .local v2, "callback":Lapv;, "Lapv<Ljava/util/Map<Ljava/lang/String;Lasl;>;>;"
    invoke-static {}, Larl;->a()Larl;

    move-result-object v3

    invoke-virtual {v3, v2}, Larl;->a(Lapv;)V

    goto :goto_1
.end method
