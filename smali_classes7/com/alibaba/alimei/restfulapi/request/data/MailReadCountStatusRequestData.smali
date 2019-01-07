.class public Lcom/alibaba/alimei/restfulapi/request/data/MailReadCountStatusRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "MailReadCountStatusRequestData.java"


# instance fields
.field private mailIds:Ljava/util/List;
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
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
    .line 15
    .local p1, "mailIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/MailReadCountStatusRequestData;->mailIds:Ljava/util/List;

    .line 17
    return-void
.end method


# virtual methods
.method public addMailIds(Ljava/lang/String;)V
    .locals 2
    .param p1, "mailId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/MailReadCountStatusRequestData;->mailIds:Ljava/util/List;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/MailReadCountStatusRequestData;->mailIds:Ljava/util/List;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/MailReadCountStatusRequestData;->mailIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public getMailIds()Ljava/util/List;
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
    .line 22
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/MailReadCountStatusRequestData;->mailIds:Ljava/util/List;

    return-object v0
.end method

.method public setMailIds(Ljava/util/List;)V
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
    .line 26
    .local p1, "mailIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/MailReadCountStatusRequestData;->mailIds:Ljava/util/List;

    .line 27
    return-void
.end method
