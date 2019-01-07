.class final Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b$1;
.super Ljava/lang/Object;
.source "FileDownloaderTask.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V
    .locals 6
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "totalSize"    # J
    .param p4, "downloadSize"    # J

    .prologue
    .line 173
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    .line 14085
    iget-boolean v2, v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->f:Z

    .line 173
    if-eqz v2, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    cmp-long v2, p4, p2

    if-nez v2, :cond_2

    .line 178
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 182
    .local v0, "progress":D
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    .line 15085
    iget v2, v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->e:I

    .line 182
    int-to-double v2, v2

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    double-to-int v3, v0

    .line 16085
    iput v3, v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->e:I

    .line 185
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    .line 17085
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;

    .line 185
    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    .line 18085
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;

    .line 186
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    .line 19085
    iget v3, v3, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->e:I

    .line 186
    invoke-interface {v2, v3, p4, p5}, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;->a(IJ)V

    goto :goto_0

    .line 180
    .end local v0    # "progress":D
    :cond_2
    long-to-double v2, p4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    long-to-double v4, p2

    div-double v0, v2, v4

    .restart local v0    # "progress":D
    goto :goto_1
.end method

.method public final onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 8
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 136
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    .line 1085
    iget-boolean v3, v3, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->f:Z

    .line 136
    if-eqz v3, :cond_1

    .line 137
    const-string/jumbo v3, "im"

    const-string/jumbo v4, "traceEmotion"

    const-string/jumbo v5, "cancel"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 140
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v2

    .line 141
    .local v2, "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    .line 2085
    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->b:Ljava/lang/String;

    .line 141
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    .line 3085
    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->c:Ljava/lang/String;

    .line 141
    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .local v1, "file":Ljava/io/File;
    :try_start_0
    const-string/jumbo v3, "im"

    const-string/jumbo v4, "traceEmotion"

    const-string/jumbo v5, "success"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    invoke-static {v3, v2, v1}, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->a(Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;Ljava/io/InputStream;Ljava/io/File;)V

    .line 145
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    .line 4085
    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;

    .line 145
    if-eqz v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    .line 5085
    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;

    .line 146
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    .line 6085
    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->b:Ljava/lang/String;

    .line 146
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    .line 7085
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->c:Ljava/lang/String;

    .line 146
    invoke-interface {v3, v4, v5}, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "im"

    const-string/jumbo v4, "traceEmotion"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "exception="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    .line 8085
    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;

    .line 150
    if-eqz v3, :cond_0

    .line 151
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    .line 9085
    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;

    .line 151
    new-instance v4, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$DownloaderError;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$DownloaderError;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {v3, v4}, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;->a(Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$DownloaderError;)V

    goto :goto_0

    .line 155
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_2
    const-string/jumbo v3, "im"

    const-string/jumbo v4, "traceEmotion"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "download err,code="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getStatusCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getErrorDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    .line 10085
    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;

    .line 156
    if-eqz v3, :cond_0

    .line 157
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    .line 11085
    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;

    .line 157
    new-instance v4, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$DownloaderError;

    .line 158
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getStatusCode()I

    move-result v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getErrorDescription()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$DownloaderError;-><init>(ILjava/lang/Throwable;)V

    .line 157
    invoke-interface {v3, v4}, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;->a(Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$DownloaderError;)V

    goto/16 :goto_0
.end method

.method public final onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 3
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 165
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "traceEmotion"

    const-string/jumbo v2, "start"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    .line 12085
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;

    .line 166
    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    .line 13085
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;

    .line 167
    invoke-interface {v0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;->a()V

    .line 169
    :cond_0
    return-void
.end method
