.class public final Lhnd;
.super Lhmz;
.source "SimpleHttpRequest.java"


# instance fields
.field private c:Lcom/alibaba/doraemon/request/Request;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lhmz;-><init>()V

    return-void
.end method

.method static a(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 133
    .local v1, "byteArrayOs":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 136
    .local v0, "buf":[B
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    if-ltz v3, :cond_1

    .line 137
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 142
    .end local v3    # "len":I
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e":Ljava/io/EOFException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/EOFException;->printStackTrace()V

    .line 147
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 149
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 152
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 157
    .end local v2    # "e":Ljava/io/EOFException;
    :goto_1
    if-eqz p0, :cond_0

    .line 159
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 162
    :cond_0
    :goto_2
    return-object v4

    .line 139
    .restart local v3    # "len":I
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 140
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    .line 149
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 152
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 157
    :goto_3
    if-eqz p0, :cond_0

    .line 159
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 160
    :catch_1
    move-exception v2

    .line 161
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 153
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 154
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 153
    .end local v3    # "len":I
    .local v2, "e":Ljava/io/EOFException;
    :catch_3
    move-exception v2

    .line 154
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 160
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 161
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 149
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 152
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 157
    :goto_4
    if-eqz p0, :cond_2

    .line 159
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 162
    :cond_2
    :goto_5
    throw v4

    .line 153
    :catch_5
    move-exception v2

    .line 154
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 160
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 161
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method


# virtual methods
.method public final a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    iget-object v1, p0, Lhnd;->c:Lcom/alibaba/doraemon/request/Request;

    if-eqz v1, :cond_1

    .line 31
    iget-object v1, p0, Lhnd;->f:Lhna$a;

    if-eqz v1, :cond_0

    .line 32
    const-string/jumbo v0, "cannot start http request more than once"

    .line 33
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v1, p0, Lhnd;->f:Lhna$a;

    const/16 v2, 0xa

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v0}, Lhna$a;->a(ILjava/lang/String;)V

    .line 40
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string/jumbo v1, "REQUEST"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/request/Request;

    iput-object v1, p0, Lhnd;->c:Lcom/alibaba/doraemon/request/Request;

    .line 1052
    iget-object v1, p0, Lhnd;->c:Lcom/alibaba/doraemon/request/Request;

    iget-object v7, p0, Lhnd;->d:Ljava/lang/String;

    invoke-interface {v1, v7}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v1

    iget-object v7, p0, Lhnd;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 1053
    invoke-static {v7}, Lhnd;->c(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v1, v7}, Lcom/alibaba/doraemon/request/Request;->setRequestHeaders(Ljava/util/Map;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lhnd;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1054
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Lcom/alibaba/doraemon/request/Request;->setCacheKey(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v1

    .line 1055
    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setCacheable(Z)Lcom/alibaba/doraemon/request/Request;

    .line 1057
    iget-object v7, p0, Lhnd;->a:Ljava/lang/String;

    .line 1170
    const/4 v1, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    move v1, v2

    .line 1058
    :goto_2
    iget-object v2, p0, Lhnd;->c:Lcom/alibaba/doraemon/request/Request;

    invoke-interface {v2, v1}, Lcom/alibaba/doraemon/request/Request;->setMethod(I)V

    .line 1060
    iget-object v1, p0, Lhnd;->b:[B

    if-eqz v1, :cond_3

    .line 1061
    iget-object v1, p0, Lhnd;->c:Lcom/alibaba/doraemon/request/Request;

    iget-object v2, p0, Lhnd;->b:[B

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setRequestBody([B)Lcom/alibaba/doraemon/request/Request;

    .line 1064
    :cond_3
    iget-object v1, p0, Lhnd;->c:Lcom/alibaba/doraemon/request/Request;

    new-instance v2, Lhnd$1;

    invoke-direct {v2, p0}, Lhnd$1;-><init>(Lhnd;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 1127
    iget-object v1, p0, Lhnd;->c:Lcom/alibaba/doraemon/request/Request;

    invoke-interface {v1}, Lcom/alibaba/doraemon/request/Request;->start()V

    goto :goto_0

    .line 1170
    :sswitch_0
    const-string/jumbo v8, "GET"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v8, "POST"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v8, "PUT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v4

    goto :goto_1

    :sswitch_3
    const-string/jumbo v8, "DELETE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v5

    goto :goto_1

    :sswitch_4
    const-string/jumbo v8, "HEAD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v6

    goto :goto_1

    :sswitch_5
    const-string/jumbo v8, "OPTIONS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v8, "TRACE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v8, "PATCH"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v1, 0x7

    goto/16 :goto_1

    :pswitch_0
    move v1, v2

    .line 1173
    goto/16 :goto_2

    :pswitch_1
    move v1, v3

    .line 1176
    goto/16 :goto_2

    :pswitch_2
    move v1, v4

    .line 1179
    goto/16 :goto_2

    :pswitch_3
    move v1, v5

    .line 1182
    goto/16 :goto_2

    :pswitch_4
    move v1, v6

    .line 1185
    goto/16 :goto_2

    .line 1187
    :pswitch_5
    const/4 v1, 0x5

    .line 1188
    goto/16 :goto_2

    .line 1190
    :pswitch_6
    const/4 v1, 0x6

    .line 1191
    goto/16 :goto_2

    .line 1193
    :pswitch_7
    const/4 v1, 0x7

    .line 1194
    goto/16 :goto_2

    .line 1170
    :sswitch_data_0
    .sparse-switch
        -0x1faded82 -> :sswitch_5
        0x11336 -> :sswitch_0
        0x136ef -> :sswitch_2
        0x21c5e0 -> :sswitch_4
        0x2590a0 -> :sswitch_1
        0x4862828 -> :sswitch_7
        0x4c5f925 -> :sswitch_6
        0x77f979ab -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 44
    iget-object v0, p0, Lhnd;->c:Lcom/alibaba/doraemon/request/Request;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhnd;->c:Lcom/alibaba/doraemon/request/Request;

    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const-string/jumbo v0, "SimpleHttpRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cancel task url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lhnd;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lhnd;->c:Lcom/alibaba/doraemon/request/Request;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->cancel(Z)Z

    .line 48
    :cond_0
    return-void
.end method
