.class final Lfzn$2$1;
.super Ljava/lang/Object;
.source "AlimeiSearchFacede.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfzn$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lfzn$2;


# direct methods
.method constructor <init>(Lfzn$2;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lfzn$2;

    .prologue
    .line 102
    iput-object p1, p0, Lfzn$2$1;->b:Lfzn$2;

    iput-object p2, p0, Lfzn$2$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 105
    new-instance v2, Lchr;

    invoke-direct {v2}, Lchr;-><init>()V

    .line 106
    .local v2, "searchResult":Lchr;
    iget-object v4, p0, Lfzn$2$1;->b:Lfzn$2;

    iget-object v4, v4, Lfzn$2;->b:Ljava/lang/String;

    iput-object v4, v2, Lchr;->b:Ljava/lang/String;

    .line 107
    const/16 v4, 0x10

    iput v4, v2, Lchr;->a:I

    .line 108
    iget-object v4, p0, Lfzn$2$1;->b:Lfzn$2;

    iget v4, v4, Lfzn$2;->c:I

    iget-object v5, p0, Lfzn$2$1;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    int-to-long v4, v4

    iput-wide v4, v2, Lchr;->c:J

    .line 109
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lchr;->d:Ljava/util/List;

    .line 110
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v3

    .line 111
    .local v3, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    iget-object v4, p0, Lfzn$2$1;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 112
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v0, :cond_0

    .line 115
    new-instance v1, Lchq;

    invoke-direct {v1}, Lchq;-><init>()V

    .line 116
    .local v1, "searchRecordObject":Lchq;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lchq;->a:Ljava/lang/String;

    .line 117
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lchq;->b:Ljava/lang/String;

    .line 118
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lchq;->c:Ljava/lang/String;

    .line 120
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v5

    .line 119
    invoke-virtual {v3, v5}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->c(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lchq;->f:J

    .line 121
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lchq;->g:Ljava/lang/String;

    .line 122
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v1, Lchq;->h:Ljava/util/Map;

    .line 123
    iget-object v5, v1, Lchq;->h:Ljava/util/Map;

    const-string/jumbo v6, "space_file_size"

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v5, v1, Lchq;->h:Ljava/util/Map;

    const-string/jumbo v6, "space_file_type"

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v5, v1, Lchq;->h:Ljava/util/Map;

    const-string/jumbo v6, "sid"

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v5, v2, Lchr;->d:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v1    # "searchRecordObject":Lchq;
    :cond_1
    iget-object v4, p0, Lfzn$2$1;->b:Lfzn$2;

    iget-object v4, v4, Lfzn$2;->a:Lcma;

    .line 1027
    invoke-static {v4, v2}, Lfzn;->a(Lcma;Ljava/lang/Object;)V

    .line 131
    return-void
.end method
