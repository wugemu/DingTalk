.class public Lcom/alibaba/alimei/restfulapi/v2/response/ProjectResult;
.super Ljava/lang/Object;
.source "ProjectResult.java"


# instance fields
.field public success:Z

.field public value:Lcom/alibaba/alimei/restfulapi/v2/data/Project;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public getValue()Lcom/alibaba/alimei/restfulapi/v2/data/Project;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/ProjectResult;->value:Lcom/alibaba/alimei/restfulapi/v2/data/Project;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/ProjectResult;->success:Z

    return v0
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/ProjectResult;->success:Z

    .line 25
    return-void
.end method

.method public setValue(Lcom/alibaba/alimei/restfulapi/v2/data/Project;)V
    .locals 0
    .param p1, "value"    # Lcom/alibaba/alimei/restfulapi/v2/data/Project;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/ProjectResult;->value:Lcom/alibaba/alimei/restfulapi/v2/data/Project;

    .line 31
    return-void
.end method
