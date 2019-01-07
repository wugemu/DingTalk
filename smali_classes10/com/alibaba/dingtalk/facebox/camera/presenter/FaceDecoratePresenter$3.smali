.class final Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$3;
.super Ljava/lang/Object;
.source "FaceDecoratePresenter.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;Lcma;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$3;->c:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;

    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$3;->a:Lcma;

    iput-object p3, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "l"    # J
    .param p4, "l1"    # J

    .prologue
    .line 183
    return-void
.end method

.method public final onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 10
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 146
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v5

    if-nez v5, :cond_3

    .line 148
    :cond_0
    const-string/jumbo v5, "facebox"

    const-string/jumbo v6, "FaceDecoratePresenter"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Fetch image err "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_2

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$3;->a:Lcma;

    if-eqz v4, :cond_1

    .line 150
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$3;->a:Lcma;

    const-string/jumbo v5, "-1"

    const-string/jumbo v6, "Fetch file err"

    invoke-interface {v4, v5, v6}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_1
    :goto_1
    return-void

    .line 148
    :cond_2
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getErrorDescription()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 155
    :cond_3
    :try_start_0
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->dataLength()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 156
    const-string/jumbo v4, "facebox"

    const-string/jumbo v5, "FaceDecoratePresenter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "File length exceed limit "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->dataLength()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$3;->a:Lcma;

    if-eqz v4, :cond_1

    .line 158
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$3;->a:Lcma;

    const-string/jumbo v5, "-1"

    const-string/jumbo v6, "File length exceed limit"

    invoke-interface {v4, v5, v6}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "facebox"

    const-string/jumbo v5, "FaceDecoratePresenter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Save file err "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$3;->a:Lcma;

    if-eqz v4, :cond_1

    .line 172
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$3;->a:Lcma;

    const-string/jumbo v5, "-1"

    const-string/jumbo v6, "File length exceed limit"

    invoke-interface {v4, v5, v6}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 162
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_4
    :try_start_1
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v3

    .line 163
    .local v3, "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    invoke-static {v3}, Lcom/laiwang/protocol/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 164
    .local v0, "bytes":[B
    const-string/jumbo v4, "CACHE"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/cache/Cache;

    .line 165
    .local v1, "cache":Lcom/alibaba/doraemon/cache/Cache;
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$3;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v4, v0, v5}, Lcom/alibaba/doraemon/cache/Cache;->write(Ljava/lang/String;[B[B)Z

    .line 166
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$3;->a:Lcma;

    if-eqz v4, :cond_1

    .line 167
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$3;->a:Lcma;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcma;->onDataReceived(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public final onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 179
    return-void
.end method
