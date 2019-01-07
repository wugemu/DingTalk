.class public Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;
.super Ljava/lang/Object;
.source "MailReadSingleResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;
    }
.end annotation


# instance fields
.field private fail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;",
            ">;"
        }
    .end annotation
.end field

.field private read:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;",
            ">;"
        }
    .end annotation
.end field

.field private sending:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;",
            ">;"
        }
    .end annotation
.end field

.field private sent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;",
            ">;"
        }
    .end annotation
.end field

.field private unknown:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;",
            ">;"
        }
    .end annotation
.end field

.field private unread:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;",
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
.method public getFail()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->fail:Ljava/util/List;

    return-object v0
.end method

.method public getRead()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->read:Ljava/util/List;

    return-object v0
.end method

.method public getSending()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->sending:Ljava/util/List;

    return-object v0
.end method

.method public getSent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->sent:Ljava/util/List;

    return-object v0
.end method

.method public getTotalNumber()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 22
    const/4 v0, 0x0

    .line 24
    .local v0, "count":I
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->sent:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->sent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->sending:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 28
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->sending:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->read:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 31
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->read:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->unread:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 34
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->unread:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->unknown:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 37
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->unknown:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    :cond_4
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->fail:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 40
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->fail:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    :cond_5
    return v0
.end method

.method public getUnknown()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->unknown:Ljava/util/List;

    return-object v0
.end method

.method public getUnread()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->unread:Ljava/util/List;

    return-object v0
.end method

.method public setFail(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "fail":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->fail:Ljava/util/List;

    .line 79
    return-void
.end method

.method public setRead(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "read":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->read:Ljava/util/List;

    .line 61
    return-void
.end method

.method public setSending(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "sending":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->sending:Ljava/util/List;

    .line 55
    return-void
.end method

.method public setSent(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "sent":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->sent:Ljava/util/List;

    .line 49
    return-void
.end method

.method public setUnknown(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "unknown":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->unknown:Ljava/util/List;

    .line 73
    return-void
.end method

.method public setUnread(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "unread":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->unread:Ljava/util/List;

    .line 67
    return-void
.end method
