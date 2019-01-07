.class public Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;
.super Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;
.source "MailSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$a",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private C:Lxv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;",
            ">;"
        }
    .end annotation
.end field

.field public a:Ljava/lang/String;

.field public b:Landroid/view/View$OnClickListener;

.field private c:Lacv;

.field private d:Z

.field private e:I

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ProgressBar;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/ListView;

.field private r:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

.field private final s:I

.field private t:I

.field private u:Landroid/view/View;

.field private v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/alibaba/alimei/sdk/model/FrequentContactModel;

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;-><init>()V

    .line 57
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->d:Z

    .line 58
    iput v2, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->e:I

    .line 59
    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a:Ljava/lang/String;

    .line 60
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->f:Z

    .line 61
    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->g:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->i:Landroid/widget/TextView;

    .line 65
    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->j:Landroid/widget/ProgressBar;

    .line 66
    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->k:Landroid/widget/TextView;

    .line 69
    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->p:Landroid/view/View;

    .line 76
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->s:I

    .line 77
    iput v2, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->t:I

    .line 80
    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->u:Landroid/view/View;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->v:Ljava/util/Map;

    .line 331
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;-><init>(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->B:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$a;

    .line 485
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;-><init>(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->C:Lxv;

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->t:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;Lcom/alibaba/alimei/sdk/model/FrequentContactModel;)Lcom/alibaba/alimei/sdk/model/FrequentContactModel;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/FrequentContactModel;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->w:Lcom/alibaba/alimei/sdk/model/FrequentContactModel;

    return-object p1
.end method

.method private a(ILjava/lang/String;ZII)V
    .locals 6
    .param p1, "searchType"    # I
    .param p2, "searchKeyword"    # Ljava/lang/String;
    .param p3, "updateKeyword"    # Z
    .param p4, "from"    # I
    .param p5, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 294
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->r:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-static {v0, v4}, Lss;->a(Landroid/view/View;Z)V

    .line 296
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->c:Lacv;

    invoke-virtual {v0, v2}, Lacv;->a(Ljava/util/List;)V

    .line 329
    :goto_0
    return-void

    .line 299
    :cond_1
    if-gtz p5, :cond_5

    .line 300
    iput-boolean v4, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->z:Z

    .line 301
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->c:Lacv;

    invoke-virtual {v0, v2}, Lacv;->a(Ljava/util/List;)V

    .line 302
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->q:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 307
    :goto_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->u:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 313
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 315
    :cond_3
    if-eqz p3, :cond_4

    .line 316
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$i;->mail_search_from_server:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :cond_4
    iput v4, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->t:I

    .line 319
    iput-boolean v5, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->f:Z

    .line 321
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "mail.localSearch"

    invoke-static {v0, v1, v2}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->v:Ljava/util/Map;

    .line 2969
    const-string/jumbo v1, "mail_search_local_click"

    invoke-static {v1, v0}, Lafe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 326
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->c:Lacv;

    invoke-virtual {v0}, Lacv;->d()V

    .line 327
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->B:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$a;

    invoke-virtual {v0, p4}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$a;->a(I)V

    .line 328
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->g:Ljava/lang/String;

    invoke-static {v0}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->B:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$a;

    invoke-interface {v0, p2, p1, p5, v1}, Lcom/alibaba/alimei/sdk/api/MailApi;->searchLocalMailByPage(Ljava/lang/String;IILxv;)V

    goto :goto_0

    .line 304
    :cond_5
    iput-boolean v5, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->z:Z

    .line 305
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->q:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;Ljava/util/List;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 51
    .line 5432
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->c:Lacv;

    invoke-virtual {v0}, Lacv;->getCount()I

    .line 5433
    if-nez p1, :cond_0

    move v0, v1

    .line 5434
    :goto_0
    const/16 v2, 0x50

    if-lt v0, v2, :cond_1

    .line 5435
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->r:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-static {v0, v3}, Lss;->a(Landroid/view/View;Z)V

    .line 5439
    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->f:Z

    .line 5440
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->c:Lacv;

    .line 6363
    iput-boolean v3, v0, Lacv;->i:Z

    .line 5441
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->c:Lacv;

    .line 7118
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a:Ljava/lang/String;

    .line 7367
    iput-object v2, v0, Lacv;->j:Ljava/lang/String;

    .line 5442
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->z:Z

    if-eqz v0, :cond_2

    .line 5443
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->c:Lacv;

    invoke-virtual {v0, p1}, Lacv;->c(Ljava/util/List;)V

    .line 5447
    :goto_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->q:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5448
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    return-void

    .line 5433
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 5437
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->r:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;Z)V

    goto :goto_1

    .line 5445
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->c:Lacv;

    invoke-virtual {v0, p1}, Lacv;->a(Ljava/util/List;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->j:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;Lcom/alibaba/alimei/sdk/model/FrequentContactModel;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/FrequentContactModel;

    .prologue
    const/4 v5, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 51
    .line 7452
    iput-boolean v6, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->f:Z

    .line 7453
    if-eqz p1, :cond_0

    .line 7456
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->q:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 7457
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 7458
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->m:Landroid/widget/TextView;

    sget v1, Laxo$i;->dt_mail_search_suggest_title_at:I

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    .line 7459
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string/jumbo v4, "<"

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->getMailAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, ">"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 7458
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7460
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->e:I

    packed-switch v0, :pswitch_data_0

    .line 7478
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 7479
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 7480
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->p:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 7475
    :cond_0
    :goto_0
    return-void

    .line 7462
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 7463
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7464
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->p:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 7467
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7468
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7469
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->p:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 7472
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7473
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 7474
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->p:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 7460
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->v:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .prologue
    .line 51
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->e:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .prologue
    .line 51
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->t:I

    return v0
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Lxv;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->C:Lxv;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Lacv;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->c:Lacv;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Lcom/alibaba/alimei/mail/widget/MailListMoreView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->r:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->u:Landroid/view/View;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->i:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;I)V
    .locals 6
    .param p1, "searchType"    # I
    .param p2, "searchKeyword"    # Ljava/lang/String;
    .param p3, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->f:Z

    if-eqz v0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iput p1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->e:I

    .line 287
    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a:Ljava/lang/String;

    .line 289
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a(ILjava/lang/String;ZII)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->g:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->c:Lacv;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->c:Lacv;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lacv;->b(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 149
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 150
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->I:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->q:Landroid/widget/ListView;

    .line 151
    new-instance v1, Lacv;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->g:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lacv;-><init>(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->c:Lacv;

    .line 152
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->c:Lacv;

    invoke-virtual {v0, v3}, Lacv;->a(Z)V

    .line 153
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->h:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    new-instance v0, Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->r:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    .line 156
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->q:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->r:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 157
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->r:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-static {v0, v4}, Lss;->a(Landroid/view/View;Z)V

    .line 158
    invoke-static {}, Lacg;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->q:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->h:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 163
    :cond_0
    invoke-static {}, Lacg;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->v:Ljava/util/Map;

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "alimail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->q:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 170
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->q:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->c:Lacv;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->q:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$1;-><init>(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->q:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$2;-><init>(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 218
    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->d:Z

    .line 219
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->e:I

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v4}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a(ILjava/lang/String;I)V

    .line 220
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->v:Ljava/util/Map;

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "other"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 559
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->w:Lcom/alibaba/alimei/sdk/model/FrequentContactModel;

    if-nez v0, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->w:Lcom/alibaba/alimei/sdk/model/FrequentContactModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->getMailAddress()Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, "keyword":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v4, Laxo$f;->ll_contact_all:I

    if-ne v0, v4, :cond_2

    .line 3018
    const-string/jumbo v0, "mail_search_contain_ta"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 566
    const/4 v1, 0x0

    .line 577
    .local v1, "searchType":I
    :goto_1
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->f:Z

    if-nez v0, :cond_0

    .line 581
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    const/4 v4, 0x1

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a(ILjava/lang/String;ZII)V

    goto :goto_0

    .line 567
    .end local v1    # "searchType":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v4, Laxo$f;->ll_sender_contact:I

    if-ne v0, v4, :cond_3

    .line 4017
    const-string/jumbo v0, "mail_search_to_ta"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 569
    const/4 v1, 0x3

    .restart local v1    # "searchType":I
    goto :goto_1

    .line 570
    .end local v1    # "searchType":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v4, Laxo$f;->ll_recipient_contact:I

    if-ne v0, v4, :cond_0

    .line 5016
    const-string/jumbo v0, "mail_search_from_ta"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 572
    const/4 v1, 0x4

    .restart local v1    # "searchType":I
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 128
    sget v1, Laxo$g;->alm_cmail_fragment_mail_search_footer:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->h:Landroid/view/View;

    .line 129
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->h:Landroid/view/View;

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->i:Landroid/widget/TextView;

    .line 130
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->h:Landroid/view/View;

    const v2, 0x102000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->j:Landroid/widget/ProgressBar;

    .line 131
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->h:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->k:Landroid/widget/TextView;

    .line 132
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, "view":Landroid/view/View;
    sget v1, Laxo$f;->ll_points:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->u:Landroid/view/View;

    .line 136
    sget v1, Laxo$f;->contact_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->l:Landroid/view/View;

    .line 137
    sget v1, Laxo$f;->tv_contact_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->m:Landroid/widget/TextView;

    .line 138
    sget v1, Laxo$f;->ll_sender_contact:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->n:Landroid/view/View;

    .line 139
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->n:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    sget v1, Laxo$f;->ll_recipient_contact:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->o:Landroid/view/View;

    .line 141
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->o:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    sget v1, Laxo$f;->ll_contact_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->p:Landroid/view/View;

    .line 143
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->p:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->d:Z

    .line 264
    invoke-super {p0}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;->onDestroy()V

    .line 265
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 242
    iput p2, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->A:I

    .line 244
    iput p2, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->x:I

    .line 245
    iput p3, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->y:I

    .line 246
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 227
    if-nez p2, :cond_0

    .line 228
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->q:Landroid/widget/ListView;

    if-nez v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->x:I

    iget v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->y:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->q:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->r:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->r:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->a(I)V

    .line 1253
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->c:Lacv;

    invoke-virtual {v0}, Lacv;->getCount()I

    move-result v0

    .line 1254
    iget v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->e:I

    .line 2118
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a:Ljava/lang/String;

    .line 1254
    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 123
    sget v0, Laxo$g;->alm_cmail_fragment_mail_search:I

    return v0
.end method
