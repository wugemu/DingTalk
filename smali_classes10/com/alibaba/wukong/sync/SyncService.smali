.class public Lcom/alibaba/wukong/sync/SyncService;
.super Ljava/lang/Object;
.source "SyncService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WKSyncLog"

.field private static final TYPE_TOO_LONG:I = 0x1

.field private static final TYPE_TOO_LONG_TWO:I = 0x2

.field public static final VERSION_INT:I = 0x6

.field public static final VERSION_MODULE:Ljava/lang/String; = "sy"

.field private static sInstance:Lcom/alibaba/wukong/sync/SyncService;


# instance fields
.field private mSyncAInfoManager:Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;

.field private mSyncDeviceInfoManager:Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;

.field private mSyncInfoManager:Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/alibaba/wukong/auth/ba;

    invoke-direct {v0}, Lcom/alibaba/wukong/auth/ba;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/sync/SyncService;->mSyncInfoManager:Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;

    .line 42
    new-instance v0, Lcom/alibaba/wukong/sync/SyncAInfoManager;

    invoke-direct {v0}, Lcom/alibaba/wukong/sync/SyncAInfoManager;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/sync/SyncService;->mSyncAInfoManager:Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;

    .line 43
    new-instance v0, Lcom/alibaba/wukong/auth/au;

    invoke-direct {v0}, Lcom/alibaba/wukong/auth/au;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/sync/SyncService;->mSyncDeviceInfoManager:Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;

    .line 44
    return-void
.end method

.method private alarm(Lcom/alibaba/wukong/auth/az;)V
    .locals 4
    .param p1, "syncInfo"    # Lcom/alibaba/wukong/auth/az;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 199
    new-instance v0, Lhzu;

    invoke-direct {v0}, Lhzu;-><init>()V

    .line 200
    .local v0, "alarm":Lhzu;
    const-string/jumbo v2, "sync"

    iput-object v2, v0, Lhzu;->a:Ljava/lang/String;

    .line 201
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 202
    .local v1, "dt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 203
    const-string/jumbo v2, "syncInfo"

    invoke-virtual {p1}, Lcom/alibaba/wukong/auth/az;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_0
    iput-object v1, v0, Lhzu;->b:Ljava/util/Map;

    .line 206
    const/16 v2, 0x1f5

    iput v2, v0, Lhzu;->c:I

    .line 207
    const-string/jumbo v2, "\u53d1\u751fTooLong2"

    iput-object v2, v0, Lhzu;->d:Ljava/lang/String;

    .line 208
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lhzr;->a(Lhzu;)V

    .line 209
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/wukong/sync/SyncService;
    .locals 2

    .prologue
    .line 47
    const-class v1, Lcom/alibaba/wukong/sync/SyncService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/sync/SyncService;->sInstance:Lcom/alibaba/wukong/sync/SyncService;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/alibaba/wukong/sync/SyncService;

    invoke-direct {v0}, Lcom/alibaba/wukong/sync/SyncService;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/sync/SyncService;->sInstance:Lcom/alibaba/wukong/sync/SyncService;

    .line 50
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/sync/SyncService;->sInstance:Lcom/alibaba/wukong/sync/SyncService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startDownSync(Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;Lcom/alibaba/wukong/auth/af;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 16
    .param p1, "syncInfoManager"    # Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;
    .param p2, "model"    # Lcom/alibaba/wukong/auth/af;
    .param p3, "ack"    # Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    const-string/jumbo v12, "[TAG] Sync down"

    const-string/jumbo v13, "base"

    invoke-static {v12, v13}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v10

    .line 139
    .local v10, "trace":Lhzv;
    if-nez p2, :cond_0

    .line 140
    :try_start_0
    const-string/jumbo v12, "[SYNC] SyncPushModel null"

    invoke-virtual {v10, v12}, Lhzv;->b(Ljava/lang/String;)V

    .line 141
    const-string/jumbo v12, "model is null"

    move-object/from16 v0, p3

    invoke-static {v0, v12}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-static {v10}, Lhzt;->a(Lhzv;)V

    .line 195
    :goto_0
    return-void

    .line 144
    :cond_0
    :try_start_1
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/alibaba/wukong/auth/af;->aw:Lcom/alibaba/wukong/auth/ad;

    if-nez v12, :cond_1

    const/4 v11, 0x0

    .line 145
    .local v11, "type":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->getSyncInfo()Lcom/alibaba/wukong/auth/az;

    move-result-object v8

    .line 146
    .local v8, "syncInfo":Lcom/alibaba/wukong/auth/az;
    if-nez v8, :cond_2

    .line 147
    const-string/jumbo v12, "[SYNC] syncInfo null"

    invoke-virtual {v10, v12}, Lhzv;->b(Ljava/lang/String;)V

    .line 148
    const-string/jumbo v12, "syncInfo is null"

    move-object/from16 v0, p3

    invoke-static {v0, v12}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    invoke-static {v10}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 144
    .end local v8    # "syncInfo":Lcom/alibaba/wukong/auth/az;
    .end local v11    # "type":I
    :cond_1
    :try_start_2
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/alibaba/wukong/auth/af;->aw:Lcom/alibaba/wukong/auth/ad;

    iget-object v12, v12, Lcom/alibaba/wukong/auth/ad;->ad:Ljava/lang/Integer;

    invoke-static {v12}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v11

    goto :goto_1

    .line 151
    .restart local v8    # "syncInfo":Lcom/alibaba/wukong/auth/az;
    .restart local v11    # "type":I
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->createTask(Lcom/alibaba/wukong/auth/az;)Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    move-result-object v9

    .line 153
    .local v9, "task":Lcom/alibaba/wukong/sync/AbstractSyncDownTask;
    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    const/4 v12, 0x2

    if-eq v11, v12, :cond_4

    .line 154
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/wukong/auth/af;->av:Lcom/alibaba/wukong/auth/ag;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    .local v4, "packageModel":Lcom/alibaba/wukong/auth/ag;
    if-nez v4, :cond_3

    .line 194
    invoke-static {v10}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 158
    :cond_3
    :try_start_3
    iget-object v12, v4, Lcom/alibaba/wukong/auth/ag;->ay:Ljava/lang/Long;

    invoke-static {v12}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v6

    .line 159
    .local v6, "startSeq":J
    iget-object v12, v4, Lcom/alibaba/wukong/auth/ag;->az:Ljava/lang/Long;

    invoke-static {v12}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    .line 160
    .local v2, "endSeq":J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_4

    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-nez v12, :cond_4

    iget-object v12, v4, Lcom/alibaba/wukong/auth/ag;->aA:Ljava/lang/Long;

    invoke-static {v12}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_4

    iget-object v12, v4, Lcom/alibaba/wukong/auth/ag;->aD:Ljava/lang/Long;

    .line 161
    invoke-static {v12}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_4

    .line 162
    const-string/jumbo v12, "[SYNC] sync unreliable"

    invoke-virtual {v10, v12}, Lhzv;->a(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v9}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->startTimer()V

    .line 164
    new-instance v12, Lcom/alibaba/wukong/auth/bb;

    move-object/from16 v0, p3

    invoke-direct {v12, v0}, Lcom/alibaba/wukong/auth/bb;-><init>(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v12}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->process(Lcom/alibaba/wukong/auth/af;Lcom/alibaba/wukong/auth/bb;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    invoke-static {v10}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0

    .line 169
    .end local v2    # "endSeq":J
    .end local v4    # "packageModel":Lcom/alibaba/wukong/auth/ag;
    .end local v6    # "startSeq":J
    :cond_4
    :try_start_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->offerTask(Lcom/alibaba/wukong/sync/AbstractSyncDownTask;)Z

    move-result v5

    .line 170
    .local v5, "ret":Z
    if-nez v5, :cond_5

    .line 171
    const-string/jumbo v12, "[SYNC] sync is running"

    invoke-virtual {v10, v12}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 194
    invoke-static {v10}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0

    .line 176
    :cond_5
    :try_start_5
    invoke-virtual {v9}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->startTimer()V

    .line 177
    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 1014
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v12}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Z)V

    .line 179
    const-string/jumbo v12, "Sync"

    const-string/jumbo v13, "TooLong"

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v12, v13, v14, v15}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;D)V

    .line 180
    const-string/jumbo v12, "[SYNC] sync tooLong"

    invoke-virtual {v10, v12}, Lhzv;->b(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v9}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->tooLong()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 194
    :goto_2
    invoke-static {v10}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0

    .line 182
    :cond_6
    const/4 v12, 0x2

    if-ne v11, v12, :cond_9

    .line 2014
    const/4 v12, 0x0

    :try_start_6
    move-object/from16 v0, p3

    invoke-static {v0, v12}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Z)V

    .line 184
    const-string/jumbo v12, "Sync"

    const-string/jumbo v13, "TooLong2"

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v12, v13, v14, v15}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;D)V

    .line 185
    iget-wide v12, v8, Lcom/alibaba/wukong/auth/az;->bf:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_7

    iget-wide v12, v8, Lcom/alibaba/wukong/auth/az;->bc:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_7

    iget-wide v12, v8, Lcom/alibaba/wukong/auth/az;->bd:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_8

    .line 186
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/alibaba/wukong/sync/SyncService;->alarm(Lcom/alibaba/wukong/auth/az;)V

    .line 188
    :cond_8
    const-string/jumbo v12, "[SYNC] sync tooLong2"

    invoke-virtual {v10, v12}, Lhzv;->b(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->getSyncEventListeners()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->onTooLong2(Ljava/util/List;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 194
    .end local v5    # "ret":Z
    .end local v8    # "syncInfo":Lcom/alibaba/wukong/auth/az;
    .end local v9    # "task":Lcom/alibaba/wukong/sync/AbstractSyncDownTask;
    .end local v11    # "type":I
    :catchall_0
    move-exception v12

    invoke-static {v10}, Lhzt;->a(Lhzv;)V

    throw v12

    .line 191
    .restart local v5    # "ret":Z
    .restart local v8    # "syncInfo":Lcom/alibaba/wukong/auth/az;
    .restart local v9    # "task":Lcom/alibaba/wukong/sync/AbstractSyncDownTask;
    .restart local v11    # "type":I
    :cond_9
    :try_start_7
    new-instance v12, Lcom/alibaba/wukong/auth/bb;

    move-object/from16 v0, p3

    invoke-direct {v12, v0}, Lcom/alibaba/wukong/auth/bb;-><init>(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v12}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->process(Lcom/alibaba/wukong/auth/af;Lcom/alibaba/wukong/auth/bb;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

.method private startDownSyncDevice(Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;Lcom/alibaba/wukong/auth/af;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 6
    .param p1, "syncInfoManager"    # Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;
    .param p2, "model"    # Lcom/alibaba/wukong/auth/af;
    .param p3, "ack"    # Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    const-string/jumbo v4, "[TAG] SyncDevice down"

    const-string/jumbo v5, "base"

    invoke-static {v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v3

    .line 110
    .local v3, "trace":Lhzv;
    if-nez p2, :cond_0

    .line 111
    :try_start_0
    const-string/jumbo v4, "[SYNCDevice] SyncDevice PushModel null"

    invoke-virtual {v3, v4}, Lhzv;->b(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v4, "model is null"

    invoke-static {p3, v4}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    .line 133
    :goto_0
    return-void

    .line 116
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p1, v4}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->createTask(Lcom/alibaba/wukong/auth/az;)Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    move-result-object v2

    .line 117
    .local v2, "task":Lcom/alibaba/wukong/sync/AbstractSyncDownTask;
    iget-object v1, p2, Lcom/alibaba/wukong/auth/af;->av:Lcom/alibaba/wukong/auth/ag;

    .line 119
    .local v1, "packageModel":Lcom/alibaba/wukong/auth/ag;
    if-nez v1, :cond_1

    .line 120
    const-string/jumbo v4, "[SYNCDevice] SyncDevice PushModel packageModel null"

    invoke-virtual {v3, v4}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 124
    :cond_1
    :try_start_2
    const-string/jumbo v4, "[SYNCDevice] syncDevice unreliable"

    invoke-virtual {v3, v4}, Lhzv;->a(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->startTimer()V

    .line 127
    new-instance v0, Lcom/alibaba/wukong/auth/bb;

    invoke-direct {v0, p3}, Lcom/alibaba/wukong/auth/bb;-><init>(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V

    .line 128
    .local v0, "mergeAck":Lcom/alibaba/wukong/auth/bb;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/alibaba/wukong/auth/bb;->e(Z)V

    .line 129
    invoke-virtual {v2, p2, v0}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->process(Lcom/alibaba/wukong/auth/af;Lcom/alibaba/wukong/auth/bb;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .end local v0    # "mergeAck":Lcom/alibaba/wukong/auth/bb;
    .end local v1    # "packageModel":Lcom/alibaba/wukong/auth/ag;
    .end local v2    # "task":Lcom/alibaba/wukong/sync/AbstractSyncDownTask;
    :catchall_0
    move-exception v4

    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    throw v4
.end method


# virtual methods
.method public addEventListener(Lcom/alibaba/wukong/sync/SyncType;Lcom/alibaba/wukong/sync/SyncEventListener;)V
    .locals 1
    .param p1, "syncType"    # Lcom/alibaba/wukong/sync/SyncType;
    .param p2, "listener"    # Lcom/alibaba/wukong/sync/SyncEventListener;

    .prologue
    .line 64
    sget-object v0, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    if-ne v0, p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncService;->mSyncAInfoManager:Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;

    invoke-virtual {v0, p2}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->addSyncEventListener(Lcom/alibaba/wukong/sync/SyncEventListener;)V

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncService;->mSyncInfoManager:Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;

    invoke-virtual {v0, p2}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->addSyncEventListener(Lcom/alibaba/wukong/sync/SyncEventListener;)V

    goto :goto_0
.end method

.method public addSyncEventListener(Lcom/alibaba/wukong/sync/SyncEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/wukong/sync/SyncEventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncService;->mSyncInfoManager:Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;

    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->addSyncEventListener(Lcom/alibaba/wukong/sync/SyncEventListener;)V

    .line 56
    return-void
.end method

.method public endDownSync()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncService;->mSyncInfoManager:Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;

    invoke-virtual {v0}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->pollTask()V

    .line 214
    return-void
.end method

.method public getSyncAInfo()Lcom/alibaba/wukong/auth/az;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncService;->mSyncAInfoManager:Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;

    invoke-virtual {v0}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->getSyncInfo()Lcom/alibaba/wukong/auth/az;

    move-result-object v0

    return-object v0
.end method

.method public getSyncInfo()Lcom/alibaba/wukong/auth/az;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncService;->mSyncInfoManager:Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;

    invoke-virtual {v0}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->getSyncInfo()Lcom/alibaba/wukong/auth/az;

    move-result-object v0

    return-object v0
.end method

.method public getSyncMinCreateTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    invoke-static {}, Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;->getInstance()Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/sync/SyncMinCreateTimeManager;->getMinCreateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public isIdling()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncService;->mSyncInfoManager:Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;

    invoke-virtual {v0}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->isIdling()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncService;->mSyncAInfoManager:Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;

    invoke-virtual {v0}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->isIdling()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeEventListener(Lcom/alibaba/wukong/sync/SyncType;Lcom/alibaba/wukong/sync/SyncEventListener;)V
    .locals 1
    .param p1, "syncType"    # Lcom/alibaba/wukong/sync/SyncType;
    .param p2, "listener"    # Lcom/alibaba/wukong/sync/SyncEventListener;

    .prologue
    .line 73
    sget-object v0, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    if-ne v0, p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncService;->mSyncAInfoManager:Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;

    invoke-virtual {v0, p2}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->removeSyncEventListener(Lcom/alibaba/wukong/sync/SyncEventListener;)V

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncService;->mSyncInfoManager:Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;

    invoke-virtual {v0, p2}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->removeSyncEventListener(Lcom/alibaba/wukong/sync/SyncEventListener;)V

    goto :goto_0
.end method

.method public removeSyncEventListener(Lcom/alibaba/wukong/sync/SyncEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/wukong/sync/SyncEventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncService;->mSyncInfoManager:Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;

    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->removeSyncEventListener(Lcom/alibaba/wukong/sync/SyncEventListener;)V

    .line 61
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncService;->mSyncInfoManager:Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;

    invoke-virtual {v0}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->reset()V

    .line 231
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncService;->mSyncAInfoManager:Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;

    invoke-virtual {v0}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startDownSync(Lcom/alibaba/wukong/auth/af;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 1
    .param p1, "model"    # Lcom/alibaba/wukong/auth/af;
    .param p2, "ack"    # Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    sget-object v0, Lcom/alibaba/wukong/sync/SyncType;->SYNC:Lcom/alibaba/wukong/sync/SyncType;

    invoke-virtual {p0, v0, p1, p2}, Lcom/alibaba/wukong/sync/SyncService;->startDownSync(Lcom/alibaba/wukong/sync/SyncType;Lcom/alibaba/wukong/auth/af;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V

    .line 84
    return-void
.end method

.method public startDownSync(Lcom/alibaba/wukong/sync/SyncType;Lcom/alibaba/wukong/auth/af;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 1
    .param p1, "syncType"    # Lcom/alibaba/wukong/sync/SyncType;
    .param p2, "model"    # Lcom/alibaba/wukong/auth/af;
    .param p3, "ack"    # Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    .prologue
    .line 87
    sget-object v0, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    if-ne v0, p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncService;->mSyncAInfoManager:Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;

    invoke-direct {p0, v0, p2, p3}, Lcom/alibaba/wukong/sync/SyncService;->startDownSync(Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;Lcom/alibaba/wukong/auth/af;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V

    .line 97
    :goto_0
    return-void

    .line 90
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/sync/SyncType;->SYNC_DEVICE:Lcom/alibaba/wukong/sync/SyncType;

    if-ne v0, p1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncService;->mSyncDeviceInfoManager:Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;

    invoke-direct {p0, v0, p2, p3}, Lcom/alibaba/wukong/sync/SyncService;->startDownSyncDevice(Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;Lcom/alibaba/wukong/auth/af;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncService;->mSyncInfoManager:Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;

    invoke-direct {p0, v0, p2, p3}, Lcom/alibaba/wukong/sync/SyncService;->startDownSync(Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;Lcom/alibaba/wukong/auth/af;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V

    goto :goto_0
.end method

.method public updateSyncInfo(Lcom/alibaba/wukong/auth/az;)Z
    .locals 1
    .param p1, "syncInfo"    # Lcom/alibaba/wukong/auth/az;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncService;->mSyncInfoManager:Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;

    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/sync/AbstractSyncInfoManager;->updateSyncInfo(Lcom/alibaba/wukong/auth/az;)Z

    move-result v0

    return v0
.end method
