.class public final Lknw;
.super Ljava/lang/Object;
.source "CallServerInterceptor.java"

# interfaces
.implements Lkmx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lknw$a;
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "forWebSocket"    # Z

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean p1, p0, Lknw;->a:Z

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Lkmx$a;)Lkne;
    .locals 20
    .param p1, "chain"    # Lkmx$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    move-object/from16 v8, p1

    check-cast v8, Lkob;

    .line 1105
    .local v8, "realChain":Lkob;
    iget-object v5, v8, Lkob;->b:Lknx;

    .line 2101
    .local v5, "httpCodec":Lknx;
    iget-object v13, v8, Lkob;->a:Lknu;

    .line 3067
    .local v13, "streamAllocation":Lknu;
    iget-object v4, v8, Lkob;->c:Lknr;

    .line 44
    check-cast v4, Lknr;

    .line 3117
    .local v4, "connection":Lknr;
    iget-object v9, v8, Lkob;->d:Lknc;

    .line 47
    .local v9, "request":Lknc;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 4113
    .local v14, "sentRequestMillis":J
    iget-object v0, v8, Lkob;->f:Lkms;

    move-object/from16 v16, v0

    .line 5109
    iget-object v0, v8, Lkob;->e:Lkmi;

    move-object/from16 v17, v0

    .line 49
    invoke-virtual/range {v16 .. v17}, Lkms;->requestHeadersStart(Lkmi;)V

    .line 50
    invoke-interface {v5, v9}, Lknx;->a(Lknc;)V

    .line 5113
    iget-object v0, v8, Lkob;->f:Lkms;

    move-object/from16 v16, v0

    .line 6109
    iget-object v0, v8, Lkob;->e:Lkmi;

    move-object/from16 v17, v0

    .line 51
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Lkms;->requestHeadersEnd(Lkmi;Lknc;)V

    .line 53
    const/4 v12, 0x0

    .line 7053
    .local v12, "responseBuilder":Lkne$a;
    iget-object v0, v9, Lknc;->b:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 54
    invoke-static/range {v16 .. v16}, Lkoa;->a(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 7069
    iget-object v0, v9, Lknc;->d:Lknd;

    move-object/from16 v16, v0

    .line 54
    if-eqz v16, :cond_1

    .line 58
    const-string/jumbo v16, "100-continue"

    const-string/jumbo v17, "Expect"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lknc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 59
    invoke-interface {v5}, Lknx;->a()V

    .line 7113
    iget-object v0, v8, Lkob;->f:Lkms;

    move-object/from16 v16, v0

    .line 8109
    iget-object v0, v8, Lkob;->e:Lkmi;

    move-object/from16 v17, v0

    .line 60
    invoke-virtual/range {v16 .. v17}, Lkms;->responseHeadersStart(Lkmi;)V

    .line 61
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v5, v0}, Lknx;->a(Z)Lkne$a;

    move-result-object v12

    .line 64
    :cond_0
    if-nez v12, :cond_7

    .line 8113
    iget-object v0, v8, Lkob;->f:Lkms;

    move-object/from16 v16, v0

    .line 9109
    iget-object v0, v8, Lkob;->e:Lkmi;

    move-object/from16 v17, v0

    .line 66
    invoke-virtual/range {v16 .. v17}, Lkms;->requestBodyStart(Lkmi;)V

    .line 10069
    iget-object v0, v9, Lknc;->d:Lknd;

    move-object/from16 v16, v0

    .line 67
    invoke-virtual/range {v16 .. v16}, Lknd;->contentLength()J

    move-result-wide v6

    .line 68
    .local v6, "contentLength":J
    new-instance v10, Lknw$a;

    .line 69
    invoke-interface {v5, v9, v6, v7}, Lknx;->a(Lknc;J)Lokio/Sink;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Lknw$a;-><init>(Lokio/Sink;)V

    .line 70
    .local v10, "requestBodyOut":Lknw$a;
    invoke-static {v10}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v2

    .line 11069
    .local v2, "bufferedRequestBody":Lokio/BufferedSink;
    iget-object v0, v9, Lknc;->d:Lknd;

    move-object/from16 v16, v0

    .line 72
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lknd;->writeTo(Lokio/BufferedSink;)V

    .line 73
    invoke-interface {v2}, Lokio/BufferedSink;->close()V

    .line 11113
    iget-object v0, v8, Lkob;->f:Lkms;

    move-object/from16 v16, v0

    .line 12109
    iget-object v0, v8, Lkob;->e:Lkmi;

    move-object/from16 v17, v0

    .line 75
    iget-wide v0, v10, Lknw$a;->a:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v16 .. v19}, Lkms;->requestBodyEnd(Lkmi;J)V

    .line 84
    .end local v2    # "bufferedRequestBody":Lokio/BufferedSink;
    .end local v6    # "contentLength":J
    .end local v10    # "requestBodyOut":Lknw$a;
    :cond_1
    :goto_0
    invoke-interface {v5}, Lknx;->b()V

    .line 86
    if-nez v12, :cond_2

    .line 12113
    iget-object v0, v8, Lkob;->f:Lkms;

    move-object/from16 v16, v0

    .line 13109
    iget-object v0, v8, Lkob;->e:Lkmi;

    move-object/from16 v17, v0

    .line 87
    invoke-virtual/range {v16 .. v17}, Lkms;->responseHeadersStart(Lkmi;)V

    .line 88
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v5, v0}, Lknx;->a(Z)Lkne$a;

    move-result-object v12

    .line 13332
    :cond_2
    iput-object v9, v12, Lkne$a;->a:Lknc;

    .line 93
    invoke-virtual {v13}, Lknu;->b()Lknr;

    move-result-object v16

    .line 13567
    move-object/from16 v0, v16

    iget-object v0, v0, Lknr;->c:Lkmu;

    move-object/from16 v16, v0

    .line 14352
    move-object/from16 v0, v16

    iput-object v0, v12, Lkne$a;->e:Lkmu;

    .line 14427
    iput-wide v14, v12, Lkne$a;->k:J

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 14432
    move-wide/from16 v0, v16

    iput-wide v0, v12, Lkne$a;->l:J

    .line 96
    invoke-virtual {v12}, Lkne$a;->a()Lkne;

    move-result-object v11

    .line 15098
    .local v11, "response":Lkne;
    iget v3, v11, Lkne;->c:I

    .line 99
    .local v3, "code":I
    const/16 v16, 0x64

    move/from16 v0, v16

    if-ne v3, v0, :cond_3

    .line 102
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v5, v0}, Lknx;->a(Z)Lkne$a;

    move-result-object v12

    .line 15332
    iput-object v9, v12, Lkne$a;->a:Lknc;

    .line 106
    invoke-virtual {v13}, Lknu;->b()Lknr;

    move-result-object v16

    .line 15567
    move-object/from16 v0, v16

    iget-object v0, v0, Lknr;->c:Lkmu;

    move-object/from16 v16, v0

    .line 16352
    move-object/from16 v0, v16

    iput-object v0, v12, Lkne$a;->e:Lkmu;

    .line 16427
    iput-wide v14, v12, Lkne$a;->k:J

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 16432
    move-wide/from16 v0, v16

    iput-wide v0, v12, Lkne$a;->l:J

    .line 109
    invoke-virtual {v12}, Lkne$a;->a()Lkne;

    move-result-object v11

    .line 17098
    iget v3, v11, Lkne;->c:I

    .line 17113
    :cond_3
    iget-object v0, v8, Lkob;->f:Lkms;

    move-object/from16 v16, v0

    .line 18109
    iget-object v0, v8, Lkob;->e:Lkmi;

    move-object/from16 v17, v0

    .line 115
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Lkms;->responseHeadersEnd(Lkmi;Lkne;)V

    .line 117
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lknw;->a:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8

    const/16 v16, 0x65

    move/from16 v0, v16

    if-ne v3, v0, :cond_8

    .line 119
    invoke-virtual {v11}, Lkne;->e()Lkne$a;

    move-result-object v16

    sget-object v17, Lknj;->c:Lknf;

    .line 18386
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lkne$a;->g:Lknf;

    .line 121
    invoke-virtual/range {v16 .. v16}, Lkne$a;->a()Lkne;

    move-result-object v11

    .line 128
    :goto_1
    const-string/jumbo v16, "close"

    .line 20086
    iget-object v0, v11, Lkne;->a:Lknc;

    move-object/from16 v17, v0

    .line 128
    const-string/jumbo v18, "Connection"

    invoke-virtual/range {v17 .. v18}, Lknc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_4

    const-string/jumbo v16, "close"

    const-string/jumbo v17, "Connection"

    .line 129
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lkne;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 130
    :cond_4
    invoke-virtual {v13}, Lknu;->d()V

    .line 133
    :cond_5
    const/16 v16, 0xcc

    move/from16 v0, v16

    if-eq v3, v0, :cond_6

    const/16 v16, 0xcd

    move/from16 v0, v16

    if-ne v3, v0, :cond_9

    .line 20177
    :cond_6
    iget-object v0, v11, Lkne;->g:Lknf;

    move-object/from16 v16, v0

    .line 133
    invoke-virtual/range {v16 .. v16}, Lknf;->a()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_9

    .line 134
    new-instance v16, Ljava/net/ProtocolException;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "HTTP "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " had non-zero Content-Length: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 21177
    iget-object v0, v11, Lkne;->g:Lknf;

    move-object/from16 v18, v0

    .line 135
    invoke-virtual/range {v18 .. v18}, Lknf;->a()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 76
    .end local v3    # "code":I
    .end local v11    # "response":Lkne;
    :cond_7
    invoke-virtual {v4}, Lknr;->a()Z

    move-result v16

    if-nez v16, :cond_1

    .line 80
    invoke-virtual {v13}, Lknu;->d()V

    goto/16 :goto_0

    .line 123
    .restart local v3    # "code":I
    .restart local v11    # "response":Lkne;
    :cond_8
    invoke-virtual {v11}, Lkne;->e()Lkne$a;

    move-result-object v16

    .line 124
    invoke-interface {v5, v11}, Lknx;->a(Lkne;)Lknf;

    move-result-object v17

    .line 19386
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lkne$a;->g:Lknf;

    .line 125
    invoke-virtual/range {v16 .. v16}, Lkne$a;->a()Lkne;

    move-result-object v11

    goto/16 :goto_1

    .line 138
    :cond_9
    return-object v11
.end method
