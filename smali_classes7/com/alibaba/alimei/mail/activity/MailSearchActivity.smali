.class public Lcom/alibaba/alimei/mail/activity/MailSearchActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "MailSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/activity/MailSearchActivity$b;,
        Lcom/alibaba/alimei/mail/activity/MailSearchActivity$a;
    }
.end annotation


# instance fields
.field a:Landroid/widget/SearchView;

.field b:Ljava/lang/String;

.field private c:Landroid/support/v4/view/ViewPager;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

.field private e:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

.field private f:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

.field private g:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

.field private h:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

.field private i:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

.field private j:Landroid/os/Handler;

.field private k:I

.field private l:Lcom/alibaba/alimei/mail/activity/MailSearchActivity$a;

.field private final m:I

.field private final n:[I

.field private o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 28
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->a:Landroid/widget/SearchView;

    .line 46
    iput v3, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->m:I

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Laxo$i;->mail_all:I

    aput v2, v0, v1

    sget v1, Laxo$i;->mail_sender:I

    aput v1, v0, v3

    const/4 v1, 0x2

    sget v2, Laxo$i;->mail_topic:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Laxo$i;->mail_receiver:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->n:[I

    .line 148
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->o:Ljava/lang/Runnable;

    .line 245
    return-void
.end method

.method private static a(I)I
    .locals 3
    .param p0, "index"    # I

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 169
    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    .line 176
    :goto_0
    return v0

    .line 171
    :cond_0
    if-ne p0, v1, :cond_1

    move v0, v1

    .line 172
    goto :goto_0

    .line 173
    :cond_1
    if-ne p0, v0, :cond_2

    .line 174
    const/4 v0, 0x4

    goto :goto_0

    .line 176
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSearchActivity;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->k:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSearchActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->e:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->o:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    .line 1161
    invoke-static {p0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->i:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->i:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    iget v1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->k:I

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->a(I)I

    move-result v1

    .line 2114
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a(ILjava/lang/String;I)V

    .line 28
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSearchActivity;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-static {p1}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->a(I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSearchActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSearchActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->g:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->e:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSearchActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->h:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    return-object p1
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSearchActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->i:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    return-object p1
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->g:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->h:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->a:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->n:[I

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Lcom/alibaba/alimei/mail/activity/MailSearchActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->l:Lcom/alibaba/alimei/mail/activity/MailSearchActivity$a;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->i:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    .prologue
    .line 28
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->k:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    sget v0, Laxo$g;->activity_mail_search:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->setContentView(I)V

    .line 61
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->j:Landroid/os/Handler;

    .line 1069
    sget v0, Laxo$f;->view_pager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->c:Landroid/support/v4/view/ViewPager;

    .line 1070
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 1071
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->c:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 1073
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->l:Lcom/alibaba/alimei/mail/activity/MailSearchActivity$a;

    if-nez v0, :cond_0

    .line 1074
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$a;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$a;-><init>(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;Lcn;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->l:Lcom/alibaba/alimei/mail/activity/MailSearchActivity$a;

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->c:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->l:Lcom/alibaba/alimei/mail/activity/MailSearchActivity$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 1079
    sget v0, Laxo$f;->indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .line 1080
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 1081
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$b;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$b;-><init>(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 1086
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->k:I

    .line 1087
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->c:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->k:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1088
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget v1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->k:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setCurrentItem(I)V

    .line 1089
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->l:Lcom/alibaba/alimei/mail/activity/MailSearchActivity$a;

    iget v1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->k:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$a;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->i:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .line 66
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    const-string/jumbo v1, ""

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 100
    .local v0, "searchInput":Landroid/view/MenuItem;
    sget v1, Laxo$i;->search:I

    invoke-static {p0, v1}, Lcms;->a(Landroid/app/Activity;I)Landroid/widget/SearchView;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->a:Landroid/widget/SearchView;

    .line 101
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->a:Landroid/widget/SearchView;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 102
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 103
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 105
    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)V

    invoke-static {v0, v1}, Lgd;->a(Landroid/view/MenuItem;Lgd$d;)Landroid/view/MenuItem;

    .line 120
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->a:Landroid/widget/SearchView;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 144
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->a:Landroid/widget/SearchView;

    sget v2, Laxo$i;->search_box_hint:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 145
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 95
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 269
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onResume()V

    .line 270
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 274
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onStop()V

    .line 275
    return-void
.end method
