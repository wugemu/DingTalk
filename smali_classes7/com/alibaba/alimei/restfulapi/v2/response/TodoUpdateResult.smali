.class public Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResult;
.super Ljava/lang/Object;
.source "TodoUpdateResult.java"


# instance fields
.field private errorCode:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private success:Z

.field private value:Lcom/alibaba/alimei/restfulapi/v2/data/Todo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResult;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResult;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lcom/alibaba/alimei/restfulapi/v2/data/Todo;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResult;->value:Lcom/alibaba/alimei/restfulapi/v2/data/Todo;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResult;->success:Z

    return v0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResult;->errorCode:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResult;->errorMessage:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResult;->success:Z

    .line 18
    return-void
.end method

.method public setValue(Lcom/alibaba/alimei/restfulapi/v2/data/Todo;)V
    .locals 0
    .param p1, "value"    # Lcom/alibaba/alimei/restfulapi/v2/data/Todo;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResult;->value:Lcom/alibaba/alimei/restfulapi/v2/data/Todo;

    .line 26
    return-void
.end method
