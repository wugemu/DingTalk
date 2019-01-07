.class public Lcom/alibaba/alimei/restfulapi/v2/response/ResultItem;
.super Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;
.source "ResultItem.java"


# instance fields
.field protected errorCode:J

.field protected errorMessage:Ljava/lang/String;

.field protected success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/ResultItem;->errorCode:J

    return-wide v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/ResultItem;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/ResultItem;->success:Z

    return v0
.end method

.method public setErrorCode(J)V
    .locals 1
    .param p1, "errorCode"    # J

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/ResultItem;->errorCode:J

    .line 37
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/ResultItem;->errorMessage:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/ResultItem;->success:Z

    .line 29
    return-void
.end method
