.class public Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResult;
.super Ljava/lang/Object;
.source "TodoCategoryUpdateResult.java"


# instance fields
.field private errorCode:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private success:Z

.field private value:Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;


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
    .line 26
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResult;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResult;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResult;->value:Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResult;->success:Z

    return v0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResult;->errorCode:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResult;->errorMessage:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResult;->success:Z

    .line 17
    return-void
.end method

.method public setValue(Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;)V
    .locals 0
    .param p1, "value"    # Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResult;->value:Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;

    .line 23
    return-void
.end method
