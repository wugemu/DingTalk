.class public final Lacv;
.super Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;
.source "CMailListAdapter.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InflateParams"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lacv$d;,
        Lacv$b;,
        Lacv$e;,
        Lacv$a;,
        Lacv$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
        ">;"
    }
.end annotation


# static fields
.field private static t:I


# instance fields
.field private A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;",
            ">;"
        }
    .end annotation
.end field

.field private B:Z

.field public a:Z

.field public b:I

.field c:Lcom/alibaba/alimei/sdk/model/FolderModel;

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Lacv$d;

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Z

.field m:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field o:Z

.field public p:I

.field public q:Lacm;

.field r:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private u:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

.field private x:Landroid/os/Handler;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/16 v0, 0x18

    sput v0, Lacv;->t:I

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 161
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 92
    iput-boolean v1, p0, Lacv;->a:Z

    .line 94
    iput v1, p0, Lacv;->b:I

    .line 95
    iput-object v2, p0, Lacv;->c:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lacv;->f:Ljava/util/HashMap;

    .line 97
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    iput-object v0, p0, Lacv;->u:Lfp;

    .line 98
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    iput-object v0, p0, Lacv;->v:Lfp;

    .line 99
    iput-boolean v3, p0, Lacv;->g:Z

    .line 103
    iput-boolean v1, p0, Lacv;->i:Z

    .line 104
    iput-object v2, p0, Lacv;->j:Ljava/lang/String;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lacv;->k:I

    .line 106
    iput-boolean v3, p0, Lacv;->l:Z

    .line 108
    iput-object v2, p0, Lacv;->m:Lfp;

    .line 109
    iput-object v2, p0, Lacv;->n:Ljava/util/HashMap;

    .line 110
    iput-boolean v1, p0, Lacv;->o:Z

    .line 111
    iput-boolean v1, p0, Lacv;->y:Z

    .line 112
    iput v1, p0, Lacv;->p:I

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lacv;->r:Ljava/util/HashSet;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lacv;->A:Ljava/util/HashMap;

    .line 162
    iput-object p1, p0, Lacv;->w:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    .line 163
    invoke-virtual {p0, p2}, Lacv;->b(Ljava/lang/String;)V

    .line 164
    new-instance v0, Lacv$c;

    invoke-direct {v0, p0}, Lacv$c;-><init>(Lacv;)V

    iput-object v0, p0, Lacv;->x:Landroid/os/Handler;

    .line 165
    iget-object v0, p0, Lacv;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laxo$d;->alm_cmail_font_size_s12:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lacv;->t:I

    .line 166
    return-void
.end method

.method static synthetic a(Lacv;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
    .locals 1
    .param p0, "x0"    # Lacv;

    .prologue
    .line 74
    iget-object v0, p0, Lacv;->w:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    return-object v0
.end method

.method static synthetic a(Lacv;J)Ljava/lang/String;
    .locals 3
    .param p0, "x0"    # Lacv;
    .param p1, "x1"    # J

    .prologue
    .line 74
    .line 2655
    iget-object v0, p0, Lacv;->v:Lfp;

    .line 3096
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2655
    check-cast v0, Ljava/lang/String;

    .line 2656
    if-nez v0, :cond_0

    .line 2657
    invoke-static {p1, p2}, Lcog;->n(J)Ljava/lang/String;

    move-result-object v0

    .line 2658
    iget-object v1, p0, Lacv;->v:Lfp;

    invoke-virtual {v1, p1, p2, v0}, Lfp;->b(JLjava/lang/Object;)V

    .line 74
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lacv;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 1
    .param p0, "x0"    # Lacv;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lacv;->b(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lacv;Z)Z
    .locals 0
    .param p0, "x0"    # Lacv;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lacv;->B:Z

    return p1
.end method

.method static synthetic b(Lacv;J)Ljava/lang/String;
    .locals 3
    .param p0, "x0"    # Lacv;
    .param p1, "x1"    # J

    .prologue
    .line 74
    .line 3646
    iget-object v0, p0, Lacv;->u:Lfp;

    .line 4096
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3646
    check-cast v0, Ljava/lang/String;

    .line 3647
    if-nez v0, :cond_0

    .line 3648
    iget-object v0, p0, Lacv;->e:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcog;->b(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3649
    iget-object v1, p0, Lacv;->u:Lfp;

    invoke-virtual {v1, p1, p2, v0}, Lfp;->b(JLjava/lang/Object;)V

    .line 74
    :cond_0
    return-object v0
.end method

.method static synthetic b(Lacv;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lacv;

    .prologue
    .line 74
    iget-object v0, p0, Lacv;->r:Ljava/util/HashSet;

    return-object v0
.end method

.method private b(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 2
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 485
    iget-object v0, p0, Lacv;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lacv;->f:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    const/4 v0, 0x1

    .line 488
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lacv;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lacv;

    .prologue
    .line 74
    iget-object v0, p0, Lacv;->A:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lacv;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lacv;

    .prologue
    .line 74
    iget-object v0, p0, Lacv;->x:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lacv;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lacv;

    .prologue
    .line 74
    iget-object v0, p0, Lacv;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lacv;)Z
    .locals 1
    .param p0, "x0"    # Lacv;

    .prologue
    .line 74
    iget-boolean v0, p0, Lacv;->i:Z

    return v0
.end method

.method static synthetic g(Lacv;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lacv;

    .prologue
    .line 74
    iget-object v0, p0, Lacv;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lacv;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lacv;

    .prologue
    .line 74
    iget-object v0, p0, Lacv;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lacv;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lacv;

    .prologue
    .line 74
    iget-object v0, p0, Lacv;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lacv;)I
    .locals 1
    .param p0, "x0"    # Lacv;

    .prologue
    .line 74
    iget v0, p0, Lacv;->p:I

    return v0
.end method

.method static synthetic k(Lacv;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lacv;

    .prologue
    .line 74
    iget-object v0, p0, Lacv;->e:Landroid/content/Context;

    return-object v0
.end method

.method private k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 622
    iget-object v0, p0, Lacv;->q:Lacm;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lacv;->q:Lacm;

    iget-object v1, p0, Lacv;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lacm;->a(I)V

    .line 625
    :cond_0
    return-void
.end method

.method static synthetic l(Lacv;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lacv;

    .prologue
    .line 74
    iget-object v0, p0, Lacv;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lacv;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lacv;

    .prologue
    .line 74
    iget-object v0, p0, Lacv;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic n(Lacv;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lacv;

    .prologue
    .line 74
    iget-object v0, p0, Lacv;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic o(Lacv;)Lacv$d;
    .locals 1
    .param p0, "x0"    # Lacv;

    .prologue
    .line 74
    iget-object v0, p0, Lacv;->h:Lacv$d;

    return-object v0
.end method

.method static synthetic p(Lacv;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lacv;

    .prologue
    .line 74
    iget-object v0, p0, Lacv;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic q(Lacv;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lacv;

    .prologue
    .line 74
    iget-object v0, p0, Lacv;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic r(Lacv;)Z
    .locals 1
    .param p0, "x0"    # Lacv;

    .prologue
    .line 74
    iget-boolean v0, p0, Lacv;->B:Z

    return v0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 669
    invoke-super {p0}, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->a()V

    .line 670
    iget-object v0, p0, Lacv;->x:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lacv;->x:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 673
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/sdk/model/FolderModel;)V
    .locals 0
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/FolderModel;

    .prologue
    .line 245
    iput-object p1, p0, Lacv;->c:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 246
    invoke-virtual {p0}, Lacv;->e()V

    .line 247
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 3
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lacv;->b(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lacv;->f:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const/4 v1, 0x0

    iput-boolean v1, p0, Lacv;->z:Z

    .line 604
    :goto_0
    invoke-virtual {p0}, Lacv;->notifyDataSetChanged()V

    .line 605
    invoke-direct {p0}, Lacv;->k()V

    .line 606
    :goto_1
    return-void

    .line 590
    :cond_0
    iget-object v1, p0, Lacv;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 592
    .local v0, "currentSize":I
    iget-boolean v1, p0, Lacv;->g:Z

    if-eqz v1, :cond_2

    .line 593
    if-lez v0, :cond_1

    .line 594
    iget-object v1, p0, Lacv;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 602
    :cond_1
    iget-object v1, p0, Lacv;->f:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 597
    :cond_2
    iget v1, p0, Lacv;->k:I

    if-lez v1, :cond_1

    iget v1, p0, Lacv;->k:I

    if-gt v1, v0, :cond_1

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->a(Ljava/util/List;)V

    .line 233
    invoke-virtual {p0}, Lacv;->d()V

    .line 234
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "isEnnableSearchItemIds"    # Z

    .prologue
    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lacv;->o:Z

    .line 191
    iget-boolean v0, p0, Lacv;->o:Z

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lacv;->n:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lacv;->n:Ljava/util/HashMap;

    .line 196
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 208
    iget-boolean v1, p0, Lacv;->o:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 211
    :cond_1
    iget-object v1, p0, Lacv;->n:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lacv;->n:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lacv;->s:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    iput-object p1, p0, Lacv;->s:Ljava/lang/String;

    .line 256
    iget-object v1, p0, Lacv;->r:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 257
    iget-object v1, p0, Lacv;->r:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v0, Lacv$1;

    invoke-direct {v0, p0}, Lacv$1;-><init>(Lacv;)V

    .line 279
    .local v0, "listener":Lxv;, "Lxv<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p1, v0}, Lafh;->b(Ljava/lang/String;Lxv;)V

    .line 282
    .end local v0    # "listener":Lxv;, "Lxv<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_0
    iget-object v1, p0, Lacv;->x:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 283
    iget-object v1, p0, Lacv;->x:Landroid/os/Handler;

    new-instance v2, Lacv$2;

    invoke-direct {v2, p0}, Lacv$2;-><init>(Lacv;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 294
    :cond_1
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lacv;->n:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lacv;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 183
    :cond_0
    return-void
.end method

.method protected final d(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    const/4 v4, 0x0

    .line 555
    invoke-super {p0, p1}, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->d(Ljava/util/List;)V

    .line 556
    invoke-virtual {p0}, Lacv;->f()Z

    move-result v3

    if-nez v3, :cond_0

    .line 579
    :goto_0
    return-void

    .line 559
    :cond_0
    if-nez p1, :cond_1

    .line 560
    iget-object v3, p0, Lacv;->f:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 561
    iput-boolean v4, p0, Lacv;->z:Z

    goto :goto_0

    .line 565
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 566
    .local v2, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 567
    .local v1, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v5, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 570
    .end local v1    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_2
    iget-object v3, p0, Lacv;->f:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 571
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 572
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 573
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 577
    :cond_4
    iget-object v3, p0, Lacv;->f:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lt v3, v5, :cond_5

    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, p0, Lacv;->z:Z

    .line 578
    invoke-direct {p0}, Lacv;->k()V

    goto :goto_0

    :cond_5
    move v3, v4

    .line 577
    goto :goto_3
.end method

.method public final e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 300
    iget-object v2, p0, Lacv;->x:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 301
    iget-object v2, p0, Lacv;->x:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 304
    :cond_0
    iget-object v2, p0, Lacv;->s:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lacv;->s:Ljava/lang/String;

    invoke-static {v2}, Lafh;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lacv;->c:Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lacv;->c:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 305
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isSendFolder()Z

    move-result v2

    if-nez v2, :cond_3

    .line 306
    :cond_1
    iget-object v2, p0, Lacv;->A:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lacv;->A:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 307
    iget-object v2, p0, Lacv;->A:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 309
    :cond_2
    invoke-virtual {p0}, Lacv;->notifyDataSetChanged()V

    .line 356
    :goto_0
    return-void

    .line 313
    :cond_3
    new-instance v1, Lacv$3;

    invoke-direct {v1, p0}, Lacv$3;-><init>(Lacv;)V

    .line 346
    .local v1, "listener":Lxv;, "Lxv<Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;>;>;"
    iget-object v2, p0, Lacv;->s:Ljava/lang/String;

    invoke-static {v2}, Lafw;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v0

    .line 347
    .local v0, "additionalApi":Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;
    if-eqz v0, :cond_4

    .line 348
    invoke-interface {v0, v1}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->queryAllRevokeMailStatus(Lxv;)V

    goto :goto_0

    .line 350
    :cond_4
    const-string/jumbo v2, "CMailListAdapter"

    const-string/jumbo v3, "queryAllRevokeStatus fail for additionalApi is null"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Lacv;->A:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lacv;->A:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 352
    iget-object v2, p0, Lacv;->A:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 354
    :cond_5
    invoke-virtual {p0}, Lacv;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected final f()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 476
    iget v1, p0, Lacv;->b:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 508
    iget-object v1, p0, Lacv;->d:Ljava/util/List;

    if-nez v1, :cond_1

    .line 511
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lacv;->z:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lacv;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v2, p0, Lacv;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 372
    invoke-virtual {p0, p1}, Lacv;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 373
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isTimeDivider:Z

    if-eqz v1, :cond_1

    .line 374
    :cond_0
    const/4 v1, 0x1

    .line 376
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lacv;->getItemViewType(I)I

    move-result v5

    .line 388
    .local v5, "viewType":I
    sget v4, Laxo$f;->recentDentryId:I

    .line 390
    .local v4, "tagId":I
    const/4 v0, 0x0

    .line 391
    .local v0, "absholder":Lacv$a;
    if-eqz p2, :cond_0

    .line 392
    invoke-virtual {p2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 393
    .local v3, "object":Ljava/lang/Object;
    instance-of v6, v3, Lacv$a;

    if-eqz v6, :cond_0

    move-object v0, v3

    .line 394
    check-cast v0, Lacv$a;

    .line 397
    .end local v3    # "object":Ljava/lang/Object;
    :cond_0
    if-eqz v0, :cond_1

    .line 1675
    iget v6, v0, Lacv$a;->a:I

    .line 397
    if-eq v6, v5, :cond_1

    .line 398
    const/4 v0, 0x0

    .line 399
    const/4 p2, 0x0

    .line 402
    :cond_1
    if-eqz p2, :cond_2

    if-nez v0, :cond_3

    .line 403
    :cond_2
    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 404
    new-instance v0, Lacv$b;

    .end local v0    # "absholder":Lacv$a;
    invoke-direct {v0}, Lacv$b;-><init>()V

    .line 408
    .restart local v0    # "absholder":Lacv$a;
    :goto_0
    iget-object v6, p0, Lacv;->e:Landroid/content/Context;

    invoke-virtual {v0, v6, p3}, Lacv$a;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 409
    invoke-virtual {p2, v4, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 413
    :cond_3
    invoke-virtual {p0, p1}, Lacv;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 414
    .local v2, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-nez v2, :cond_5

    .line 415
    const-string/jumbo v6, "CMailListAdapter"

    const-string/jumbo v7, "MODEL IS NULL!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :goto_1
    return-object p2

    .line 406
    .end local v2    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_4
    new-instance v0, Lacv$e;

    .end local v0    # "absholder":Lacv$a;
    invoke-direct {v0}, Lacv$e;-><init>()V

    .restart local v0    # "absholder":Lacv$a;
    goto :goto_0

    .line 418
    .restart local v2    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_5
    iput-object p0, v0, Lacv$a;->c:Lacv;

    .line 419
    iget-boolean v6, p0, Lacv;->a:Z

    iput-boolean v6, v0, Lacv$a;->b:Z

    .line 421
    move-object v1, v0

    .local v1, "holder":Lacv$a;
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v6

    iget-wide v8, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    invoke-virtual {v0, v6, v7, v8, v9}, Lacv$a;->a(JJ)V

    .line 423
    iget-boolean v6, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->shouldLoadData:Z

    if-nez v6, :cond_6

    iget-boolean v6, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasAttachment:Z

    if-nez v6, :cond_6

    iget-object v6, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    if-eqz v6, :cond_6

    .line 424
    iget-object v6, p0, Lacv;->e:Landroid/content/Context;

    invoke-virtual {v1, v6, v2, p1}, Lacv$a;->a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;I)V

    .line 437
    :goto_2
    invoke-virtual {p0}, Lacv;->f()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 438
    iget-object v6, v0, Lacv$a;->c:Lacv;

    iget-object v7, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    .line 2520
    if-nez v7, :cond_7

    .line 2521
    const/4 v6, 0x0

    .line 438
    :goto_3
    if-eqz v6, :cond_8

    .line 439
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    .line 426
    :cond_6
    iget-object v6, p0, Lacv;->x:Landroid/os/Handler;

    new-instance v7, Lacv$4;

    invoke-direct {v7, p0, v2, v1, p1}, Lacv$4;-><init>(Lacv;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Lacv$a;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 2524
    :cond_7
    iget-object v6, v6, Lacv;->f:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_3

    .line 441
    :cond_8
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    .line 444
    :cond_9
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x2

    return v0
.end method

.method public final h()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 531
    iget-object v1, p0, Lacv;->d:Ljava/util/List;

    if-nez v1, :cond_0

    .line 532
    iget-object v1, p0, Lacv;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 543
    :goto_0
    return-void

    .line 536
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lacv;->z:Z

    .line 537
    iget-object v1, p0, Lacv;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 538
    iget-object v1, p0, Lacv;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 539
    .local v0, "mailModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v2, p0, Lacv;->f:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 541
    .end local v0    # "mailModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_1
    invoke-virtual {p0}, Lacv;->notifyDataSetChanged()V

    .line 542
    invoke-direct {p0}, Lacv;->k()V

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lacv;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 613
    const/4 v0, 0x0

    iput-boolean v0, p0, Lacv;->z:Z

    .line 614
    invoke-virtual {p0}, Lacv;->notifyDataSetChanged()V

    .line 615
    invoke-direct {p0}, Lacv;->k()V

    .line 616
    return-void
.end method

.method public final j()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 632
    iget-object v2, p0, Lacv;->f:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 633
    .local v1, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 634
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-virtual {p0}, Lacv;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    iget-object v2, p0, Lacv;->f:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 637
    :cond_0
    return-object v0
.end method
