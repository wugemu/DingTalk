.class public abstract Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;
.super Ljava/lang/Object;
.source "CountLogHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/alibaba/doraemon/impl/health/trace/LogHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "CountLogHandler"


# instance fields
.field private final mArgValueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/impl/health/trace/LogItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private final mValueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/impl/health/trace/LogItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->mValueMap:Ljava/util/HashMap;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->mArgValueMap:Ljava/util/HashMap;

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->mMainHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method


# virtual methods
.method public aggregateData(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 17
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 31
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 36
    .local v11, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->mValueMap:Ljava/util/HashMap;

    monitor-enter v14

    .line 37
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->mValueMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/doraemon/impl/health/trace/LogItem;

    .line 38
    .local v13, "logItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    if-nez v13, :cond_2

    .line 39
    new-instance v13, Lcom/alibaba/doraemon/impl/health/trace/LogItem;

    .end local v13    # "logItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    invoke-direct {v13}, Lcom/alibaba/doraemon/impl/health/trace/LogItem;-><init>()V

    .line 42
    .restart local v13    # "logItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    :cond_2
    iget-wide v2, v13, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->sum:D

    add-double v2, v2, p3

    iput-wide v2, v13, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->sum:D

    .line 44
    iget v2, v13, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v13, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->count:I

    .line 46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->mValueMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->mValueMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_5

    .line 49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->mValueMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 50
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 51
    .local v9, "entryKey":Ljava/lang/String;
    const-string/jumbo v2, ","

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 52
    .local v12, "keys":[Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/doraemon/impl/health/trace/LogItem;

    .line 53
    .local v10, "entryLogItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    if-eqz v12, :cond_3

    array-length v2, v12

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    .line 54
    const/4 v2, 0x0

    aget-object v3, v12, v2

    const/4 v2, 0x1

    aget-object v4, v12, v2

    const/4 v5, 0x0

    iget-wide v6, v10, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->sum:D

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    iget v7, v10, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->count:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->saveToTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 64
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    .end local v9    # "entryKey":Ljava/lang/String;
    .end local v10    # "entryLogItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    .end local v12    # "keys":[Ljava/lang/String;
    .end local v13    # "logItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    :catchall_0
    move-exception v2

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 58
    .restart local v13    # "logItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->mValueMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 61
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->mMainHandler:Landroid/os/Handler;

    const v3, 0x198333

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 62
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->mMainHandler:Landroid/os/Handler;

    const v3, 0x198333

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 64
    :cond_6
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public aggregateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 16
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "value"    # D

    .prologue
    .line 68
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 73
    .local v11, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->mArgValueMap:Ljava/util/HashMap;

    monitor-enter v13

    .line 74
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->mArgValueMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 75
    .local v8, "argMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    if-nez v8, :cond_2

    .line 76
    new-instance v8, Ljava/util/HashMap;

    .end local v8    # "argMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 78
    .restart local v8    # "argMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->mArgValueMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/doraemon/impl/health/trace/LogItem;

    .line 82
    .local v12, "logItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    if-nez v12, :cond_3

    .line 83
    new-instance v12, Lcom/alibaba/doraemon/impl/health/trace/LogItem;

    .end local v12    # "logItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    invoke-direct {v12}, Lcom/alibaba/doraemon/impl/health/trace/LogItem;-><init>()V

    .line 86
    .restart local v12    # "logItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    :cond_3
    iget-wide v2, v12, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->sum:D

    add-double v2, v2, p4

    iput-wide v2, v12, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->sum:D

    .line 87
    iget v2, v12, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v12, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->count:I

    .line 88
    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_5

    .line 91
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 92
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 93
    .local v5, "argKey":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/doraemon/impl/health/trace/LogItem;

    .line 95
    .local v10, "entryLogItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    iget-wide v2, v10, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->sum:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    iget v7, v10, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->count:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->saveToTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 100
    .end local v5    # "argKey":Ljava/lang/String;
    .end local v8    # "argMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    .end local v10    # "entryLogItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    .end local v12    # "logItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 98
    .restart local v8    # "argMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    .restart local v12    # "logItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    :cond_4
    :try_start_1
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 100
    :cond_5
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->mMainHandler:Landroid/os/Handler;

    const v3, 0x198333

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->mMainHandler:Landroid/os/Handler;

    const v3, 0x198333

    const-wide/32 v6, 0xea60

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public flushData()V
    .locals 20

    .prologue
    .line 108
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->mValueMap:Ljava/util/HashMap;

    monitor-enter v15

    .line 109
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->mValueMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->mValueMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 111
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 112
    .local v11, "entryKey":Ljava/lang/String;
    const-string/jumbo v2, ","

    invoke-virtual {v11, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 113
    .local v13, "keys":[Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/doraemon/impl/health/trace/LogItem;

    .line 115
    .local v12, "entryLogItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    if-eqz v13, :cond_0

    array-length v2, v13

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 116
    const/4 v2, 0x0

    aget-object v3, v13, v2

    const/4 v2, 0x1

    aget-object v4, v13, v2

    const/4 v5, 0x0

    iget-wide v6, v12, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->sum:D

    iget v2, v12, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->count:I

    int-to-double v0, v2

    move-wide/from16 v18, v0

    div-double v6, v6, v18

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    iget v7, v12, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->count:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->saveToTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 122
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    .end local v11    # "entryKey":Ljava/lang/String;
    .end local v12    # "entryLogItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    .end local v13    # "keys":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 120
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->mValueMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 122
    :cond_2
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->mArgValueMap:Ljava/util/HashMap;

    monitor-enter v15

    .line 125
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->mArgValueMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->mArgValueMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_3
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 127
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 128
    .local v8, "argMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 129
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 131
    .restart local v13    # "keys":[Ljava/lang/String;
    if-eqz v13, :cond_4

    array-length v2, v13

    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    .line 132
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 133
    .local v14, "valueEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 134
    .local v5, "argKey":Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/doraemon/impl/health/trace/LogItem;

    .line 136
    .restart local v12    # "entryLogItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    const/4 v2, 0x0

    aget-object v3, v13, v2

    const/4 v2, 0x1

    aget-object v4, v13, v2

    iget-wide v6, v12, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->sum:D

    iget v2, v12, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->count:I

    int-to-double v0, v2

    move-wide/from16 v18, v0

    div-double v6, v6, v18

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    iget v7, v12, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->count:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->saveToTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 146
    .end local v5    # "argKey":Ljava/lang/String;
    .end local v8    # "argMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;>;"
    .end local v12    # "entryLogItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    .end local v13    # "keys":[Ljava/lang/String;
    .end local v14    # "valueEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    :catchall_1
    move-exception v2

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 140
    .restart local v8    # "argMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    .restart local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;>;"
    .restart local v13    # "keys":[Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    goto :goto_1

    .line 144
    .end local v8    # "argMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;>;"
    .end local v13    # "keys":[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->mArgValueMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 146
    :cond_6
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 151
    const v1, 0x198333

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_0

    .line 152
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 153
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    const-string/jumbo v1, "CountLogHandler"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 154
    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 155
    new-instance v1, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler$1;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler$1;-><init>(Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 163
    .end local v0    # "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    :cond_0
    return v3
.end method
