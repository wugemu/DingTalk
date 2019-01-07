.class public Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;
.super Ljava/lang/Object;
.source "CommonMailboxBuilder.java"

# interfaces
.implements Lacx;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->a:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->b:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->c:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->d:Ljava/util/List;

    .line 65
    sget v0, Laxo$i;->dd_cmail_mailbox:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->e:Ljava/lang/String;

    .line 66
    sget v0, Laxo$i;->dd_cmail_custom_folder:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->f:Ljava/lang/String;

    .line 67
    sget v0, Laxo$i;->dd_cmail_tag:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->g:Ljava/lang/String;

    .line 68
    sget v0, Laxo$i;->dd_cmail_pop_collection_folder:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->h:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 7
    .param p1, "selectPos"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 121
    iget-object v6, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 122
    .local v4, "sysSize":I
    iget-object v6, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 123
    .local v0, "cusSize":I
    iget-object v6, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 125
    .local v1, "popSize":I
    const/4 v2, 0x0

    .line 126
    .local v2, "pos":I
    move v3, v4

    .line 127
    .local v3, "size":I
    if-lez v4, :cond_2

    .line 128
    add-int/lit8 v3, v3, 0x1

    .line 129
    if-ge p1, v3, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v5

    .line 132
    :cond_1
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v2, v6, 0x0

    .line 135
    :cond_2
    add-int/2addr v3, v0

    .line 136
    if-lez v0, :cond_4

    .line 137
    add-int/lit8 v3, v3, 0x1

    .line 138
    if-ge p1, v3, :cond_3

    move v5, v2

    .line 139
    goto :goto_0

    .line 141
    :cond_3
    add-int/lit8 v6, v0, 0x1

    add-int/2addr v2, v6

    .line 144
    :cond_4
    add-int/2addr v3, v1

    .line 145
    if-lez v1, :cond_0

    .line 146
    add-int/lit8 v3, v3, 0x1

    .line 147
    if-ge p1, v3, :cond_0

    move v5, v2

    .line 148
    goto :goto_0
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->d:Ljava/util/List;

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
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
    .line 73
    .line 1157
    .local p1, "folderList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1158
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1159
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1160
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 74
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .local v1, "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 77
    sget-object v2, Lcom/alibaba/alimei/sdk/displayer/comparator/FolderComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/FolderComparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 78
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 79
    .local v0, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v0, :cond_0

    .line 83
    iget-boolean v3, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPop:Z

    if-eqz v3, :cond_1

    .line 84
    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isSystemFolder()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 86
    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_2
    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    .end local v0    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v1    # "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 94
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->e:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    :cond_4
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 99
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->f:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    :cond_5
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 104
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->h:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;->c:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    :cond_6
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "tagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    return-void
.end method
