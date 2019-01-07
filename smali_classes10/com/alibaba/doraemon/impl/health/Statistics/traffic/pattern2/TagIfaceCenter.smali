.class public Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;
.super Ljava/lang/Object;
.source "TagIfaceCenter.java"


# static fields
.field private static final MINUTE_SEC:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "TagIfaceCenter"

.field private static sInstance:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;

.field private static final sTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTagStrings:[Ljava/lang/String;

.field private static final sTags:[I


# instance fields
.field private mActiveIfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCompatibleFailed:Z

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mLogReporter:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;

.field private mRecordTime:J

.field private final mStatsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v1, 0x11

    const/16 v3, 0x10

    .line 38
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->sTags:[I

    .line 42
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "LWP"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "H5"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "Alimei"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "UT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "GDMap"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "HttpDns"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "hpm"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "Guard"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "LWPImg"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "Trace"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "Motu"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "DoraemonReq"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "Upgrade"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "Video"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "Accs"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "Live"

    aput-object v2, v0, v1

    const-string/jumbo v1, "MiniApp"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->sTagStrings:[Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->sTagMap:Ljava/util/Map;

    return-void

    .line 38
    :array_0
    .array-data 4
        0xa001
        0xa002
        0xa003
        0xa0ac
        0xa004
        0xa005
        0xa006
        0xf00d
        0xa008
        0xa009
        0xa00a
        0xa00b
        0xa00c
        0xa00d
        0xa00e
        0xa00f
        0xa010
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reporter"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mActiveIfaces:Ljava/util/Set;

    .line 50
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mStatsLock:Ljava/lang/Object;

    .line 52
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mCompatibleFailed:Z

    .line 251
    new-instance v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter$1;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter$1;-><init>(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;)V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 240
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->sTagStrings:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 241
    sget-object v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->sTagMap:Ljava/util/Map;

    sget-object v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->sTagStrings:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->sTags:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_0
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mContext:Landroid/content/Context;

    .line 245
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mLogReporter:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mRecordTime:J

    .line 247
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->init(Landroid/content/Context;)V

    .line 248
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->updateIfacesLocked()V

    .line 249
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->updateIfaces()V

    return-void
.end method

.method private doTrafficStatisticsLocked(Landroid/content/Context;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;)V
    .locals 36
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reporter"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;

    .prologue
    .line 91
    invoke-static {}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->isAdapterSuccess()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->refreshNetworkStats()V

    .line 96
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->statTotalTraffics(Landroid/content/Context;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;

    move-result-object v35

    .line 98
    .local v35, "totalInc":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->statTagTraffics(Landroid/content/Context;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;

    move-result-object v34

    .line 100
    .local v34, "tagsInc":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;
    invoke-virtual/range {v35 .. v35}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->isInc()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    .line 101
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgWifiInc:J

    move-object/from16 v0, v34

    iget-wide v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgWifiInc:J

    sub-long v6, v2, v4

    .line 102
    .local v6, "otherFgWifiInc":J
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-lez v2, :cond_0

    .line 103
    const-string/jumbo v3, "Other"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v2, p2

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->reportUTLog(Ljava/lang/String;ZZJ)V

    .line 104
    const-string/jumbo v10, "Other"

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v9, p2

    move-wide v14, v6

    invoke-interface/range {v9 .. v15}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->reportTraceLog(Ljava/lang/String;ZZLjava/lang/String;J)V

    .line 107
    :cond_0
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgOtherInc:J

    move-object/from16 v0, v34

    iget-wide v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgOtherInc:J

    sub-long v12, v2, v4

    .line 108
    .local v12, "otherFgOtherInc":J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_1

    .line 109
    const-string/jumbo v9, "Other"

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v8, p2

    invoke-interface/range {v8 .. v13}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->reportUTLog(Ljava/lang/String;ZZJ)V

    .line 110
    const-string/jumbo v16, "Other"

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v15, p2

    move-wide/from16 v20, v12

    invoke-interface/range {v15 .. v21}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->reportTraceLog(Ljava/lang/String;ZZLjava/lang/String;J)V

    .line 113
    :cond_1
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgWifiInc:J

    move-object/from16 v0, v34

    iget-wide v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgWifiInc:J

    sub-long v18, v2, v4

    .line 114
    .local v18, "otherBgWifiInc":J
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-lez v2, :cond_2

    .line 115
    const-string/jumbo v15, "Other"

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v14, p2

    invoke-interface/range {v14 .. v19}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->reportUTLog(Ljava/lang/String;ZZJ)V

    .line 116
    const-string/jumbo v22, "Other"

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v21, p2

    move-wide/from16 v26, v18

    invoke-interface/range {v21 .. v27}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->reportTraceLog(Ljava/lang/String;ZZLjava/lang/String;J)V

    .line 119
    :cond_2
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgOtherInc:J

    move-object/from16 v0, v34

    iget-wide v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgOtherInc:J

    sub-long v24, v2, v4

    .line 120
    .local v24, "otherBgOtherInc":J
    const-wide/16 v2, 0x0

    cmp-long v2, v24, v2

    if-lez v2, :cond_3

    .line 121
    const-string/jumbo v21, "Other"

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, p2

    invoke-interface/range {v20 .. v25}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->reportUTLog(Ljava/lang/String;ZZJ)V

    .line 122
    const-string/jumbo v28, "Other"

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v27, p2

    move-wide/from16 v32, v24

    invoke-interface/range {v27 .. v33}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->reportTraceLog(Ljava/lang/String;ZZLjava/lang/String;J)V

    .line 125
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-interface {v0, v2, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->checkVIPWarn(ILjava/lang/Object;)V

    .line 127
    invoke-static {}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->recordTagSnapshot()V

    .line 130
    .end local v6    # "otherFgWifiInc":J
    .end local v12    # "otherFgOtherInc":J
    .end local v18    # "otherBgWifiInc":J
    .end local v24    # "otherBgOtherInc":J
    .end local v34    # "tagsInc":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;
    .end local v35    # "totalInc":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;
    :cond_4
    return-void
.end method

.method public static getModuleTag(Ljava/lang/String;)I
    .locals 2
    .param p0, "module"    # Ljava/lang/String;

    .prologue
    .line 64
    sget-object v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->sTagMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 65
    .local v0, "tag":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 66
    :cond_0
    const/4 v1, -0x1

    .line 69
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static declared-synchronized getsInstance(Landroid/content/Context;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reporter"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;

    .prologue
    .line 56
    const-class v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->sInstance:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;-><init>(Landroid/content/Context;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;)V

    sput-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->sInstance:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;

    .line 60
    :cond_0
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->sInstance:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isNewPattern()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method private updateIfaces()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 268
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mStatsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 270
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 272
    .local v0, "curTime":J
    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mRecordTime:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xea60

    cmp-long v2, v4, v6

    if-ltz v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mLogReporter:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;

    invoke-direct {p0, v2, v4}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->doTrafficStatisticsLocked(Landroid/content/Context;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;)V

    .line 278
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->updateIfacesLocked()V

    .line 282
    monitor-exit v3

    return-void

    .end local v0    # "curTime":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private updateIfacesLocked()V
    .locals 14
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v13, 0x1

    .line 287
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-ge v8, v9, :cond_1

    .line 288
    iput-boolean v13, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mCompatibleFailed:Z

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 295
    .local v1, "mConnManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v4

    .line 296
    .local v4, "networkInfos":[Landroid/net/NetworkInfo;
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mActiveIfaces:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->clear()V

    .line 297
    array-length v8, v4

    :goto_1
    if-ge v7, v8, :cond_0

    aget-object v3, v4, v7

    .line 298
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 299
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 300
    .local v5, "ownerClass":Ljava/lang/Class;
    const-string/jumbo v9, "getLinkProperties"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v5, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 301
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 303
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkProperties;

    .line 304
    .local v6, "properties":Landroid/net/LinkProperties;
    iget-object v9, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mActiveIfaces:Ljava/util/Set;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "ownerClass":Ljava/lang/Class;
    .end local v6    # "properties":Landroid/net/LinkProperties;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 307
    .end local v1    # "mConnManager":Landroid/net/ConnectivityManager;
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v4    # "networkInfos":[Landroid/net/NetworkInfo;
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Throwable;
    iput-boolean v13, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mCompatibleFailed:Z

    .line 310
    const-string/jumbo v7, "HEALTH"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "updateIfacesLocked Compatible failed !!  "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public checkTrafficIncrement(Landroid/content/Context;Ljava/lang/String;I)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tagName"    # Ljava/lang/String;
    .param p3, "tagValue"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->isNewPattern()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mActiveIfaces:Ljava/util/Set;

    invoke-static {p1, p2, p3, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->innerCheckTrafficIncrement2(Landroid/content/Context;Ljava/lang/String;ILjava/util/Set;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;

    move-result-object v0

    .line 218
    .local v0, "incInfo":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;
    :goto_0
    return-object v0

    .line 215
    .end local v0    # "incInfo":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->innerCheckTrafficIncrement(Landroid/content/Context;Ljava/lang/String;I)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;

    move-result-object v0

    .restart local v0    # "incInfo":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;
    goto :goto_0
.end method

.method public doTrafficStatistics()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mLogReporter:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;

    invoke-direct {p0, v0, v2}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->doTrafficStatisticsLocked(Landroid/content/Context;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;)V

    .line 207
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public refreshNetworkStats()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->isNewPattern()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->innerRefreshNetworkStats2()V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser;->innerRefreshNetworkStats1()V

    goto :goto_0
.end method

.method public registerReceiver()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->isNewPattern()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, "connFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mConnReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 226
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->sTagStrings:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->clearTagTrafficRecord(Landroid/content/Context;[Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "Doraemon"

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->clearTagTrafficRecord(Landroid/content/Context;Ljava/lang/String;)V

    .line 231
    .end local v0    # "connFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/health/utils/HealthSharePref;->removeNetworkStatsValue(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public statTagTraffics(Landroid/content/Context;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reporter"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 168
    new-instance v9, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;

    invoke-direct {v9}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;-><init>()V

    .line 169
    .local v9, "totalIncInfo":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->sTags:[I

    array-length v0, v0

    if-ge v8, v0, :cond_4

    .line 170
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->sTagStrings:[Ljava/lang/String;

    aget-object v0, v0, v8

    sget-object v1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->sTags:[I

    aget v1, v1, v8

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->checkTrafficIncrement(Landroid/content/Context;Ljava/lang/String;I)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;

    move-result-object v10

    .line 172
    .local v10, "trafficIncInfo":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;
    iget-wide v0, v10, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgWifiInc:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 173
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->sTagStrings:[Ljava/lang/String;

    aget-object v1, v0, v8

    const/4 v2, 0x1

    const/4 v3, 0x1

    iget-wide v4, v10, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgWifiInc:J

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->reportUTLog(Ljava/lang/String;ZZJ)V

    .line 174
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->sTagStrings:[Ljava/lang/String;

    aget-object v2, v0, v8

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-wide v6, v10, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgWifiInc:J

    move-object v1, p2

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->reportTraceLog(Ljava/lang/String;ZZLjava/lang/String;J)V

    .line 176
    iget-wide v0, v9, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgWifiInc:J

    iget-wide v2, v10, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgWifiInc:J

    add-long/2addr v0, v2

    iput-wide v0, v9, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgWifiInc:J

    .line 179
    :cond_0
    iget-wide v0, v10, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgOtherInc:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 180
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->sTagStrings:[Ljava/lang/String;

    aget-object v1, v0, v8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-wide v4, v10, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgOtherInc:J

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->reportUTLog(Ljava/lang/String;ZZJ)V

    .line 181
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->sTagStrings:[Ljava/lang/String;

    aget-object v2, v0, v8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-wide v6, v10, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgOtherInc:J

    move-object v1, p2

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->reportTraceLog(Ljava/lang/String;ZZLjava/lang/String;J)V

    .line 183
    iget-wide v0, v9, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgOtherInc:J

    iget-wide v2, v10, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgOtherInc:J

    add-long/2addr v0, v2

    iput-wide v0, v9, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgOtherInc:J

    .line 186
    :cond_1
    iget-wide v0, v10, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgWifiInc:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 187
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->sTagStrings:[Ljava/lang/String;

    aget-object v1, v0, v8

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-wide v4, v10, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgWifiInc:J

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->reportUTLog(Ljava/lang/String;ZZJ)V

    .line 188
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->sTagStrings:[Ljava/lang/String;

    aget-object v2, v0, v8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-wide v6, v10, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgWifiInc:J

    move-object v1, p2

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->reportTraceLog(Ljava/lang/String;ZZLjava/lang/String;J)V

    .line 190
    iget-wide v0, v9, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgWifiInc:J

    iget-wide v2, v10, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgWifiInc:J

    add-long/2addr v0, v2

    iput-wide v0, v9, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgWifiInc:J

    .line 193
    :cond_2
    iget-wide v0, v10, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgOtherInc:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 194
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->sTagStrings:[Ljava/lang/String;

    aget-object v1, v0, v8

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-wide v4, v10, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgOtherInc:J

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->reportUTLog(Ljava/lang/String;ZZJ)V

    .line 195
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->sTagStrings:[Ljava/lang/String;

    aget-object v2, v0, v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-wide v6, v10, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgOtherInc:J

    move-object v1, p2

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->reportTraceLog(Ljava/lang/String;ZZLjava/lang/String;J)V

    .line 197
    iget-wide v0, v9, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgOtherInc:J

    iget-wide v2, v10, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgOtherInc:J

    add-long/2addr v0, v2

    iput-wide v0, v9, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgOtherInc:J

    .line 169
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 201
    .end local v10    # "trafficIncInfo":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;
    :cond_4
    return-object v9
.end method

.method public statTotalTraffics(Landroid/content/Context;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reporter"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    const-string/jumbo v0, "Doraemon"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->checkTrafficIncrement(Landroid/content/Context;Ljava/lang/String;I)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;

    move-result-object v8

    .line 138
    .local v8, "trafficIncInfo":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;
    iget-wide v0, v8, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgWifiInc:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 139
    const-string/jumbo v1, "Doraemon"

    const/4 v2, 0x1

    const/4 v3, 0x1

    iget-wide v4, v8, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgWifiInc:J

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->reportUTLog(Ljava/lang/String;ZZJ)V

    .line 140
    const-string/jumbo v2, "Doraemon"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-wide v6, v8, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgWifiInc:J

    move-object v1, p2

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->reportTraceLog(Ljava/lang/String;ZZLjava/lang/String;J)V

    .line 143
    :cond_0
    iget-wide v0, v8, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgOtherInc:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 144
    const-string/jumbo v1, "Doraemon"

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-wide v4, v8, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgOtherInc:J

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->reportUTLog(Ljava/lang/String;ZZJ)V

    .line 145
    const-string/jumbo v2, "Doraemon"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-wide v6, v8, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mFgOtherInc:J

    move-object v1, p2

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->reportTraceLog(Ljava/lang/String;ZZLjava/lang/String;J)V

    .line 148
    :cond_1
    iget-wide v0, v8, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgWifiInc:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 149
    const-string/jumbo v1, "Doraemon"

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-wide v4, v8, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgWifiInc:J

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->reportUTLog(Ljava/lang/String;ZZJ)V

    .line 150
    const-string/jumbo v2, "Doraemon"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-wide v6, v8, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgWifiInc:J

    move-object v1, p2

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->reportTraceLog(Ljava/lang/String;ZZLjava/lang/String;J)V

    .line 153
    :cond_2
    iget-wide v0, v8, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgOtherInc:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 154
    const-string/jumbo v1, "Doraemon"

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-wide v4, v8, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgOtherInc:J

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->reportUTLog(Ljava/lang/String;ZZJ)V

    .line 155
    const-string/jumbo v2, "Doraemon"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-wide v6, v8, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/StatsParser$TrafficIncInfo;->mBgOtherInc:J

    move-object v1, p2

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;->reportTraceLog(Ljava/lang/String;ZZLjava/lang/String;J)V

    .line 158
    :cond_3
    return-object v8
.end method

.method public unregisterReceiver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->isNewPattern()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->mConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    :cond_0
    return-void
.end method
