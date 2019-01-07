.class public Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;
.super Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;
.source "SyncDentryResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult",
        "<",
        "Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;",
            ">;"
        }
    .end annotation
.end field

.field private total:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;-><init>()V

    .line 19
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
            "Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->items:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->total:J

    return-wide v0
.end method

.method public setItems(Ljava/util/List;)V
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
    .line 28
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->items:Ljava/util/List;

    .line 29
    return-void
.end method

.method public setTotal(J)V
    .locals 1
    .param p1, "total"    # J

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->total:J

    .line 37
    return-void
.end method
