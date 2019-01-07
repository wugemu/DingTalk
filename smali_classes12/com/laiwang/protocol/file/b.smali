.class public Lcom/laiwang/protocol/file/b;
.super Lcom/laiwang/protocol/file/d;
.source "DefaultDownloadTask.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/laiwang/protocol/file/c;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Lcom/laiwang/protocol/file/c;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/laiwang/protocol/file/d;-><init>(Landroid/content/Context;Lcom/laiwang/protocol/file/c;)V

    .line 37
    return-void
.end method

.method private a(Lcom/laiwang/protocol/core/Response;Lcom/laiwang/protocol/file/download/DownloadController;Ljava/lang/String;J)V
    .locals 20
    .param p1, "res"    # Lcom/laiwang/protocol/core/Response;
    .param p2, "controller"    # Lcom/laiwang/protocol/file/download/DownloadController;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "startTime"    # J

    .prologue
    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v13

    .line 97
    .local v13, "status":Lcom/laiwang/protocol/core/Constants$Status;
    :try_start_0
    const-string/jumbo v14, "dt"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/laiwang/protocol/core/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljad;->a(Ljava/lang/String;)Ljac;

    move-result-object v2

    .line 98
    .local v2, "cast":Ljac;
    sget-object v14, Lcom/laiwang/protocol/core/Constants$Status;->PARTIAL:Lcom/laiwang/protocol/core/Constants$Status;

    if-ne v13, v14, :cond_5

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/core/Response;->payload()[B

    move-result-object v14

    const-class v15, Lcom/laiwang/protocol/file/f;

    invoke-interface {v2, v14, v15}, Ljac;->a([BLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/laiwang/protocol/file/f;

    .line 100
    .local v9, "response":Lcom/laiwang/protocol/file/f;
    invoke-static {v9}, Lcom/laiwang/protocol/file/b;->a(Lcom/laiwang/protocol/file/f;)Lcom/laiwang/protocol/file/download/FileSegment;

    move-result-object v12

    .line 101
    .local v12, "segment":Lcom/laiwang/protocol/file/download/FileSegment;
    const-string/jumbo v15, "[down] down segment [%d %d] len %d"

    const/4 v14, 0x3

    new-array v0, v14, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v14, 0x0

    invoke-virtual {v12}, Lcom/laiwang/protocol/file/download/FileSegment;->getStart()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v16, v14

    const/4 v14, 0x1

    invoke-virtual {v12}, Lcom/laiwang/protocol/file/download/FileSegment;->getEnd()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v16, v14

    const/16 v17, 0x2

    invoke-virtual {v12}, Lcom/laiwang/protocol/file/download/FileSegment;->getData()[B

    move-result-object v14

    if-nez v14, :cond_3

    const/4 v14, 0x0

    :goto_0
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/laiwang/protocol/file/download/FileSegment;->setController(Lcom/laiwang/protocol/file/download/DownloadController;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/laiwang/protocol/file/b;->b:Lcom/laiwang/protocol/file/c;

    invoke-virtual {v14, v12}, Lcom/laiwang/protocol/file/c;->a(Lcom/laiwang/protocol/file/download/FileSegment;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 104
    invoke-virtual {v12}, Lcom/laiwang/protocol/file/download/FileSegment;->getEnd()J

    move-result-wide v14

    const-wide/16 v16, 0x64

    mul-long v14, v14, v16

    invoke-virtual {v12}, Lcom/laiwang/protocol/file/download/FileSegment;->getTotalLength()J

    move-result-wide v16

    div-long v14, v14, v16

    long-to-int v7, v14

    .line 105
    .local v7, "progress":I
    const/16 v14, 0x64

    if-le v7, v14, :cond_0

    .line 106
    const/16 v7, 0x64

    .line 107
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/laiwang/protocol/file/b;->c:Ljava/util/Set;

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;

    .line 108
    .local v6, "listener":Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;
    if-eqz v6, :cond_1

    .line 109
    invoke-interface {v6, v12, v7}, Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;->onProgress(Lcom/laiwang/protocol/file/download/FileSegment;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 151
    .end local v2    # "cast":Ljac;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "listener":Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;
    .end local v7    # "progress":I
    .end local v9    # "response":Lcom/laiwang/protocol/file/f;
    .end local v12    # "segment":Lcom/laiwang/protocol/file/download/FileSegment;
    :catch_0
    move-exception v14

    sget-object v14, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->UNKNOWN_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v14}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->code()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->UNKNOWN_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v15}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->reason()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/laiwang/protocol/file/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_2
    :goto_2
    return-void

    .line 101
    .restart local v2    # "cast":Ljac;
    .restart local v9    # "response":Lcom/laiwang/protocol/file/f;
    .restart local v12    # "segment":Lcom/laiwang/protocol/file/download/FileSegment;
    :cond_3
    :try_start_1
    invoke-virtual {v12}, Lcom/laiwang/protocol/file/download/FileSegment;->getData()[B

    move-result-object v14

    array-length v14, v14

    goto :goto_0

    .line 113
    :cond_4
    sget-object v14, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->FILE_HANDLE_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v14}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->code()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->FILE_HANDLE_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v15}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->reason()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/laiwang/protocol/file/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 116
    .end local v9    # "response":Lcom/laiwang/protocol/file/f;
    .end local v12    # "segment":Lcom/laiwang/protocol/file/download/FileSegment;
    :cond_5
    sget-object v14, Lcom/laiwang/protocol/core/Constants$Status;->OK:Lcom/laiwang/protocol/core/Constants$Status;

    if-ne v13, v14, :cond_9

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v10, v14, p4

    .line 118
    .local v10, "rt":J
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/core/Response;->payload()[B

    move-result-object v14

    const-class v15, Lcom/laiwang/protocol/file/f;

    invoke-interface {v2, v14, v15}, Ljac;->a([BLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/laiwang/protocol/file/f;

    .line 119
    .restart local v9    # "response":Lcom/laiwang/protocol/file/f;
    if-nez v9, :cond_6

    .line 120
    new-instance v9, Lcom/laiwang/protocol/file/f;

    .end local v9    # "response":Lcom/laiwang/protocol/file/f;
    invoke-direct {v9}, Lcom/laiwang/protocol/file/f;-><init>()V

    .line 122
    .restart local v9    # "response":Lcom/laiwang/protocol/file/f;
    :cond_6
    invoke-static {v9}, Lcom/laiwang/protocol/file/b;->a(Lcom/laiwang/protocol/file/f;)Lcom/laiwang/protocol/file/download/FileSegment;

    move-result-object v12

    .line 123
    .restart local v12    # "segment":Lcom/laiwang/protocol/file/download/FileSegment;
    const-string/jumbo v14, "[down] down finish %s len %d, elapse %d"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v12}, Lcom/laiwang/protocol/file/download/FileSegment;->getTotalLength()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/laiwang/protocol/file/b;->b:Lcom/laiwang/protocol/file/c;

    invoke-virtual {v14, v12}, Lcom/laiwang/protocol/file/c;->b(Lcom/laiwang/protocol/file/download/FileSegment;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 125
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/laiwang/protocol/file/b;->c:Ljava/util/Set;

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;

    .line 126
    .restart local v6    # "listener":Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;
    if-eqz v6, :cond_7

    .line 127
    invoke-interface {v6, v12}, Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;->onFinish(Lcom/laiwang/protocol/file/download/FileSegment;)V

    goto :goto_3

    .line 131
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "listener":Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;
    :cond_8
    sget-object v14, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->FILE_HANDLE_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v14}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->code()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->FILE_HANDLE_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v15}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->reason()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/laiwang/protocol/file/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 134
    .end local v9    # "response":Lcom/laiwang/protocol/file/f;
    .end local v10    # "rt":J
    .end local v12    # "segment":Lcom/laiwang/protocol/file/download/FileSegment;
    :cond_9
    sget-object v14, Lcom/laiwang/protocol/core/Constants$Status;->BAD_REQUEST:Lcom/laiwang/protocol/core/Constants$Status;

    if-eq v13, v14, :cond_a

    sget-object v14, Lcom/laiwang/protocol/core/Constants$Status;->INTERNAL_SERVER_ERROR:Lcom/laiwang/protocol/core/Constants$Status;

    if-ne v13, v14, :cond_d

    .line 135
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v10, v14, p4

    .line 136
    .restart local v10    # "rt":J
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/core/Response;->payload()[B

    move-result-object v14

    const-class v15, Lcom/laiwang/idl/service/ResultError;

    invoke-interface {v2, v14, v15}, Ljac;->a([BLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/laiwang/idl/service/ResultError;

    .line 137
    .local v4, "error":Lcom/laiwang/idl/service/ResultError;
    if-nez v4, :cond_b

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->UNKNOWN_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v15}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->code()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "code":Ljava/lang/String;
    :goto_4
    if-nez v4, :cond_c

    sget-object v14, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->UNKNOWN_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v14}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->reason()Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, "reason":Ljava/lang/String;
    :goto_5
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "[down] down err "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", elapse "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/laiwang/protocol/file/b;->b:Lcom/laiwang/protocol/file/c;

    invoke-virtual {v14, v3, v8}, Lcom/laiwang/protocol/file/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 141
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/laiwang/protocol/file/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 137
    .end local v3    # "code":Ljava/lang/String;
    .end local v8    # "reason":Ljava/lang/String;
    :cond_b
    iget-object v3, v4, Lcom/laiwang/idl/service/ResultError;->code:Ljava/lang/String;

    goto :goto_4

    .line 138
    .restart local v3    # "code":Ljava/lang/String;
    :cond_c
    iget-object v8, v4, Lcom/laiwang/idl/service/ResultError;->reason:Ljava/lang/String;

    goto :goto_5

    .line 143
    .end local v3    # "code":Ljava/lang/String;
    .end local v4    # "error":Lcom/laiwang/idl/service/ResultError;
    .end local v10    # "rt":J
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v10, v14, p4

    .line 144
    .restart local v10    # "rt":J
    iget v14, v13, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 145
    .restart local v3    # "code":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/core/Response;->payload()[B

    move-result-object v14

    if-eqz v14, :cond_e

    new-instance v8, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/core/Response;->payload()[B

    move-result-object v14

    const-string/jumbo v15, "utf-8"

    invoke-direct {v8, v14, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 146
    .restart local v8    # "reason":Ljava/lang/String;
    :goto_6
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "[down] down err "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", elapse "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/laiwang/protocol/file/b;->b:Lcom/laiwang/protocol/file/c;

    invoke-virtual {v14, v3, v8}, Lcom/laiwang/protocol/file/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 148
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/laiwang/protocol/file/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 145
    .end local v8    # "reason":Ljava/lang/String;
    :cond_e
    const-string/jumbo v8, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method static synthetic a(Lcom/laiwang/protocol/file/b;Lcom/laiwang/protocol/core/Response;Lcom/laiwang/protocol/file/download/DownloadController;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/file/b;
    .param p1, "x1"    # Lcom/laiwang/protocol/core/Response;
    .param p2, "x2"    # Lcom/laiwang/protocol/file/download/DownloadController;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # J

    .prologue
    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/laiwang/protocol/file/b;->a(Lcom/laiwang/protocol/core/Response;Lcom/laiwang/protocol/file/download/DownloadController;Ljava/lang/String;J)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 157
    iget-object v2, p0, Lcom/laiwang/protocol/file/b;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;

    .line 158
    .local v1, "listener":Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;
    if-eqz v1, :cond_0

    .line 159
    invoke-interface {v1, p1, p2}, Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    .end local v1    # "listener":Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;
    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x3

    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 175
    :goto_0
    return-object v2

    .line 167
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    .line 168
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "prefix":Ljava/lang/String;
    const-string/jumbo v2, "lwp"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "http"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 172
    .local v0, "_uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v0    # "_uri":Landroid/net/Uri;
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_1
    move-object v2, p1

    .line 175
    goto :goto_0
.end method

.method public a(Lcom/laiwang/protocol/file/download/FileItem;)V
    .locals 14
    .param p1, "item"    # Lcom/laiwang/protocol/file/download/FileItem;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 42
    .local v4, "startTime":J
    invoke-virtual {p1}, Lcom/laiwang/protocol/file/download/FileItem;->getUri()Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "url":Ljava/lang/String;
    const-string/jumbo v1, "[down] down start %s [%d %d]"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {p1}, Lcom/laiwang/protocol/file/download/FileItem;->getStart()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {p1}, Lcom/laiwang/protocol/file/download/FileItem;->getEnd()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v1, v10}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iput-object p1, p0, Lcom/laiwang/protocol/file/b;->d:Lcom/laiwang/protocol/file/download/FileItem;

    .line 45
    invoke-static {p1}, Lcom/laiwang/protocol/file/b;->b(Lcom/laiwang/protocol/file/download/FileItem;)Lcom/laiwang/protocol/file/g;

    move-result-object v9

    .line 46
    .local v9, "req":Lcom/laiwang/protocol/file/g;
    iget-object v1, v9, Lcom/laiwang/protocol/file/g;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/laiwang/protocol/file/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/laiwang/protocol/file/g;->a:Ljava/lang/String;

    .line 49
    :try_start_0
    const-string/jumbo v1, "/r/FileDown/get"

    invoke-static {v1}, Lcom/laiwang/protocol/core/Request;->request(Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v7

    .line 50
    .local v7, "builder":Lcom/laiwang/protocol/core/Request$Builder;
    const-string/jumbo v1, "dt"

    const-string/jumbo v10, "p"

    invoke-virtual {v7, v1, v10}, Lcom/laiwang/protocol/core/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;

    .line 51
    const-string/jumbo v1, "stream"

    const-string/jumbo v10, "new"

    invoke-virtual {v7, v1, v10}, Lcom/laiwang/protocol/core/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;

    .line 52
    sget-object v1, Lcom/laiwang/protocol/attribute/Attributes;->SLAVER:Lcom/laiwang/protocol/attribute/AttributeKey;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v1, v10}, Lcom/laiwang/protocol/core/Request$Builder;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;Ljava/lang/Object;)V

    .line 53
    const-wide/32 v10, 0x1d4c0

    invoke-virtual {v7, v10, v11}, Lcom/laiwang/protocol/core/Request$Builder;->timeout(J)Lcom/laiwang/protocol/core/Request$Builder;

    .line 54
    const-string/jumbo v1, "p"

    invoke-static {v1}, Ljad;->a(Ljava/lang/String;)Ljac;

    move-result-object v1

    const/4 v10, 0x0

    invoke-interface {v1, v9, v10}, Ljac;->a(Ljava/lang/Object;Z)[B

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/laiwang/protocol/core/Request$Builder;->payload([B)Lcom/laiwang/protocol/core/Request$Builder;

    .line 55
    invoke-virtual {p1}, Lcom/laiwang/protocol/file/download/FileItem;->getBizName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    sget-object v1, Lcom/laiwang/protocol/attribute/Attributes;->REQUEST_BIZ_NAME:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p1}, Lcom/laiwang/protocol/file/download/FileItem;->getBizName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v1, v10}, Lcom/laiwang/protocol/core/Request$Builder;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;Ljava/lang/Object;)V

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/laiwang/protocol/file/download/FileItem;->isLarge()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    sget-object v8, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->DOWN_LARGE:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    .line 65
    .local v8, "connType":Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;
    :goto_0
    invoke-static {}, Lcom/laiwang/protocol/connection/ConnectionFactory;->getInstance()Lcom/laiwang/protocol/connection/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/laiwang/protocol/connection/ConnectionFactory;->create(Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;)Lcom/laiwang/protocol/connection/LWPConnection;

    move-result-object v6

    .line 66
    .local v6, "conn":Lcom/laiwang/protocol/connection/LWPConnection;
    invoke-virtual {v6}, Lcom/laiwang/protocol/connection/LWPConnection;->connect()V

    .line 67
    new-instance v2, Lcom/laiwang/protocol/file/a;

    invoke-direct {v2, v6}, Lcom/laiwang/protocol/file/a;-><init>(Lcom/laiwang/protocol/connection/LWPConnection;)V

    .line 68
    .local v2, "controller":Lcom/laiwang/protocol/file/a;
    invoke-virtual {v2, v3}, Lcom/laiwang/protocol/file/a;->a(Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/laiwang/protocol/file/b$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/laiwang/protocol/file/b$1;-><init>(Lcom/laiwang/protocol/file/b;Lcom/laiwang/protocol/file/a;Ljava/lang/String;JLcom/laiwang/protocol/connection/LWPConnection;)V

    .line 84
    .local v0, "reply":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    invoke-virtual {v7}, Lcom/laiwang/protocol/core/Request$Builder;->build()Lcom/laiwang/protocol/core/Request;

    move-result-object v1

    invoke-virtual {v6, v1, v0}, Lcom/laiwang/protocol/connection/LWPConnection;->send(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/Reply;)V

    .line 89
    .end local v0    # "reply":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    .end local v2    # "controller":Lcom/laiwang/protocol/file/a;
    .end local v6    # "conn":Lcom/laiwang/protocol/connection/LWPConnection;
    .end local v7    # "builder":Lcom/laiwang/protocol/core/Request$Builder;
    .end local v8    # "connType":Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;
    :goto_1
    return-void

    .line 63
    .restart local v7    # "builder":Lcom/laiwang/protocol/core/Request$Builder;
    :cond_1
    sget-object v8, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->DOWN_SMALL:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v8    # "connType":Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;
    goto :goto_0

    .line 86
    .end local v7    # "builder":Lcom/laiwang/protocol/core/Request$Builder;
    .end local v8    # "connType":Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;
    :catch_0
    move-exception v1

    sget-object v1, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->UNKNOWN_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v1}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->code()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v10, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->UNKNOWN_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v10}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->reason()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v1, v10}, Lcom/laiwang/protocol/file/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
