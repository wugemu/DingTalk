.class final Laem$1;
.super Ljava/lang/Object;
.source "NetworkImageGetter.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/io/FileOutputStream;

.field final synthetic d:Laem;


# direct methods
.method constructor <init>(Laem;Ljava/io/File;Ljava/lang/String;Ljava/io/FileOutputStream;)V
    .locals 1
    .param p1, "this$0"    # Laem;

    .prologue
    .line 196
    iput-object p1, p0, Laem$1;->d:Laem;

    iput-object p2, p0, Laem$1;->a:Ljava/io/File;

    iput-object p3, p0, Laem$1;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Laem$1;->c:Ljava/io/FileOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "l"    # J
    .param p4, "l2"    # J

    .prologue
    .line 248
    return-void
.end method

.method public final onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 7
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 199
    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 200
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v2

    .line 203
    .local v2, "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Laem$1;->a:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 204
    .local v4, "out":Ljava/io/FileOutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 206
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/request/RequestInputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 207
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 218
    .end local v0    # "buffer":[B
    .end local v3    # "len":I
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v5, p0, Laem$1;->d:Laem;

    iget-object v5, v5, Laem;->e:Ljava/util/HashSet;

    if-eqz v5, :cond_0

    iget-object v5, p0, Laem$1;->d:Laem;

    iget-object v5, v5, Laem;->e:Ljava/util/HashSet;

    iget-object v6, p0, Laem$1;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 220
    iget-object v5, p0, Laem$1;->d:Laem;

    iget-object v5, v5, Laem;->e:Ljava/util/HashSet;

    iget-object v6, p0, Laem$1;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :try_start_2
    iget-object v5, p0, Laem$1;->c:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_1

    .line 226
    iget-object v5, p0, Laem$1;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 238
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_1
    :goto_1
    return-void

    .line 210
    .restart local v0    # "buffer":[B
    .restart local v2    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    .restart local v3    # "len":I
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_3
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v5

    new-instance v6, Laem$1$1;

    invoke-direct {v6, p0}, Laem$1$1;-><init>(Laem$1;)V

    invoke-virtual {v5, v6}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    :try_start_4
    iget-object v5, p0, Laem$1;->c:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_1

    .line 226
    iget-object v5, p0, Laem$1;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 228
    :catch_1
    move-exception v1

    .line 229
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 228
    .end local v0    # "buffer":[B
    .end local v3    # "len":I
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 229
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 224
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 225
    :try_start_5
    iget-object v6, p0, Laem$1;->c:Ljava/io/FileOutputStream;

    if-eqz v6, :cond_3

    .line 226
    iget-object v6, p0, Laem$1;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 230
    :cond_3
    :goto_2
    throw v5

    .line 228
    :catch_3
    move-exception v1

    .line 229
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 234
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_4
    iget-object v5, p0, Laem$1;->d:Laem;

    iget-object v5, v5, Laem;->e:Ljava/util/HashSet;

    if-eqz v5, :cond_1

    iget-object v5, p0, Laem$1;->d:Laem;

    iget-object v5, v5, Laem;->e:Ljava/util/HashSet;

    iget-object v6, p0, Laem$1;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 235
    iget-object v5, p0, Laem$1;->d:Laem;

    iget-object v5, v5, Laem;->e:Ljava/util/HashSet;

    iget-object v6, p0, Laem$1;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 243
    return-void
.end method
