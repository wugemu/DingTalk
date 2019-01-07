.class public Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;
.super Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;
.source "SyncTagResult.java"


# instance fields
.field private addedTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/TagItem;",
            ">;"
        }
    .end annotation
.end field

.field private changedTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/TagItem;",
            ">;"
        }
    .end annotation
.end field

.field private deletedTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/TagItem;",
            ">;"
        }
    .end annotation
.end field

.field private tagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/TagItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public getAddedTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/TagItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;->addedTagList:Ljava/util/List;

    return-object v0
.end method

.method public getChangedTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/TagItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;->changedTagList:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;->tagList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;->tagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDeletedTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/TagItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;->deletedTagList:Ljava/util/List;

    return-object v0
.end method

.method public getTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/TagItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;->tagList:Ljava/util/List;

    return-object v0
.end method

.method public setTagList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/TagItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 31
    .local p1, "tagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/TagItem;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;->tagList:Ljava/util/List;

    .line 32
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;->tagList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;->tagList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;->addedTagList:Ljava/util/List;

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;->changedTagList:Ljava/util/List;

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;->deletedTagList:Ljava/util/List;

    .line 38
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;->tagList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/restfulapi/data/TagItem;

    .line 39
    .local v1, "tagItem":Lcom/alibaba/alimei/restfulapi/data/TagItem;
    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/data/TagItem;->getAction()I

    move-result v0

    .line 40
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 42
    :pswitch_0
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;->addedTagList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :pswitch_1
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;->changedTagList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :pswitch_2
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;->deletedTagList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    .end local v0    # "action":I
    .end local v1    # "tagItem":Lcom/alibaba/alimei/restfulapi/data/TagItem;
    :cond_0
    return-void

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
