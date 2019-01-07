.class Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;
.super Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;
.source "RpcProjectServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InnerProject"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private projectId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->description:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->members:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$302(Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->projectId:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->members:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->description:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setMembers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->members:Ljava/util/List;

    .line 135
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->name:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setProjectId(Ljava/lang/String;)V
    .locals 0
    .param p1, "projectId"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl$InnerProject;->projectId:Ljava/lang/String;

    .line 117
    return-void
.end method
