.class public Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;
.super Ljava/lang/Object;
.source "DentryTransfer.java"


# instance fields
.field private dentries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;",
            ">;"
        }
    .end annotation
.end field

.field private failed:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private statusId:Ljava/lang/String;

.field private total:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDentries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;->dentries:Ljava/util/List;

    return-object v0
.end method

.method public getFailed()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;->failed:Ljava/util/Map;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;->statusId:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;->total:J

    return-wide v0
.end method

.method public setDentries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "dentries":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;->dentries:Ljava/util/List;

    .line 30
    return-void
.end method

.method public setFailed(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "failed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;->failed:Ljava/util/Map;

    .line 38
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;->msg:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;->status:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setStatusId(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusId"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;->statusId:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setTotal(J)V
    .locals 1
    .param p1, "total"    # J

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;->total:J

    .line 70
    return-void
.end method
