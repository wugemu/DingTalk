.class public Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;
.super Ljava/lang/Object;
.source "AliMailboxBuilder.java"

# interfaces
.implements Lacx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
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
            "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->a:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->b:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->c:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->d:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->e:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->f:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->h:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->g:Ljava/util/HashSet;

    .line 91
    sget v0, Laxo$i;->dt_cmail_care_folders:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->i:Ljava/lang/String;

    .line 92
    sget v0, Laxo$i;->dd_cmail_mailbox:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->j:Ljava/lang/String;

    .line 93
    sget v0, Laxo$i;->dd_cmail_tag:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->k:Ljava/lang/String;

    .line 94
    sget v0, Laxo$i;->dd_cmail_pop_collection_folder:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->l:Ljava/lang/String;

    .line 95
    return-void
.end method

.method private a(Lcom/alibaba/alimei/sdk/model/FolderModel;)V
    .locals 5
    .param p1, "folderModel"    # Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 144
    if-nez p1, :cond_1

    .line 164
    :cond_0
    return-void

    .line 148
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isCareFolder()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->cloneWithoutChildren()Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->hasChildren()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    .line 154
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 155
    .local v0, "child":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v0, :cond_3

    .line 159
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isCareFolder()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 160
    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->b:Ljava/util/List;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->cloneWithoutChildren()Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->a:Ljava/util/List;

    sget-object v1, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder$a;->a:Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder$a;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 276
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->c:Ljava/util/List;

    sget-object v1, Lcom/alibaba/alimei/sdk/displayer/comparator/FolderComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/FolderComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 282
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 287
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 292
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->l:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 295
    :cond_5
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 9
    .param p1, "selectPos"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 205
    iget-object v8, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->h:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    .line 206
    .local v1, "dataSize":I
    if-lt p1, v1, :cond_1

    move v4, v7

    .line 251
    :cond_0
    :goto_0
    return v4

    .line 210
    :cond_1
    iget-object v8, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 211
    .local v0, "careSize":I
    iget-object v8, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    .line 212
    .local v2, "folderSize":I
    iget-object v8, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->e:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 213
    .local v6, "tagSize":I
    iget-object v8, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->f:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    .line 215
    .local v3, "popSize":I
    move v5, v0

    .line 216
    .local v5, "size":I
    const/4 v4, 0x0

    .line 217
    .local v4, "pos":I
    if-lez v0, :cond_3

    .line 218
    add-int/lit8 v5, v5, 0x1

    .line 219
    if-ge p1, v5, :cond_2

    move v4, v7

    .line 220
    goto :goto_0

    .line 222
    :cond_2
    add-int/lit8 v8, v0, 0x1

    add-int/lit8 v4, v8, 0x0

    .line 225
    :cond_3
    add-int/2addr v5, v2

    .line 226
    if-lez v2, :cond_4

    .line 227
    add-int/lit8 v5, v5, 0x1

    .line 228
    if-lt p1, v5, :cond_0

    .line 231
    add-int/lit8 v8, v2, 0x1

    add-int/2addr v4, v8

    .line 234
    :cond_4
    add-int/2addr v5, v6

    .line 235
    if-lez v6, :cond_5

    .line 236
    add-int/lit8 v5, v5, 0x1

    .line 237
    if-lt p1, v5, :cond_0

    .line 240
    add-int/lit8 v8, v6, 0x1

    add-int/2addr v4, v8

    .line 243
    :cond_5
    add-int/2addr v5, v3

    .line 244
    if-lez v3, :cond_6

    .line 245
    add-int/lit8 v5, v5, 0x1

    .line 246
    if-lt p1, v5, :cond_0

    :cond_6
    move v4, v7

    .line 251
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
    .line 200
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->h:Ljava/util/List;

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
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

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 99
    .local p1, "folderList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 100
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 101
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 102
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 103
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 104
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->g:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 106
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .local v1, "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
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

    .line 110
    .local v0, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->a(Lcom/alibaba/alimei/sdk/model/FolderModel;)V

    .line 116
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isCareFolder()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isInboxFolder()Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    :cond_1
    iget-boolean v3, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPop:Z

    if-eqz v3, :cond_2

    .line 125
    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->g:Ljava/util/HashSet;

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->g:Ljava/util/HashSet;

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_2
    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    .end local v0    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v1    # "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->b()V

    .line 137
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 168
    .local p1, "tagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 169
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 170
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 171
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 173
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    .local v1, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 176
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 177
    .local v0, "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/MailTagModel;->isCareTag()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/model/MailTagModel;->isCompleteTag(Lcom/alibaba/alimei/sdk/model/MailTagModel;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/model/MailTagModel;->isFollowTag(Lcom/alibaba/alimei/sdk/model/MailTagModel;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/model/MailTagModel;->isUnreadTag(Lcom/alibaba/alimei/sdk/model/MailTagModel;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 191
    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    .end local v0    # "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    .end local v1    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;->b()V

    .line 196
    return-void
.end method
