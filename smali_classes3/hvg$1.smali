.class final Lhvg$1;
.super Ljava/lang/Object;
.source "MainLooperHandler.java"

# interfaces
.implements Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhvg;-><init>(Landroid/content/Context;Lcom/alibaba/motu/watch/WatchConfig;Lcom/alibaba/motu/watch/ApplicationIdleMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lhvg;


# direct methods
.method constructor <init>(Lhvg;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lhvg$1;->b:Lhvg;

    iput-object p2, p0, Lhvg$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 21
    .param p1, "_namePrefix"    # Ljava/lang/String;

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/alibaba/motu/watch/stack/ThreadMsg;->New(Ljava/lang/String;Z)Lcom/alibaba/motu/watch/stack/ThreadMsg;

    move-result-object v19

    .line 66
    .local v19, "threadMsg":Lcom/alibaba/motu/watch/stack/ThreadMsg;
    :goto_0
    if-eqz v19, :cond_9

    .line 67
    new-instance v1, Lhvh;

    invoke-direct {v1}, Lhvh;-><init>()V

    .line 68
    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/motu/watch/stack/ThreadMsg;->toString()Ljava/lang/String;

    move-result-object v10

    .line 69
    .local v10, "exceptionType":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/motu/watch/stack/ThreadMsg;->getStackTraces()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lhvh;->a(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v20

    .line 70
    .local v20, "threads":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/motu/watch/stack/ThreadMsg;->getMainThread()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lhvh;->a(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v16

    .line 1008
    .local v16, "mainThread":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1009
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1010
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1011
    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1012
    mul-int/lit8 v3, v13, 0x1f

    aget-char v4, v2, v1

    add-int v13, v3, v4

    .line 1011
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 64
    .end local v10    # "exceptionType":Ljava/lang/String;
    .end local v16    # "mainThread":Ljava/lang/String;
    .end local v19    # "threadMsg":Lcom/alibaba/motu/watch/stack/ThreadMsg;
    .end local v20    # "threads":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/alibaba/motu/watch/stack/ThreadMsg;->NewMainOnly()Lcom/alibaba/motu/watch/stack/ThreadMsg;

    move-result-object v19

    .restart local v19    # "threadMsg":Lcom/alibaba/motu/watch/stack/ThreadMsg;
    goto :goto_0

    .line 73
    .restart local v10    # "exceptionType":Ljava/lang/String;
    .local v13, "hashCode":I
    .restart local v16    # "mainThread":Ljava/lang/String;
    .restart local v20    # "threads":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 74
    .local v12, "hash":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lhvg$1;->b:Lhvg;

    .line 1028
    iget-object v1, v1, Lhvg;->a:Ljava/lang/String;

    .line 74
    if-eqz v1, :cond_2

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lhvg$1;->b:Lhvg;

    .line 2028
    iget-object v1, v1, Lhvg;->a:Ljava/lang/String;

    .line 74
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 76
    :cond_2
    invoke-static {}, Lcom/alibaba/motu/watch/MotuWatch;->getInstance()Lcom/alibaba/motu/watch/MotuWatch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/motu/watch/MotuWatch;->getMyWatchListenerList()Ljava/util/List;

    move-result-object v14

    .line 77
    .local v14, "listenerList":Ljava/util/List;
    const/4 v8, 0x0

    .line 78
    .local v8, "callBackData":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 79
    move-object/from16 v0, p0

    iget-object v1, v0, Lhvg$1;->b:Lhvg;

    .line 3028
    invoke-virtual {v1, v14}, Lhvg;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 82
    :cond_3
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v7, "extData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "exceptionType"

    if-nez v10, :cond_4

    const-string/jumbo v10, "-"

    .end local v10    # "exceptionType":Ljava/lang/String;
    :cond_4
    invoke-interface {v7, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    if-eqz v8, :cond_5

    .line 85
    const-string/jumbo v1, "callBackData"

    invoke-interface {v7, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_5
    if-nez v16, :cond_6

    .line 88
    const-string/jumbo v16, "-"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_6
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lhtx;->a([B)[B

    move-result-object v17

    .line 92
    .local v17, "mainbytes":[B
    invoke-static/range {v17 .. v17}, Lhtw;->a([B)Ljava/lang/String;

    move-result-object v15

    .line 93
    .local v15, "mainBase64":Ljava/lang/String;
    if-eqz v15, :cond_7

    .line 94
    const-string/jumbo v1, "mainThread"

    invoke-interface {v7, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .end local v15    # "mainBase64":Ljava/lang/String;
    .end local v17    # "mainbytes":[B
    :cond_7
    :goto_2
    if-eqz v20, :cond_8

    .line 102
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lhtx;->a([B)[B

    move-result-object v11

    .line 103
    .local v11, "gzipThread":[B
    if-eqz v11, :cond_8

    .line 104
    invoke-static {v11}, Lhtw;->a([B)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "sendContent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lhvg$1;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lhvg$1;->b:Lhvg;

    .line 4028
    iget-object v2, v2, Lhvg;->b:Ljava/lang/String;

    .line 105
    const v3, 0xee4d

    const-string/jumbo v4, "ANDROID_MAINTHREAD_BLOCK"

    const-string/jumbo v6, "-"

    invoke-static/range {v1 .. v7}, Lcom/alibaba/motu/crashreporter/utrestapi/UTRestReq;->sendLog(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Z

    move-result v18

    .line 106
    .local v18, "response":Z
    if-eqz v18, :cond_8

    .line 107
    sget-object v1, Lcom/alibaba/motu/watch/WatchConfig;->TAG:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    .end local v5    # "sendContent":Ljava/lang/String;
    .end local v7    # "extData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "callBackData":Ljava/lang/String;
    .end local v11    # "gzipThread":[B
    .end local v14    # "listenerList":Ljava/util/List;
    .end local v18    # "response":Z
    :cond_8
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lhvg$1;->b:Lhvg;

    .line 5028
    iput-object v12, v1, Lhvg;->a:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    .end local v12    # "hash":Ljava/lang/String;
    .end local v13    # "hashCode":I
    .end local v16    # "mainThread":Ljava/lang/String;
    .end local v20    # "threads":Ljava/lang/String;
    :cond_9
    sget-object v1, Lcom/alibaba/motu/watch/WatchConfig;->TAG:Ljava/lang/String;

    .line 122
    .end local v19    # "threadMsg":Lcom/alibaba/motu/watch/stack/ThreadMsg;
    :goto_4
    return-void

    .line 96
    .restart local v7    # "extData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v8    # "callBackData":Ljava/lang/String;
    .restart local v12    # "hash":Ljava/lang/String;
    .restart local v13    # "hashCode":I
    .restart local v14    # "listenerList":Ljava/util/List;
    .restart local v16    # "mainThread":Ljava/lang/String;
    .restart local v19    # "threadMsg":Lcom/alibaba/motu/watch/stack/ThreadMsg;
    .restart local v20    # "threads":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 97
    .local v9, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 118
    .end local v7    # "extData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "callBackData":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v12    # "hash":Ljava/lang/String;
    .end local v13    # "hashCode":I
    .end local v14    # "listenerList":Ljava/util/List;
    .end local v16    # "mainThread":Ljava/lang/String;
    .end local v19    # "threadMsg":Lcom/alibaba/motu/watch/stack/ThreadMsg;
    .end local v20    # "threads":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 119
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v1, Lcom/alibaba/motu/watch/WatchConfig;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "main looper handler error."

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 121
    sget-object v1, Lcom/alibaba/motu/watch/WatchConfig;->TAG:Ljava/lang/String;

    goto :goto_4

    .line 110
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v7    # "extData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v8    # "callBackData":Ljava/lang/String;
    .restart local v12    # "hash":Ljava/lang/String;
    .restart local v13    # "hashCode":I
    .restart local v14    # "listenerList":Ljava/util/List;
    .restart local v16    # "mainThread":Ljava/lang/String;
    .restart local v19    # "threadMsg":Lcom/alibaba/motu/watch/stack/ThreadMsg;
    .restart local v20    # "threads":Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 111
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_6
    sget-object v1, Lcom/alibaba/motu/watch/WatchConfig;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "build main thread block err"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 121
    .end local v7    # "extData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "callBackData":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v12    # "hash":Ljava/lang/String;
    .end local v13    # "hashCode":I
    .end local v14    # "listenerList":Ljava/util/List;
    .end local v16    # "mainThread":Ljava/lang/String;
    .end local v19    # "threadMsg":Lcom/alibaba/motu/watch/stack/ThreadMsg;
    .end local v20    # "threads":Ljava/lang/String;
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/alibaba/motu/watch/WatchConfig;->TAG:Ljava/lang/String;

    throw v1
.end method
