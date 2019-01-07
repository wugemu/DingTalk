.class public Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResultList;
.super Ljava/lang/Object;
.source "ProjectMemberResultList.java"


# instance fields
.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResultList;->items:Ljava/util/List;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResult;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResultList;->items:Ljava/util/List;

    .line 13
    return-void
.end method
