.class public final Ltn;
.super Ljava/lang/Object;
.source "TransferInfo.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
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

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:J


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;)V
    .locals 2
    .param p1, "transfer"    # Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;->getDentries()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ltn;->a:Ljava/util/List;

    .line 20
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;->getFailed()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ltn;->b:Ljava/util/Map;

    .line 21
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;->getMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltn;->c:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "ok"

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Ltn;->d:I

    .line 27
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;->getStatusId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltn;->e:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;->getTotal()J

    move-result-wide v0

    iput-wide v0, p0, Ltn;->f:J

    .line 30
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Ltn;->d:I

    goto :goto_0
.end method
