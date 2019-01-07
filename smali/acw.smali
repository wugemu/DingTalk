.class public final Lacw;
.super Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;
.source "CMailUserDefineFolderTypeAdaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lacw$e;,
        Lacw$b;,
        Lacw$c;,
        Lacw$a;,
        Lacw$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "selectingFolderType"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;-><init>(Landroid/content/Context;)V

    .line 47
    iput p2, p0, Lacw;->f:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lacw;->c:Ljava/util/List;

    .line 49
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 53
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 54
    const/4 v1, 0x0

    .line 63
    :goto_0
    return v1

    .line 55
    :cond_0
    instance-of v1, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 56
    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 57
    .local v0, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isTopFolder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    const/4 v1, 0x1

    goto :goto_0

    .line 61
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 63
    .end local v0    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_2
    const/4 v1, 0x3

    goto :goto_0
.end method

.method protected final a(I)Lrs;
    .locals 2
    .param p1, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 68
    packed-switch p1, :pswitch_data_0

    .line 78
    new-instance v0, Lacw$e;

    invoke-direct {v0, v1}, Lacw$e;-><init>(B)V

    :goto_0
    return-object v0

    .line 70
    :pswitch_0
    new-instance v0, Lacw$d;

    invoke-direct {v0, v1}, Lacw$d;-><init>(B)V

    goto :goto_0

    .line 72
    :pswitch_1
    new-instance v0, Lacw$c;

    iget v1, p0, Lacw;->f:I

    invoke-direct {v0, v1}, Lacw$c;-><init>(I)V

    goto :goto_0

    .line 74
    :pswitch_2
    new-instance v0, Lacw$b;

    iget v1, p0, Lacw;->f:I

    invoke-direct {v0, v1}, Lacw$b;-><init>(I)V

    goto :goto_0

    .line 76
    :pswitch_3
    new-instance v0, Lacw$e;

    invoke-direct {v0, v1}, Lacw$e;-><init>(B)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lacw;->b:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lacw;->notifyDataSetChanged()V

    .line 104
    return-void
.end method

.method public final a(Ljava/util/List;ZLjava/lang/String;)V
    .locals 7
    .param p2, "sync2Server"    # Z
    .param p3, "selectedServerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 107
    .local p1, "folderList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-nez p2, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lacw;->a:Z

    .line 109
    iput-object p3, p0, Lacw;->b:Ljava/lang/String;

    .line 111
    iget-object v4, p0, Lacw;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 113
    iget-object v4, p0, Lacw;->c:Ljava/util/List;

    iget-object v5, p0, Lacw;->e:Landroid/content/Context;

    sget v6, Laxo$i;->dt_mail_local_folder:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5}, Lcom/alibaba/alimei/sdk/model/FolderModel;-><init>(J)V

    .line 116
    .local v2, "localFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget-object v4, p0, Lacw;->e:Landroid/content/Context;

    iget v5, p0, Lacw;->f:I

    const-string/jumbo v6, ""

    invoke-static {v4, v5, v6}, Lrx;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;->name:Ljava/lang/String;

    .line 117
    iget v4, p0, Lacw;->f:I

    iput v4, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    .line 118
    iget-object v4, p0, Lacw;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v3, "systemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, "customList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 124
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 125
    .local v1, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isRecentReadFolder()Z

    move-result v5

    if-nez v5, :cond_0

    .line 130
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v5

    if-nez v5, :cond_0

    .line 131
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isAllFavoriteFolder()Z

    move-result v5

    if-nez v5, :cond_0

    .line 132
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isSyncableFolder()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 136
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isCustomMailFolder()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 137
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    .end local v0    # "customList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .end local v1    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v2    # "localFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v3    # "systemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 139
    .restart local v0    # "customList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .restart local v1    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .restart local v2    # "localFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .restart local v3    # "systemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 144
    .end local v1    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 145
    :cond_4
    iget-object v4, p0, Lacw;->c:Ljava/util/List;

    iget-object v5, p0, Lacw;->e:Landroid/content/Context;

    sget v6, Laxo$i;->dt_mail_on_the_server:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 148
    .restart local v1    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v1, :cond_5

    .line 152
    iget-object v5, p0, Lacw;->c:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->hasChildren()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 154
    iget-object v5, p0, Lacw;->c:Ljava/util/List;

    iget-object v6, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 158
    .end local v1    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 159
    .restart local v1    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v1, :cond_7

    .line 163
    iget-object v5, p0, Lacw;->c:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->hasChildren()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 165
    iget-object v5, p0, Lacw;->c:Ljava/util/List;

    iget-object v6, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 170
    .end local v1    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_8
    iget-object v4, p0, Lacw;->c:Ljava/util/List;

    invoke-virtual {p0, v4}, Lacw;->a(Ljava/util/List;)V

    .line 171
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "sync2Server"    # Z

    .prologue
    .line 95
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lacw;->a:Z

    .line 97
    invoke-virtual {p0}, Lacw;->notifyDataSetChanged()V

    .line 98
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final d()[Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lacw;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lacw;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method
