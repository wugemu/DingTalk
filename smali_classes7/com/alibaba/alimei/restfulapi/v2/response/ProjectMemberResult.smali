.class public Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResult;
.super Ljava/lang/Object;
.source "ProjectMemberResult.java"


# instance fields
.field public success:Z

.field public value:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/ProjectMember;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public getValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/ProjectMember;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResult;->value:Ljava/util/List;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResult;->success:Z

    return v0
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResult;->success:Z

    .line 26
    return-void
.end method

.method public setValue(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/ProjectMember;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/data/ProjectMember;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResult;->value:Ljava/util/List;

    .line 32
    return-void
.end method
