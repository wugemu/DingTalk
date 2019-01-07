.class public Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailSearchActivity.java"

# interfaces
.implements Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$b;,
        Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;
    }
.end annotation


# instance fields
.field a:Landroid/widget/SearchView;

.field b:Ljava/lang/String;

.field private final c:[I

.field private d:Ljava/lang/String;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

.field private g:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

.field private h:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

.field private i:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

.field private j:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

.field private k:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

.field private l:I

.field private m:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

.field private n:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;

.field private o:Landroid/os/Handler;

.field private p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Laxo$i;->mail_all:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Laxo$i;->dt_cmail_contacts:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Laxo$i;->mail_topic:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Laxo$i;->dt_cmail_body:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Laxo$i;->dt_mail_filter_attachment_title:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->c:[I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->a:Landroid/widget/SearchView;

    .line 218
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->p:Ljava/lang/Runnable;

    .line 337
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->l:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->g:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->p:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    .line 2231
    invoke-static {p0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2232
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->m:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    if-eqz v0, :cond_0

    .line 2233
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->m:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(Ljava/lang/String;)V

    .line 34
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->h:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->i:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->g:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->j:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    return-object p1
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->k:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    return-object p1
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->h:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->m:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    return-object p1
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->i:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->j:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->k:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->a:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->c:[I

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->n:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->m:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .param p1, "more"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "tab":I
    packed-switch p1, :pswitch_data_0

    .line 255
    :goto_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 256
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setCurrentItem(I)V

    .line 257
    return-void

    .line 243
    :pswitch_0
    const/4 v0, 0x1

    .line 244
    goto :goto_0

    .line 246
    :pswitch_1
    const/4 v0, 0x2

    .line 247
    goto :goto_0

    .line 249
    :pswitch_2
    const/4 v0, 0x3

    .line 250
    goto :goto_0

    .line 252
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1, "searchKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 261
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->a:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 262
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1131
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1132
    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 115
    :goto_0
    if-nez v0, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->finish()V

    .line 128
    :goto_1
    return-void

    .line 1136
    :cond_1
    const-string/jumbo v2, "account_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->d:Ljava/lang/String;

    .line 1138
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 120
    :cond_2
    sget v0, Laxo$g;->cmail_activity_search:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->setContentView(I)V

    .line 122
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->o:Landroid/os/Handler;

    .line 1142
    sget v0, Laxo$f;->view_pager:I

    .line 1372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1142
    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->e:Landroid/support/v4/view/ViewPager;

    .line 1143
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 1144
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->e:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 1146
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->n:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;

    if-nez v0, :cond_3

    .line 1147
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;Lcn;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->n:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;

    .line 1150
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->e:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->n:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 1152
    sget v0, Laxo$f;->indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .line 1153
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 1154
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$b;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$b;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 1155
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    sget v2, Laxo$c;->cmail_tab_text_color:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setTextColorSeletor(I)V

    .line 1156
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$d;->alm_cmail_font_size_s16:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setTextSize(I)V

    .line 2161
    iput v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->l:I

    .line 2162
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->e:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->l:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2163
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->l:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setCurrentItem(I)V

    .line 2164
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->n:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;

    iget v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->l:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->m:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    goto/16 :goto_1
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

    .line 169
    const-string/jumbo v1, ""

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 170
    .local v0, "searchInput":Landroid/view/MenuItem;
    sget v1, Laxo$i;->search:I

    invoke-static {p0, v1}, Lcms;->a(Landroid/app/Activity;I)Landroid/widget/SearchView;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->a:Landroid/widget/SearchView;

    .line 171
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->a:Landroid/widget/SearchView;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 172
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 173
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 175
    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)V

    invoke-static {v0, v1}, Lgd;->a(Landroid/view/MenuItem;Lgd$d;)Landroid/view/MenuItem;

    .line 190
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->a:Landroid/widget/SearchView;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 214
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->a:Landroid/widget/SearchView;

    sget v2, Laxo$i;->alm_cmail_menu_search:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 215
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method
