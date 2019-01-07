.class Lcom/alibaba/wukong/auth/bg$1;
.super Ljava/lang/Object;
.source "UploaderFileTask.java"

# interfaces
.implements Lcom/laiwang/protocol/upload/OnUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/auth/bg;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field volatile bC:J

.field volatile bD:Lcom/laiwang/protocol/upload/UploaderExtra;

.field final synthetic bE:Lcom/alibaba/wukong/auth/bg;

.field volatile progress:I

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/auth/bg;J)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/wukong/auth/bg;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/wukong/auth/bg$1;->bE:Lcom/alibaba/wukong/auth/bg;

    iput-wide p2, p0, Lcom/alibaba/wukong/auth/bg$1;->val$startTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/wukong/auth/bg$1;->progress:I

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/wukong/auth/bg$1;->bC:J

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/wukong/auth/bg$1;->bD:Lcom/laiwang/protocol/upload/UploaderExtra;

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V
    .locals 10
    .param p1, "msg"    # Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    if-nez p1, :cond_2

    sget-object v4, Lcom/laiwang/protocol/upload/ErrorMsg;->UNKNOWN_ERROR:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-virtual {v4}, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->code()I

    move-result v0

    .line 111
    .local v0, "errCode":I
    :goto_0
    if-nez p1, :cond_3

    sget-object v4, Lcom/laiwang/protocol/upload/ErrorMsg;->UNKNOWN_ERROR:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-virtual {v4}, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->reason()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "errDesc":Ljava/lang/String;
    :goto_1
    const-string/jumbo v4, "[TAG] UploadService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[Upload] upload file fail "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "base"

    invoke-static {v4, v5, v6}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v4, p0, Lcom/alibaba/wukong/auth/bg$1;->bE:Lcom/alibaba/wukong/auth/bg;

    iget-object v4, v4, Lcom/alibaba/wukong/auth/bg;->bM:Lcom/laiwang/protocol/upload/UploaderExtra;

    invoke-virtual {v4}, Lcom/laiwang/protocol/upload/UploaderExtra;->getAuthType()I

    move-result v4

    sget-object v5, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->TEMP_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    invoke-virtual {v5}, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->getValue()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 115
    iget-object v2, p0, Lcom/alibaba/wukong/auth/bg$1;->bD:Lcom/laiwang/protocol/upload/UploaderExtra;

    .line 117
    .local v2, "extra":Lcom/laiwang/protocol/upload/UploaderExtra;
    sget-object v4, Lcom/laiwang/protocol/upload/ErrorMsg;->UPLOAD_RETRY:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    if-eq p1, v4, :cond_0

    sget-object v4, Lcom/laiwang/protocol/upload/ErrorMsg;->UPLOAD_SERVER_ERROR:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    if-eq p1, v4, :cond_0

    sget-object v4, Lcom/laiwang/protocol/upload/ErrorMsg;->UNKNOWN_ERROR:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    if-ne p1, v4, :cond_4

    .line 118
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/auth/bf;->t()Lcom/alibaba/wukong/auth/bf;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/wukong/auth/bg$1;->bE:Lcom/alibaba/wukong/auth/bg;

    invoke-static {v5}, Lcom/alibaba/wukong/auth/bg;->a(Lcom/alibaba/wukong/auth/bg;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/wukong/auth/bf;->i(Ljava/lang/String;)Z

    .line 125
    .end local v2    # "extra":Lcom/laiwang/protocol/upload/UploaderExtra;
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/alibaba/wukong/auth/bg$1;->bE:Lcom/alibaba/wukong/auth/bg;

    invoke-static {v4}, Lcom/alibaba/wukong/auth/bg;->b(Lcom/alibaba/wukong/auth/bg;)Lcom/alibaba/wukong/auth/bg$a;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/wukong/auth/bg$1;->bE:Lcom/alibaba/wukong/auth/bg;

    invoke-static {v5}, Lcom/alibaba/wukong/auth/bg;->a(Lcom/alibaba/wukong/auth/bg;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alibaba/wukong/auth/bg$1$2;

    invoke-direct {v6, p0, v0, v1}, Lcom/alibaba/wukong/auth/bg$1$2;-><init>(Lcom/alibaba/wukong/auth/bg$1;ILjava/lang/String;)V

    invoke-interface {v4, v5, v6}, Lcom/alibaba/wukong/auth/bg$a;->onUploadFinished(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 137
    iget-object v4, p0, Lcom/alibaba/wukong/auth/bg$1;->bE:Lcom/alibaba/wukong/auth/bg;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alibaba/wukong/auth/bg$1;->val$startTime:J

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7, v0}, Lcom/alibaba/wukong/auth/bg;->a(Lcom/alibaba/wukong/auth/bg;ZJI)V

    .line 138
    return-void

    .line 110
    .end local v0    # "errCode":I
    .end local v1    # "errDesc":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->code()I

    move-result v0

    goto :goto_0

    .line 111
    .restart local v0    # "errCode":I
    :cond_3
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->reason()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 119
    .restart local v1    # "errDesc":Ljava/lang/String;
    .restart local v2    # "extra":Lcom/laiwang/protocol/upload/UploaderExtra;
    :cond_4
    iget-object v4, p0, Lcom/alibaba/wukong/auth/bg$1;->bE:Lcom/alibaba/wukong/auth/bg;

    invoke-virtual {v4, v2}, Lcom/alibaba/wukong/auth/bg;->a(Lcom/laiwang/protocol/upload/UploaderExtra;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/laiwang/protocol/upload/UploaderExtra;->getUpIdx()I

    move-result v4

    if-lez v4, :cond_1

    .line 120
    invoke-static {v2}, Lcom/alibaba/wukong/auth/bi;->b(Lcom/laiwang/protocol/upload/UploaderExtra;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "status":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/wukong/auth/bf;->t()Lcom/alibaba/wukong/auth/bf;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/wukong/auth/bg$1;->bE:Lcom/alibaba/wukong/auth/bg;

    invoke-static {v5}, Lcom/alibaba/wukong/auth/bg;->a(Lcom/alibaba/wukong/auth/bg;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/alibaba/wukong/auth/bf;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onProgress(JJLcom/laiwang/protocol/upload/UploaderExtra;)V
    .locals 13
    .param p1, "total"    # J
    .param p3, "offset"    # J
    .param p5, "extra"    # Lcom/laiwang/protocol/upload/UploaderExtra;

    .prologue
    .line 86
    const-wide/16 v4, 0x64

    mul-long v4, v4, p3

    div-long/2addr v4, p1

    long-to-int v9, v4

    .line 87
    .local v9, "tmp":I
    iget v4, p0, Lcom/alibaba/wukong/auth/bg$1;->progress:I

    if-le v9, v4, :cond_2

    .line 88
    iput v9, p0, Lcom/alibaba/wukong/auth/bg$1;->progress:I

    .line 89
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/alibaba/wukong/auth/bg$1;->bD:Lcom/laiwang/protocol/upload/UploaderExtra;

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 91
    .local v10, "current":J
    iget-wide v4, p0, Lcom/alibaba/wukong/auth/bg$1;->bC:J

    sub-long v4, v10, v4

    const-wide/16 v6, 0x1388

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 92
    iput-wide v10, p0, Lcom/alibaba/wukong/auth/bg$1;->bC:J

    .line 94
    iget-object v4, p0, Lcom/alibaba/wukong/auth/bg$1;->bE:Lcom/alibaba/wukong/auth/bg;

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/alibaba/wukong/auth/bg;->a(Lcom/laiwang/protocol/upload/UploaderExtra;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/wukong/auth/bg$1;->bE:Lcom/alibaba/wukong/auth/bg;

    iget-object v4, v4, Lcom/alibaba/wukong/auth/bg;->bM:Lcom/laiwang/protocol/upload/UploaderExtra;

    invoke-virtual {v4}, Lcom/laiwang/protocol/upload/UploaderExtra;->getAuthType()I

    move-result v4

    sget-object v5, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->TEMP_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    invoke-virtual {v5}, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->getValue()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 95
    invoke-static/range {p5 .. p5}, Lcom/alibaba/wukong/auth/bi;->b(Lcom/laiwang/protocol/upload/UploaderExtra;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "status":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/wukong/auth/bf;->t()Lcom/alibaba/wukong/auth/bf;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/wukong/auth/bg$1;->bE:Lcom/alibaba/wukong/auth/bg;

    invoke-static {v5}, Lcom/alibaba/wukong/auth/bg;->a(Lcom/alibaba/wukong/auth/bg;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/alibaba/wukong/auth/bf;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v2    # "status":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/alibaba/wukong/auth/bg$1;->bE:Lcom/alibaba/wukong/auth/bg;

    iget-object v4, v4, Lcom/alibaba/wukong/auth/bg;->bL:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lifv;

    .line 101
    .local v3, "listener":Lifv;
    if-eqz v3, :cond_1

    .line 102
    iget v8, p0, Lcom/alibaba/wukong/auth/bg$1;->progress:I

    move-wide v4, p1

    move-wide/from16 v6, p3

    invoke-interface/range {v3 .. v8}, Lifv;->onProgress(JJI)V

    goto :goto_0

    .line 106
    .end local v3    # "listener":Lifv;
    .end local v10    # "current":J
    :cond_2
    return-void
.end method

.method public onSuccess(Lcom/laiwang/protocol/upload/UploadResult;)V
    .locals 10
    .param p1, "result"    # Lcom/laiwang/protocol/upload/UploadResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/UploadResult;->getMediaId()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "mediaId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/UploadResult;->getAuthMediaId()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "authMediaId":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 53
    .local v1, "jsonObject":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/alibaba/wukong/auth/bg$1;->bE:Lcom/alibaba/wukong/auth/bg;

    iget-object v4, v4, Lcom/alibaba/wukong/auth/bg;->bM:Lcom/laiwang/protocol/upload/UploaderExtra;

    invoke-virtual {v4}, Lcom/laiwang/protocol/upload/UploaderExtra;->getAuthType()I

    move-result v4

    sget-object v5, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->TEMP_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    invoke-virtual {v5}, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->getValue()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 55
    :try_start_0
    const-string/jumbo v4, "mediaId"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string/jumbo v4, "authMediaId"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    invoke-static {}, Lcom/alibaba/wukong/auth/bf;->t()Lcom/alibaba/wukong/auth/bf;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/wukong/auth/bg$1;->bE:Lcom/alibaba/wukong/auth/bg;

    invoke-static {v5}, Lcom/alibaba/wukong/auth/bg;->a(Lcom/alibaba/wukong/auth/bg;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/wukong/auth/bf;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    const-string/jumbo v4, "[TAG] UploadService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[Upload] upload file succ "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "base"

    invoke-static {v4, v5, v6}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/alibaba/wukong/auth/bf;->t()Lcom/alibaba/wukong/auth/bf;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/wukong/auth/bg$1;->bE:Lcom/alibaba/wukong/auth/bg;

    invoke-static {v5}, Lcom/alibaba/wukong/auth/bg;->a(Lcom/alibaba/wukong/auth/bg;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/wukong/auth/bf;->i(Ljava/lang/String;)Z

    .line 66
    new-instance v3, Lifx;

    invoke-direct {v3}, Lifx;-><init>()V

    .line 1030
    .local v3, "response":Lifx;
    iput-object v2, v3, Lifx;->a:Ljava/lang/String;

    .line 1038
    iput-object v0, v3, Lifx;->b:Ljava/lang/String;

    .line 69
    iget-object v4, p0, Lcom/alibaba/wukong/auth/bg$1;->bE:Lcom/alibaba/wukong/auth/bg;

    invoke-static {v4}, Lcom/alibaba/wukong/auth/bg;->b(Lcom/alibaba/wukong/auth/bg;)Lcom/alibaba/wukong/auth/bg$a;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/wukong/auth/bg$1;->bE:Lcom/alibaba/wukong/auth/bg;

    invoke-static {v5}, Lcom/alibaba/wukong/auth/bg;->a(Lcom/alibaba/wukong/auth/bg;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alibaba/wukong/auth/bg$1$1;

    invoke-direct {v6, p0, v3}, Lcom/alibaba/wukong/auth/bg$1$1;-><init>(Lcom/alibaba/wukong/auth/bg$1;Lifx;)V

    invoke-interface {v4, v5, v6}, Lcom/alibaba/wukong/auth/bg$a;->onUploadFinished(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 82
    iget-object v4, p0, Lcom/alibaba/wukong/auth/bg$1;->bE:Lcom/alibaba/wukong/auth/bg;

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alibaba/wukong/auth/bg$1;->val$startTime:J

    sub-long/2addr v6, v8

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lcom/alibaba/wukong/auth/bg;->a(Lcom/alibaba/wukong/auth/bg;ZJI)V

    .line 83
    return-void

    .end local v3    # "response":Lifx;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
