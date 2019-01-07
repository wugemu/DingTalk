.class Lcom/alibaba/wukong/auth/bh$1;
.super Ljava/lang/Object;
.source "UploaderStreamingTask.java"

# interfaces
.implements Lcom/laiwang/protocol/upload/OnUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/auth/bh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bJ:Lcom/alibaba/wukong/auth/bh;

.field volatile progress:I


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/auth/bh;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/wukong/auth/bh;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alibaba/wukong/auth/bh$1;->bJ:Lcom/alibaba/wukong/auth/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/wukong/auth/bh$1;->progress:I

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V
    .locals 6
    .param p1, "errorStatus"    # Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    if-nez p1, :cond_1

    sget-object v3, Lcom/laiwang/protocol/upload/ErrorMsg;->UNKNOWN_ERROR:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-virtual {v3}, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->code()I

    move-result v0

    .line 53
    .local v0, "errCode":I
    :goto_0
    if-nez p1, :cond_2

    sget-object v3, Lcom/laiwang/protocol/upload/ErrorMsg;->UNKNOWN_ERROR:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-virtual {v3}, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->reason()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "errDesc":Ljava/lang/String;
    :goto_1
    const-string/jumbo v3, "[TAG] UploadService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[Upload] upload stream fail "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "base"

    invoke-static {v3, v4, v5}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v3, p0, Lcom/alibaba/wukong/auth/bh$1;->bJ:Lcom/alibaba/wukong/auth/bh;

    iget-object v3, v3, Lcom/alibaba/wukong/auth/bh;->bL:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lifv;

    .line 57
    .local v2, "listener":Lifv;, "Lifv<Lifx;>;"
    if-eqz v2, :cond_0

    .line 58
    invoke-interface {v2, v0, v1}, Lifv;->onException(ILjava/lang/String;)V

    goto :goto_2

    .line 52
    .end local v0    # "errCode":I
    .end local v1    # "errDesc":Ljava/lang/String;
    .end local v2    # "listener":Lifv;, "Lifv<Lifx;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->code()I

    move-result v0

    goto :goto_0

    .line 53
    .restart local v0    # "errCode":I
    :cond_2
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->reason()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 61
    .restart local v1    # "errDesc":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public onProgress(JJLcom/laiwang/protocol/upload/UploaderExtra;)V
    .locals 9
    .param p1, "total"    # J
    .param p3, "offset"    # J
    .param p5, "extra"    # Lcom/laiwang/protocol/upload/UploaderExtra;

    .prologue
    .line 65
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    .line 76
    :cond_0
    return-void

    .line 67
    :cond_1
    const-wide/16 v2, 0x64

    mul-long/2addr v2, p3

    div-long/2addr v2, p1

    long-to-int v0, v2

    .line 68
    .local v0, "tmp":I
    iget v2, p0, Lcom/alibaba/wukong/auth/bh$1;->progress:I

    if-le v0, v2, :cond_0

    .line 69
    iput v0, p0, Lcom/alibaba/wukong/auth/bh$1;->progress:I

    .line 70
    iget-object v2, p0, Lcom/alibaba/wukong/auth/bh$1;->bJ:Lcom/alibaba/wukong/auth/bh;

    iget-object v2, v2, Lcom/alibaba/wukong/auth/bh;->bL:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lifv;

    .line 71
    .local v1, "listener":Lifv;, "Lifv<Lifx;>;"
    if-eqz v1, :cond_2

    .line 72
    iget v6, p0, Lcom/alibaba/wukong/auth/bh$1;->progress:I

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v1 .. v6}, Lifv;->onProgress(JJI)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/laiwang/protocol/upload/UploadResult;)V
    .locals 7
    .param p1, "result"    # Lcom/laiwang/protocol/upload/UploadResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/UploadResult;->getMediaId()Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "mediaId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/UploadResult;->getAuthMediaId()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "authMediaId":Ljava/lang/String;
    const-string/jumbo v4, "[TAG] UploadService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[Upload] upload stream succ "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " authMedia:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "base"

    invoke-static {v4, v5, v6}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v3, Lifx;

    invoke-direct {v3}, Lifx;-><init>()V

    .line 1030
    .local v3, "response":Lifx;
    iput-object v2, v3, Lifx;->a:Ljava/lang/String;

    .line 1038
    iput-object v0, v3, Lifx;->b:Ljava/lang/String;

    .line 43
    iget-object v4, p0, Lcom/alibaba/wukong/auth/bh$1;->bJ:Lcom/alibaba/wukong/auth/bh;

    iget-object v4, v4, Lcom/alibaba/wukong/auth/bh;->bL:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lifv;

    .line 44
    .local v1, "listener":Lifv;, "Lifv<Lifx;>;"
    if-eqz v1, :cond_0

    .line 45
    invoke-interface {v1, v3}, Lifv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 48
    .end local v1    # "listener":Lifv;, "Lifv<Lifx;>;"
    :cond_1
    return-void
.end method
