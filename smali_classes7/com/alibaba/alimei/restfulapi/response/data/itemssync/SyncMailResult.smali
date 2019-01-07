.class public Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;
.super Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;
.source "SyncMailResult.java"


# instance fields
.field private addedMails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;"
        }
    .end annotation
.end field

.field private changeFavoriteMails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;"
        }
    .end annotation
.end field

.field private changeReadMails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;"
        }
    .end annotation
.end field

.field private changedMails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;"
        }
    .end annotation
.end field

.field private deleteMails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;"
        }
    .end annotation
.end field

.field private mails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;"
        }
    .end annotation
.end field

.field private moveMails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;"
        }
    .end annotation
.end field

.field private sendStatusMails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public getAddedMails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->addedMails:Ljava/util/List;

    return-object v0
.end method

.method public getChangeFavoriteMails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->changeFavoriteMails:Ljava/util/List;

    return-object v0
.end method

.method public getChangeReadMails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->changeReadMails:Ljava/util/List;

    return-object v0
.end method

.method public getChangedMails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->changedMails:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->mails:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->mails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDeleteMails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->deleteMails:Ljava/util/List;

    return-object v0
.end method

.method public getMails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->mails:Ljava/util/List;

    return-object v0
.end method

.method public getMoveMails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->moveMails:Ljava/util/List;

    return-object v0
.end method

.method public getSendStatusMails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->sendStatusMails:Ljava/util/List;

    return-object v0
.end method

.method public setMails(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 37
    .local p1, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->mails:Ljava/util/List;

    .line 38
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->mails:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->mails:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->addedMails:Ljava/util/List;

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->changedMails:Ljava/util/List;

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->deleteMails:Ljava/util/List;

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->changeReadMails:Ljava/util/List;

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->changeFavoriteMails:Ljava/util/List;

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->moveMails:Ljava/util/List;

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->sendStatusMails:Ljava/util/List;

    .line 48
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->mails:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/restfulapi/data/Mail;

    .line 49
    .local v1, "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getAction()I

    move-result v0

    .line 50
    .local v0, "action":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 52
    :sswitch_0
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->addedMails:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :sswitch_1
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->changedMails:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :sswitch_2
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->deleteMails:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :sswitch_3
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->changeReadMails:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :sswitch_4
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->changeFavoriteMails:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :sswitch_5
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->moveMails:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :sswitch_6
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->sendStatusMails:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :sswitch_7
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->changeReadMails:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->changeFavoriteMails:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    .end local v0    # "action":I
    .end local v1    # "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    :cond_0
    return-void

    .line 50
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_5
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0xf -> :sswitch_6
        0x64 -> :sswitch_7
    .end sparse-switch
.end method
