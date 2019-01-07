.class public Lcom/alibaba/alimei/restfulapi/request/data/MailInfoRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "MailInfoRequestData.java"


# instance fields
.field public EAddrKeys:[Ljava/lang/String;

.field public EAddrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
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
    .line 11
    .local p1, "mailList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "AccountType"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "InputEAddr"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "Status"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/MailInfoRequestData;->EAddrKeys:[Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/MailInfoRequestData;->EAddrs:Ljava/util/List;

    .line 13
    return-void
.end method
