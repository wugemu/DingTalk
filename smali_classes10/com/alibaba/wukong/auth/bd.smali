.class public Lcom/alibaba/wukong/auth/bd;
.super Ljava/lang/Object;
.source "SyncParaTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/auth/bd$a;
    }
.end annotation


# static fields
.field private static aZ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/wukong/sync/SyncParaDataHandler",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static bt:Ljava/util/concurrent/Executor;

.field private static mMainHandler:Landroid/os/Handler;


# instance fields
.field private br:Lcom/alibaba/wukong/auth/af;

.field private bs:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

.field private endProcessor:Lcom/alibaba/wukong/auth/bb$b;

.field private volatile mFinished:Z

.field private mTimeout:I

.field private mTimerRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/auth/bd;->aZ:Ljava/util/Map;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alibaba/wukong/auth/bd;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/wukong/auth/af;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 1
    .param p1, "model"    # Lcom/alibaba/wukong/auth/af;
    .param p2, "ack"    # Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x7530

    iput v0, p0, Lcom/alibaba/wukong/auth/bd;->mTimeout:I

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/wukong/auth/bd;->mFinished:Z

    .line 156
    new-instance v0, Lcom/alibaba/wukong/auth/bd$2;

    invoke-direct {v0, p0}, Lcom/alibaba/wukong/auth/bd$2;-><init>(Lcom/alibaba/wukong/auth/bd;)V

    iput-object v0, p0, Lcom/alibaba/wukong/auth/bd;->endProcessor:Lcom/alibaba/wukong/auth/bb$b;

    .line 174
    new-instance v0, Lcom/alibaba/wukong/auth/bd$3;

    invoke-direct {v0, p0}, Lcom/alibaba/wukong/auth/bd$3;-><init>(Lcom/alibaba/wukong/auth/bd;)V

    iput-object v0, p0, Lcom/alibaba/wukong/auth/bd;->mTimerRunnable:Ljava/lang/Runnable;

    .line 47
    iput-object p1, p0, Lcom/alibaba/wukong/auth/bd;->br:Lcom/alibaba/wukong/auth/af;

    .line 48
    iput-object p2, p0, Lcom/alibaba/wukong/auth/bd;->bs:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    .line 49
    return-void
.end method

.method private a(Lcom/alibaba/wukong/auth/ag;Lcom/alibaba/wukong/auth/bb;)V
    .locals 16
    .param p1, "model"    # Lcom/alibaba/wukong/auth/ag;
    .param p2, "mergeAck"    # Lcom/alibaba/wukong/auth/bb;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    const-string/jumbo v12, "[TAG] Sync para task"

    const-string/jumbo v13, "base"

    invoke-static {v12, v13}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v9

    .line 79
    .local v9, "trace":Lhzv;
    if-eqz p1, :cond_0

    :try_start_0
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alibaba/wukong/auth/ag;->aC:Ljava/util/List;

    if-eqz v12, :cond_0

    sget-object v12, Lcom/alibaba/wukong/auth/bd;->aZ:Ljava/util/Map;

    if-nez v12, :cond_1

    .line 80
    :cond_0
    const-string/jumbo v12, "[SYNC] para parse data or handler null"

    invoke-virtual {v9, v12}, Lhzv;->a(Ljava/lang/String;)V

    .line 81
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/alibaba/wukong/auth/bb;->a(Lcom/alibaba/wukong/sync/SyncAck;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    .line 139
    :goto_0
    return-void

    .line 84
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/wukong/auth/ag;->aC:Ljava/util/List;

    .line 85
    .local v2, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/auth/ab;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "sync para down size="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lhzv;->a(Ljava/lang/String;)V

    .line 88
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v3, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/wukong/sync/SyncParaDataHandler<Ljava/lang/Object;>;Lcom/alibaba/wukong/auth/bd$a;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/auth/ab;

    .line 90
    .local v8, "m":Lcom/alibaba/wukong/auth/ab;
    iget-object v13, v8, Lcom/alibaba/wukong/auth/ab;->data:[B

    if-nez v13, :cond_2

    .line 91
    const-string/jumbo v13, "[SYNC] para parse data is null"

    invoke-virtual {v9, v13}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 138
    .end local v2    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/auth/ab;>;"
    .end local v3    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/wukong/sync/SyncParaDataHandler<Ljava/lang/Object;>;Lcom/alibaba/wukong/auth/bd$a;>;"
    .end local v8    # "m":Lcom/alibaba/wukong/auth/ab;
    :catchall_0
    move-exception v12

    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    throw v12

    .line 95
    .restart local v2    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/auth/ab;>;"
    .restart local v3    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/wukong/sync/SyncParaDataHandler<Ljava/lang/Object;>;Lcom/alibaba/wukong/auth/bd$a;>;"
    .restart local v8    # "m":Lcom/alibaba/wukong/auth/ab;
    :cond_2
    :try_start_2
    iget-object v13, v8, Lcom/alibaba/wukong/auth/ab;->ao:Ljava/lang/Integer;

    invoke-static {v13}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v10

    .line 96
    .local v10, "type":I
    sget-object v13, Lcom/alibaba/wukong/auth/bd;->aZ:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/sync/SyncParaDataHandler;

    .line 97
    .local v7, "handler":Lcom/alibaba/wukong/sync/SyncParaDataHandler;, "Lcom/alibaba/wukong/sync/SyncParaDataHandler<Ljava/lang/Object;>;"
    if-nez v7, :cond_3

    .line 98
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "[SYNC] para parse data handler not exist type="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 103
    :cond_3
    :try_start_3
    const-string/jumbo v13, "p"

    invoke-static {v13}, Ljad;->a(Ljava/lang/String;)Ljac;

    move-result-object v13

    iget-object v14, v8, Lcom/alibaba/wukong/auth/ab;->data:[B

    invoke-virtual {v7, v10}, Lcom/alibaba/wukong/sync/SyncParaDataHandler;->getModelType(I)Ljava/lang/reflect/Type;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljac;->a([BLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 104
    .local v1, "data":Ljava/lang/Object;
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/auth/bd$a;

    .line 105
    .local v5, "entity":Lcom/alibaba/wukong/auth/bd$a;
    if-nez v5, :cond_4

    .line 106
    new-instance v5, Lcom/alibaba/wukong/auth/bd$a;

    .end local v5    # "entity":Lcom/alibaba/wukong/auth/bd$a;
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/alibaba/wukong/auth/bb;->e(Ljava/lang/String;)Lcom/alibaba/wukong/sync/SyncAck;

    move-result-object v13

    invoke-direct {v5, v13}, Lcom/alibaba/wukong/auth/bd$a;-><init>(Lcom/alibaba/wukong/sync/SyncAck;)V

    .line 107
    .restart local v5    # "entity":Lcom/alibaba/wukong/auth/bd$a;
    invoke-interface {v3, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_4
    invoke-virtual {v7}, Lcom/alibaba/wukong/sync/SyncParaDataHandler;->isPackaged()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 110
    new-instance v13, Lcom/alibaba/wukong/sync/SyncData;

    invoke-direct {v13, v10, v1}, Lcom/alibaba/wukong/sync/SyncData;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v13}, Lcom/alibaba/wukong/auth/bd$a;->addData(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 114
    .end local v1    # "data":Ljava/lang/Object;
    .end local v5    # "entity":Lcom/alibaba/wukong/auth/bd$a;
    :catch_0
    move-exception v4

    .line 115
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "[SYNC] para parse data err, model not matched type="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 112
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "data":Ljava/lang/Object;
    .restart local v5    # "entity":Lcom/alibaba/wukong/auth/bd$a;
    :cond_5
    :try_start_5
    invoke-virtual {v5, v1}, Lcom/alibaba/wukong/auth/bd$a;->addData(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 118
    .end local v1    # "data":Ljava/lang/Object;
    .end local v5    # "entity":Lcom/alibaba/wukong/auth/bd$a;
    .end local v7    # "handler":Lcom/alibaba/wukong/sync/SyncParaDataHandler;, "Lcom/alibaba/wukong/sync/SyncParaDataHandler<Ljava/lang/Object;>;"
    .end local v8    # "m":Lcom/alibaba/wukong/auth/ab;
    .end local v10    # "type":I
    :cond_6
    :try_start_6
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 119
    const-string/jumbo v12, "[SYNC] para parse data no handler"

    invoke-virtual {v9, v12}, Lhzv;->b(Ljava/lang/String;)V

    .line 120
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/alibaba/wukong/auth/bb;->a(Lcom/alibaba/wukong/sync/SyncAck;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 138
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0

    .line 125
    :cond_7
    :try_start_7
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 126
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alibaba/wukong/sync/SyncParaDataHandler<Ljava/lang/Object;>;Lcom/alibaba/wukong/auth/bd$a;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/sync/SyncParaDataHandler;

    .line 127
    .restart local v7    # "handler":Lcom/alibaba/wukong/sync/SyncParaDataHandler;, "Lcom/alibaba/wukong/sync/SyncParaDataHandler<Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/wukong/auth/bd$a;

    .line 128
    .local v11, "val":Lcom/alibaba/wukong/auth/bd$a;
    invoke-static {}, Lcom/alibaba/wukong/auth/bd;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v13

    new-instance v14, Lcom/alibaba/wukong/auth/bd$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v7, v11}, Lcom/alibaba/wukong/auth/bd$1;-><init>(Lcom/alibaba/wukong/auth/bd;Lcom/alibaba/wukong/sync/SyncParaDataHandler;Lcom/alibaba/wukong/auth/bd$a;)V

    invoke-interface {v13, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 138
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alibaba/wukong/sync/SyncParaDataHandler<Ljava/lang/Object;>;Lcom/alibaba/wukong/auth/bd$a;>;"
    .end local v7    # "handler":Lcom/alibaba/wukong/sync/SyncParaDataHandler;, "Lcom/alibaba/wukong/sync/SyncParaDataHandler<Ljava/lang/Object;>;"
    .end local v11    # "val":Lcom/alibaba/wukong/auth/bd$a;
    :cond_8
    invoke-static {v9}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/wukong/auth/bd;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/wukong/auth/bd;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/bd;->finish()V

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/sync/SyncParaDataHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/sync/SyncParaDataHandler",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "handler":Lcom/alibaba/wukong/sync/SyncParaDataHandler;, "Lcom/alibaba/wukong/sync/SyncParaDataHandler<Ljava/lang/Object;>;"
    if-nez p0, :cond_1

    .line 205
    :cond_0
    return-void

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/wukong/sync/SyncParaDataHandler;->getTypeFilter()Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->getObjectTypes()Ljava/util/Collection;

    move-result-object v0

    .line 202
    .local v0, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 203
    .local v1, "objectType":Ljava/lang/Integer;
    sget-object v3, Lcom/alibaba/wukong/auth/bd;->aZ:Ljava/util/Map;

    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/wukong/auth/bd;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/wukong/auth/bd;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/bd;->taskFinish()V

    return-void
.end method

.method private finish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 190
    sget-object v0, Lcom/alibaba/wukong/auth/bd;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/wukong/auth/bd;->mTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 191
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/bd;->taskFinish()V

    .line 192
    return-void
.end method

.method private static declared-synchronized getExecutor()Ljava/util/concurrent/Executor;
    .locals 4

    .prologue
    .line 208
    const-class v1, Lcom/alibaba/wukong/auth/bd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/auth/bd;->bt:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Liab;

    const-string/jumbo v2, "sync-para-task"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3}, Liab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/auth/bd;->bt:Ljava/util/concurrent/Executor;

    .line 211
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/auth/bd;->bt:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startTimer()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 171
    sget-object v0, Lcom/alibaba/wukong/auth/bd;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/wukong/auth/bd;->mTimerRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/alibaba/wukong/auth/bd;->mTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    return-void
.end method

.method private taskFinish()V
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/alibaba/wukong/auth/bd;->mFinished:Z

    if-eqz v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/sync/SyncParaService;->getInstance()Lcom/alibaba/wukong/sync/SyncParaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/sync/SyncParaService;->endTask()V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/wukong/auth/bd;->mFinished:Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    const-string/jumbo v2, "[TAG] Sync para task"

    const-string/jumbo v3, "base"

    invoke-static {v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v1

    .line 60
    .local v1, "trace":Lhzv;
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/bd;->startTimer()V

    .line 61
    new-instance v0, Lcom/alibaba/wukong/auth/bb;

    iget-object v2, p0, Lcom/alibaba/wukong/auth/bd;->bs:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    invoke-direct {v0, v2}, Lcom/alibaba/wukong/auth/bb;-><init>(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V

    .line 62
    .local v0, "mergeAck":Lcom/alibaba/wukong/auth/bb;
    iget-object v2, p0, Lcom/alibaba/wukong/auth/bd;->endProcessor:Lcom/alibaba/wukong/auth/bb$b;

    invoke-virtual {v0, v2}, Lcom/alibaba/wukong/auth/bb;->a(Lcom/alibaba/wukong/auth/bb$b;)V

    .line 63
    iget-object v2, p0, Lcom/alibaba/wukong/auth/bd;->br:Lcom/alibaba/wukong/auth/af;

    iget-object v2, v2, Lcom/alibaba/wukong/auth/af;->av:Lcom/alibaba/wukong/auth/ag;

    if-nez v2, :cond_0

    .line 64
    const-string/jumbo v2, "[SYNC] sync para pkg model is null"

    invoke-virtual {v1, v2}, Lhzv;->b(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v2, "model is null"

    invoke-virtual {v0, v2}, Lcom/alibaba/wukong/auth/bb;->failed(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/wukong/auth/bd;->br:Lcom/alibaba/wukong/auth/af;

    iget-object v2, v2, Lcom/alibaba/wukong/auth/af;->av:Lcom/alibaba/wukong/auth/ag;

    invoke-direct {p0, v2, v0}, Lcom/alibaba/wukong/auth/bd;->a(Lcom/alibaba/wukong/auth/ag;Lcom/alibaba/wukong/auth/bb;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .end local v0    # "mergeAck":Lcom/alibaba/wukong/auth/bb;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    throw v2
.end method
