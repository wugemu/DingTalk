.class public Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;
.super Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;
.source "CMailMovetoFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter$e;,
        Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter$b;,
        Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter$c;,
        Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter$a;,
        Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter$d;
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
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/alibaba/alimei/sdk/model/FolderModel;

.field public c:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->a:Ljava/util/List;

    .line 63
    sget v0, Laxo$i;->dd_cmail_mailbox:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->c:Ljava/lang/String;

    .line 64
    sget v0, Laxo$i;->dd_cmail_custom_folder:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->f:Ljava/lang/String;

    .line 65
    sget v0, Laxo$i;->dd_cmail_pop_collection_folder:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->g:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 130
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 131
    const/4 v1, 0x0

    .line 140
    :goto_0
    return v1

    .line 132
    :cond_0
    instance-of v1, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 133
    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 134
    .local v0, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isTopFolder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    const/4 v1, 0x1

    goto :goto_0

    .line 138
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 140
    .end local v0    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_2
    const/4 v1, 0x3

    goto :goto_0
.end method

.method protected final a(I)Lrs;
    .locals 2
    .param p1, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 145
    packed-switch p1, :pswitch_data_0

    .line 155
    new-instance v0, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter$e;

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter$e;-><init>(B)V

    :goto_0
    return-object v0

    .line 147
    :pswitch_0
    new-instance v0, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter$d;

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter$d;-><init>(B)V

    goto :goto_0

    .line 149
    :pswitch_1
    new-instance v0, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter$c;

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter$c;-><init>(B)V

    goto :goto_0

    .line 151
    :pswitch_2
    new-instance v0, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter$b;

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter$b;-><init>(B)V

    goto :goto_0

    .line 153
    :pswitch_3
    new-instance v0, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter$e;

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter$e;-><init>(B)V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final d()[Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 185
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->b:Lcom/alibaba/alimei/sdk/model/FolderModel;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public e(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 116
    .local p1, "folderList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    :cond_0
    return-void

    .line 120
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 121
    .local v0, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->hasChildren()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->a:Ljava/util/List;

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 10
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 165
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->getItemViewType(I)I

    move-result v2

    .line 166
    .local v2, "viewType":I
    if-eq v4, v2, :cond_1

    const/4 v5, 0x2

    if-eq v5, v2, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v3

    .line 170
    :cond_1
    iget-object v5, p0, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->b:Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v5, :cond_2

    .line 171
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 172
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v5, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v5, :cond_0

    move-object v0, v1

    .line 176
    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 177
    .local v0, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v6

    iget-object v5, p0, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->b:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    .end local v0    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_2
    move v3, v4

    .line 180
    goto :goto_0
.end method
