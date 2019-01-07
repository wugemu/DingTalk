.class public Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncBlackContactResult;
.super Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;
.source "SyncBlackContactResult.java"


# instance fields
.field private addedContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/BlackContact;",
            ">;"
        }
    .end annotation
.end field

.field private blackContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/BlackContact;",
            ">;"
        }
    .end annotation
.end field

.field private changedContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/BlackContact;",
            ">;"
        }
    .end annotation
.end field

.field private deleteContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/BlackContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public getAddedBlackContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/BlackContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncBlackContactResult;->addedContacts:Ljava/util/List;

    return-object v0
.end method

.method public getBlackContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/BlackContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncBlackContactResult;->blackContacts:Ljava/util/List;

    return-object v0
.end method

.method public getChangedBlackContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/BlackContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncBlackContactResult;->changedContacts:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncBlackContactResult;->blackContacts:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncBlackContactResult;->blackContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDeleteBlackContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/BlackContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncBlackContactResult;->deleteContacts:Ljava/util/List;

    return-object v0
.end method

.method public setBlackContacts(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/BlackContact;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 37
    .local p1, "blackContacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/contact/BlackContact;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncBlackContactResult;->blackContacts:Ljava/util/List;

    .line 38
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncBlackContactResult;->blackContacts:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncBlackContactResult;->blackContacts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncBlackContactResult;->addedContacts:Ljava/util/List;

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncBlackContactResult;->deleteContacts:Ljava/util/List;

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncBlackContactResult;->changedContacts:Ljava/util/List;

    .line 42
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncBlackContactResult;->blackContacts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/restfulapi/data/contact/BlackContact;

    .line 43
    .local v1, "contact":Lcom/alibaba/alimei/restfulapi/data/contact/BlackContact;
    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/data/contact/BlackContact;->getAction()I

    move-result v0

    .line 44
    .local v0, "action":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 45
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncBlackContactResult;->addedContacts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 47
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncBlackContactResult;->changedContacts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 49
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncBlackContactResult;->deleteContacts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    .end local v0    # "action":I
    .end local v1    # "contact":Lcom/alibaba/alimei/restfulapi/data/contact/BlackContact;
    :cond_3
    return-void
.end method
