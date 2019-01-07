.class public Lcom/alibaba/android/search/activity/SearchMoreListActivity;
.super Lcom/alibaba/android/search/activity/BaseSearchActivity;
.source "SearchMoreListActivity.java"


# instance fields
.field private f:I

.field private g:Leqp$a;

.field private h:Leqp$a;

.field private i:Leqp$a;

.field private j:Leqp$a;

.field private k:Leqp$a;

.field private l:Leqp$a;

.field private m:Leqp$a;

.field private n:Lerw$b;

.field private o:Lcom/alibaba/android/search/fragment/AllSearchFragment;

.field private p:Leqz$b;

.field private q:Lerq$b;

.field private r:Lerg$b;

.field private s:Leqv$b;

.field private t:Leri$b;

.field private u:Lers$b;

.field private v:Lero$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/alibaba/android/search/activity/BaseSearchActivity;-><init>()V

    .line 63
    sget v0, Lemt$g;->search_box_hint:I

    iput v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->f:I

    .line 73
    new-instance v0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/activity/SearchMoreListActivity$1;-><init>(Lcom/alibaba/android/search/activity/SearchMoreListActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->n:Lerw$b;

    .line 139
    new-instance v0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/activity/SearchMoreListActivity$2;-><init>(Lcom/alibaba/android/search/activity/SearchMoreListActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->p:Leqz$b;

    .line 183
    new-instance v0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/activity/SearchMoreListActivity$3;-><init>(Lcom/alibaba/android/search/activity/SearchMoreListActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->q:Lerq$b;

    .line 222
    new-instance v0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/activity/SearchMoreListActivity$4;-><init>(Lcom/alibaba/android/search/activity/SearchMoreListActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->r:Lerg$b;

    .line 261
    new-instance v0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/activity/SearchMoreListActivity$5;-><init>(Lcom/alibaba/android/search/activity/SearchMoreListActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->s:Leqv$b;

    .line 300
    new-instance v0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/activity/SearchMoreListActivity$6;-><init>(Lcom/alibaba/android/search/activity/SearchMoreListActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->t:Leri$b;

    .line 344
    new-instance v0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/activity/SearchMoreListActivity$7;-><init>(Lcom/alibaba/android/search/activity/SearchMoreListActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->u:Lers$b;

    .line 383
    new-instance v0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/activity/SearchMoreListActivity$8;-><init>(Lcom/alibaba/android/search/activity/SearchMoreListActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->v:Lero$b;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/activity/SearchMoreListActivity;)Lcom/alibaba/android/search/fragment/AllSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->o:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/search/activity/SearchMoreListActivity;Leqp$a;)Leqp$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/SearchMoreListActivity;
    .param p1, "x1"    # Leqp$a;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->g:Leqp$a;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/search/activity/SearchMoreListActivity;Leqp$a;)Leqp$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/SearchMoreListActivity;
    .param p1, "x1"    # Leqp$a;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->i:Leqp$a;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/android/search/activity/SearchMoreListActivity;Leqp$a;)Leqp$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/SearchMoreListActivity;
    .param p1, "x1"    # Leqp$a;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->l:Leqp$a;

    return-object p1
.end method

.method static synthetic d(Lcom/alibaba/android/search/activity/SearchMoreListActivity;Leqp$a;)Leqp$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/SearchMoreListActivity;
    .param p1, "x1"    # Leqp$a;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->h:Leqp$a;

    return-object p1
.end method

.method static synthetic e(Lcom/alibaba/android/search/activity/SearchMoreListActivity;Leqp$a;)Leqp$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/SearchMoreListActivity;
    .param p1, "x1"    # Leqp$a;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->j:Leqp$a;

    return-object p1
.end method

.method static synthetic f(Lcom/alibaba/android/search/activity/SearchMoreListActivity;Leqp$a;)Leqp$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/SearchMoreListActivity;
    .param p1, "x1"    # Leqp$a;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->k:Leqp$a;

    return-object p1
.end method

.method static synthetic g(Lcom/alibaba/android/search/activity/SearchMoreListActivity;Leqp$a;)Leqp$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/SearchMoreListActivity;
    .param p1, "x1"    # Leqp$a;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->m:Leqp$a;

    return-object p1
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 542
    sget v0, Lemt$f;->activity_more_search_list:I

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->f:I

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5
    .param p1, "keyword"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 525
    invoke-super {p0, p1}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->b(Ljava/lang/String;)V

    .line 526
    iput-object p1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a:Ljava/lang/String;

    .line 528
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->o:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->o:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->b(Ljava/lang/String;)V

    .line 7479
    :cond_0
    new-instance v0, Leoe;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v2

    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->SOURCE_HYBRID:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;

    .line 7480
    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->getValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Leoe;-><init>(Ljava/lang/String;II)V

    .line 7481
    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->g:Leqp$a;

    invoke-interface {v1, v0}, Leqp$a;->a(Leoe;)V

    .line 7482
    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->i:Leqp$a;

    invoke-interface {v1, v0}, Leqp$a;->a(Leoe;)V

    .line 7483
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->l:Leqp$a;

    if-eqz v1, :cond_1

    .line 7484
    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->l:Leqp$a;

    invoke-interface {v1, v0}, Leqp$a;->a(Leoe;)V

    .line 7487
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->h:Leqp$a;

    if-eqz v1, :cond_2

    .line 7488
    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->h:Leqp$a;

    invoke-interface {v1, v0}, Leqp$a;->a(Leoe;)V

    .line 7490
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->j:Leqp$a;

    if-eqz v1, :cond_3

    .line 7491
    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->j:Leqp$a;

    invoke-interface {v1, v0}, Leqp$a;->a(Leoe;)V

    .line 7493
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->k:Leqp$a;

    if-eqz v1, :cond_4

    .line 7494
    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->k:Leqp$a;

    invoke-interface {v1, v0}, Leqp$a;->a(Leoe;)V

    .line 7497
    :cond_4
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->m:Leqp$a;

    if-eqz v1, :cond_5

    .line 7498
    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->m:Leqp$a;

    invoke-interface {v1, v0}, Leqp$a;->a(Leoe;)V

    .line 7503
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->g:Leqp$a;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Leqp$a;->a(Ljava/lang/String;Z)V

    .line 7504
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->i:Leqp$a;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Leqp$a;->a(Ljava/lang/String;Z)V

    .line 7505
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->l:Leqp$a;

    if-eqz v0, :cond_6

    .line 7506
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->l:Leqp$a;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Leqp$a;->a(Ljava/lang/String;Z)V

    .line 7508
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->h:Leqp$a;

    if-eqz v0, :cond_7

    .line 7509
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->h:Leqp$a;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Leqp$a;->a(Ljava/lang/String;Z)V

    .line 7511
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->j:Leqp$a;

    if-eqz v0, :cond_8

    .line 7512
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->j:Leqp$a;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Leqp$a;->a(Ljava/lang/String;Z)V

    .line 7514
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->k:Leqp$a;

    if-eqz v0, :cond_9

    .line 7515
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->k:Leqp$a;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Leqp$a;->a(Ljava/lang/String;Z)V

    .line 7518
    :cond_9
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->m:Leqp$a;

    if-eqz v0, :cond_a

    .line 7519
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->m:Leqp$a;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Leqp$a;->a(Ljava/lang/String;Z)V

    .line 533
    :cond_a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 424
    invoke-super {p0, p1}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 425
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a:Ljava/lang/String;

    .line 2432
    new-instance v0, Lera;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->p:Leqz$b;

    invoke-direct {v0, p0, v1}, Lera;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leqz$b;)V

    .line 2433
    new-instance v0, Leqw;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->s:Leqv$b;

    invoke-direct {v0, p0, v1}, Leqw;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leqv$b;)V

    .line 2434
    new-instance v0, Lerr;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->q:Lerq$b;

    invoke-direct {v0, p0, v1}, Lerr;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerq$b;)V

    .line 2435
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2436
    new-instance v0, Lerh;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->r:Lerg$b;

    invoke-direct {v0, p0, v1}, Lerh;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerg$b;)V

    .line 2438
    :cond_0
    new-instance v0, Lerj;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->t:Leri$b;

    invoke-direct {v0, p0, v1}, Lerj;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leri$b;)V

    .line 2439
    new-instance v0, Lert;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->u:Lers$b;

    invoke-direct {v0, p0, v1}, Lert;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lers$b;)V

    .line 2441
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2442
    new-instance v0, Lerp;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->v:Lero$b;

    invoke-direct {v0, p0, v1}, Lerp;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lero$b;)V

    .line 2447
    :cond_1
    new-instance v0, Lerx;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->n:Lerw$b;

    invoke-direct {v0, p0, v1}, Lerx;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerw$b;)V

    .line 2449
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2450
    const-string/jumbo v2, "keyword"

    iget-object v3, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2451
    new-instance v2, Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-direct {v2}, Lcom/alibaba/android/search/fragment/AllSearchFragment;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->o:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .line 2452
    iget-object v2, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->o:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v3, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->b(Ljava/lang/String;)V

    .line 2453
    const-string/jumbo v2, "choose_mode"

    iget v3, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->c:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2454
    iget-object v2, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->o:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2455
    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->o:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .line 3282
    iput-object v0, v1, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c:Lerw$a;

    .line 2456
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->o:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->g:Leqp$a;

    .line 3314
    iput-object v1, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->j:Leqp$a;

    .line 2457
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->o:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->h:Leqp$a;

    .line 4310
    iput-object v1, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->i:Leqp$a;

    .line 2458
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->o:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->i:Leqp$a;

    .line 4318
    iput-object v1, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->k:Leqp$a;

    .line 2459
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2460
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->o:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->l:Leqp$a;

    .line 4330
    iput-object v1, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->n:Leqp$a;

    .line 2462
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->o:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->k:Leqp$a;

    .line 5326
    iput-object v1, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->m:Leqp$a;

    .line 2463
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->o:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->j:Leqp$a;

    .line 6322
    iput-object v1, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->l:Leqp$a;

    .line 2465
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2466
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->o:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->m:Leqp$a;

    .line 6334
    iput-object v1, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->o:Leqp$a;

    .line 2469
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->o:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .line 6527
    iput-boolean v4, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->s:Z

    .line 2470
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->o:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .line 6531
    iput-boolean v4, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->t:Z

    .line 2472
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 2473
    sget v1, Lemt$e;->ll_fragment_container:I

    iget-object v2, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->o:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 2474
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 429
    return-void
.end method
