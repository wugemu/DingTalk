.class public abstract Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;
.super Ljava/lang/Object;
.source "AVGLogHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/alibaba/doraemon/impl/health/trace/LogHandler;


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
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->mValueMap:Ljava/util/HashMap;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->mArgValueMap:Ljava/util/HashMap;

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->mMainHandler:Landroid/os/Handler;

    .line 25
    return-void
.end method


# virtual methods
.method public aggregateData(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 19
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 28
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 32
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

    .line 33
    .local v11, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->mValueMap:Ljava/util/HashMap;

    monitor-enter v14

    .line 34
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->mValueMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/doraemon/impl/health/trace/LogItem;

    .line 35
    .local v13, "logItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    if-nez v13, :cond_2

    .line 36
    new-instance v13, Lcom/alibaba/doraemon/impl/health/trace/LogItem;

    .end local v13    # "logItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    invoke-direct {v13}, Lcom/alibaba/doraemon/impl/health/trace/LogItem;-><init>()V

    .line 39
    .restart local v13    # "logItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    :cond_2
    iget-wide v2, v13, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->sum:D

    add-double v2, v2, p3

    iput-wide v2, v13, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->sum:D

    .line 41
    iget v2, v13, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v13, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->count:I

    .line 43
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->mValueMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->mValueMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_5

    .line 46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->mValueMap:Ljava/util/HashMap;

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

    .line 47
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 48
    .local v9, "entryKey":Ljava/lang/String;
    const-string/jumbo v2, ","

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 49
    .local v12, "keys":[Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/doraemon/impl/health/trace/LogItem;

    .line 50
    .local v10, "entryLogItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    if-eqz v12, :cond_3

    array-length v2, v12

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    .line 51
    const/4 v2, 0x0

    aget-object v3, v12, v2

    const/4 v2, 0x1

    aget-object v4, v12, v2

    const/4 v5, 0x0

    iget-wide v6, v10, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->sum:D

    iget v2, v10, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->count:I

    int-to-double v0, v2

    move-wide/from16 v16, v0

    div-double v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    iget v7, v10, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->count:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->saveToTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 61
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

    .line 55
    .restart local v13    # "logItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->mValueMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 58
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->mMainHandler:Landroid/os/Handler;

    const v3, 0x198333

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 59
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->mMainHandler:Landroid/os/Handler;

    const v3, 0x198333

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 61
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
    .line 65
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 69
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

    .line 70
    .local v11, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->mArgValueMap:Ljava/util/HashMap;

    monitor-enter v13

    .line 71
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->mArgValueMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 72
    .local v8, "argMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    if-nez v8, :cond_2

    .line 73
    new-instance v8, Ljava/util/HashMap;

    .end local v8    # "argMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 75
    .restart local v8    # "argMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->mArgValueMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/doraemon/impl/health/trace/LogItem;

    .line 79
    .local v12, "logItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    if-nez v12, :cond_3

    .line 80
    new-instance v12, Lcom/alibaba/doraemon/impl/health/trace/LogItem;

    .end local v12    # "logItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    invoke-direct {v12}, Lcom/alibaba/doraemon/impl/health/trace/LogItem;-><init>()V

    .line 83
    .restart local v12    # "logItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    :cond_3
    iget-wide v2, v12, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->sum:D

    add-double v2, v2, p4

    iput-wide v2, v12, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->sum:D

    .line 84
    iget v2, v12, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v12, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->count:I

    .line 85
    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_5

    .line 88
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

    .line 89
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 90
    .local v5, "argKey":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/doraemon/impl/health/trace/LogItem;

    .line 92
    .local v10, "entryLogItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    iget-wide v2, v10, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->sum:D

    iget v4, v10, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->count:I

    int-to-double v6, v4

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    iget v7, v10, Lcom/alibaba/doraemon/impl/health/trace/LogItem;->count:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->saveToTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 97
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

    .line 95
    .restart local v8    # "argMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    .restart local v12    # "logItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    :cond_4
    :try_start_1
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 97
    :cond_5
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->mMainHandler:Landroid/os/Handler;

    const v3, 0x198333

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->mMainHandler:Landroid/os/Handler;

    const v3, 0x198333

    const-wide/32 v6, 0xea60

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public flushData()V
    .locals 20

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->mValueMap:Ljava/util/HashMap;

    monitor-enter v15

    .line 106
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->mValueMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->mValueMap:Ljava/util/HashMap;

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

    .line 108
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 109
    .local v11, "entryKey":Ljava/lang/String;
    const-string/jumbo v2, ","

    invoke-virtual {v11, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 110
    .local v13, "keys":[Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/doraemon/impl/health/trace/LogItem;

    .line 112
    .local v12, "entryLogItem":Lcom/alibaba/doraemon/impl/health/trace/LogItem;
    if-eqz v13, :cond_0

    array-length v2, v13

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 113
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

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->saveToTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 119
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

    .line 117
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->mValueMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 119
    :cond_2
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->mArgValueMap:Ljava/util/HashMap;

    monitor-enter v15

    .line 122
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->mArgValueMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->mArgValueMap:Ljava/util/HashMap;

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

    .line 124
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 125
    .local v8, "argMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 126
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 128
    .restart local v13    # "keys":[Ljava/lang/String;
    if-eqz v13, :cond_4

    array-length v2, v13

    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    .line 129
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

    .line 130
    .local v14, "valueEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 131
    .local v5, "argKey":Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/doraemon/impl/health/trace/LogItem;

    .line 133
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

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->saveToTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 143
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

    .line 137
    .restart local v8    # "argMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    .restart local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;>;"
    .restart local v13    # "keys":[Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    goto :goto_1

    .line 141
    .end local v8    # "argMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;"
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/doraemon/impl/health/trace/LogItem;>;>;"
    .end local v13    # "keys":[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->mArgValueMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 143
    :cond_6
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/health/trace/AVGLogHandler;->flushData()V

    .line 149
    const/4 v0, 0x1

    return v0
.end method
