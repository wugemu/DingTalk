.class public Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;
.super Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;
.source "SyncRecentedContactResult.java"


# instance fields
.field private addedContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;",
            ">;"
        }
    .end annotation
.end field

.field private changedContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;",
            ">;"
        }
    .end annotation
.end field

.field private deletedContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;",
            ">;"
        }
    .end annotation
.end field

.field private recentedContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public getAddedRecentedContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;->addedContacts:Ljava/util/List;

    return-object v0
.end method

.method public getChangedRecentedContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;->changedContacts:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;->recentedContacts:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;->recentedContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDeleteRecentedContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;->deletedContacts:Ljava/util/List;

    return-object v0
.end method

.method public getRecentedContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;->recentedContacts:Ljava/util/List;

    return-object v0
.end method

.method public setRecentedContacts(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 37
    .local p1, "recentedContacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;->recentedContacts:Ljava/util/List;

    .line 38
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;->recentedContacts:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;->recentedContacts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;->addedContacts:Ljava/util/List;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;->changedContacts:Ljava/util/List;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;->deletedContacts:Ljava/util/List;

    .line 44
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;->recentedContacts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;

    .line 45
    .local v0, "item":Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 46
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;->addedContacts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 48
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;->changedContacts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 50
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;->deletedContacts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    .end local v0    # "item":Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;
    :cond_3
    return-void
.end method
