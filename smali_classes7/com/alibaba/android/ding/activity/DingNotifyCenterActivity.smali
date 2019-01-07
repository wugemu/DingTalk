.class public Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "DingNotifyCenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;,
        Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

.field private b:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:I

.field private f:I

.field private g:I

.field private h:Layf;

.field private i:Layq;

.field private j:Landroid/support/v4/view/ViewPager$d;

.field private k:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;

.field private l:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;

.field private m:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 65
    new-instance v0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$1;-><init>(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->k:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;

    .line 72
    new-instance v0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$4;-><init>(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->l:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;

    .line 347
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->g:I

    return p1
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 324
    iget v2, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->e:I

    if-nez v2, :cond_1

    .line 325
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->d:Landroid/widget/TextView;

    sget v3, Laxp$i;->dt_ding_all_read:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 327
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->d:Landroid/widget/TextView;

    iget v3, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->g:I

    if-lez v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 337
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 327
    goto :goto_0

    .line 329
    :cond_1
    invoke-static {}, Lbju;->u()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 330
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->c:Landroid/view/View;

    move-object v3, v2

    move v2, v1

    .line 332
    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->d:Landroid/widget/TextView;

    sget v3, Laxp$i;->dt_ding_all_read:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 335
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->d:Landroid/widget/TextView;

    iget v3, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->f:I

    if-lez v3, :cond_4

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 332
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->c:Landroid/view/View;

    invoke-static {}, Lbju;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    goto :goto_2

    :cond_4
    move v0, v1

    .line 335
    goto :goto_3
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->a()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;I)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;
    .param p1, "x1"    # I

    .prologue
    .line 43
    .line 6314
    invoke-direct {p0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->a()V

    .line 6315
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(III)V

    .line 43
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    .prologue
    .line 43
    .line 6340
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 43
    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    .prologue
    .line 43
    iget v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->e:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->f:I

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    .prologue
    const/4 v1, 0x0

    .line 43
    .line 7224
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 8226
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->j:Z

    .line 8230
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 7227
    sget v1, Laxp$i;->dt_ding_allread_alert_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 7228
    sget v1, Laxp$i;->sure:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8259
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 7229
    sget v1, Laxp$i;->cancel:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8263
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->g:Ljava/lang/String;

    .line 7230
    new-instance v1, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$8;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$8;-><init>(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 8271
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 7238
    new-instance v1, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$9;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$9;-><init>(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 9267
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->b:Landroid/view/View$OnClickListener;

    .line 7244
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 43
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;I)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;
    .param p1, "x1"    # I

    .prologue
    .line 43
    .line 6319
    invoke-direct {p0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->a()V

    .line 6320
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(III)V

    .line 43
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->e:I

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    .prologue
    const/4 v1, 0x0

    .line 43
    .line 10248
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 11226
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->j:Z

    .line 11230
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 10251
    sget v1, Laxp$i;->dt_ding_comment_allread_alert_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 11239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 10252
    sget v1, Laxp$i;->sure:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 11259
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 10253
    sget v1, Laxp$i;->cancel:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 11263
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->g:Ljava/lang/String;

    .line 10254
    new-instance v1, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$10;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$10;-><init>(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 11271
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 10262
    new-instance v1, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$11;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$11;-><init>(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 12267
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->b:Landroid/view/View$OnClickListener;

    .line 10268
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 43
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    .prologue
    .line 43
    .line 12272
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->showLoadingDialog()V

    .line 12273
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    new-instance v0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$2;-><init>(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v2, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 12767
    iget-object v2, v1, Lbbp;->b:Lbbp$a;

    new-instance v3, Lbbp$84;

    invoke-direct {v3, v1, v0}, Lbbp$84;-><init>(Lbbp;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v2, v3}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    .prologue
    .line 43
    .line 13293
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->showLoadingDialog()V

    .line 13294
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    new-instance v0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$3;-><init>(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v2, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 13776
    iget-object v2, v1, Lbbp;->b:Lbbp$a;

    new-instance v3, Lbbp$85;

    invoke-direct {v3, v1, v0}, Lbbp$85;-><init>(Lbbp;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v2, v3}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 86
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    sget v0, Laxp$g;->ding_activity_ding_notify_center:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->setContentView(I)V

    .line 88
    sget v0, Laxp$i;->dt_ding_notifycenter_titile:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->setTitle(I)V

    .line 1123
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "show_ding_index"

    invoke-static {v0, v1, v7}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->e:I

    .line 1124
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_ding_unread_num"

    invoke-static {v0, v1, v7}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->g:I

    .line 1125
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_ding_comment_remind_num"

    invoke-static {v0, v1, v7}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->f:I

    .line 2118
    sget v0, Laxp$f;->view_pager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    .line 2119
    sget v0, Laxp$f;->indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .line 2208
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->actbar_textview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2209
    sget v0, Laxp$f;->tv_ok:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->d:Landroid/widget/TextView;

    .line 2210
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->d:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$7;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$7;-><init>(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2129
    iput-object v1, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->c:Landroid/view/View;

    .line 2130
    invoke-direct {p0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->a()V

    .line 2132
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    sget v1, Lcjj;->a:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setPageMargin(I)V

    .line 2133
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    sget v1, Laxp$e;->default_divider:I

    invoke-static {p0, v1}, Ldp;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2134
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setOffscreenPageLimit(I)V

    .line 2135
    invoke-static {}, Lbju;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2136
    new-instance v0, Layq;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->g:I

    iget v4, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->f:I

    iget-object v5, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->k:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;

    iget-object v6, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->l:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Layq;-><init>(Landroid/content/Context;Lcn;IILcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->i:Layq;

    .line 2138
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->i:Layq;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setAdapter(Lgl;)V

    .line 2144
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 2145
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    iget v1, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->e:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setCurrentItem(I)V

    .line 2146
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget v1, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->e:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setCurrentItem(I)V

    .line 2147
    new-instance v0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$5;-><init>(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->j:Landroid/support/v4/view/ViewPager$d;

    .line 2162
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->j:Landroid/support/v4/view/ViewPager$d;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 2163
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget v1, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->g:I

    iget v2, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->g:I

    invoke-virtual {v0, v7, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(III)V

    .line 2164
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget v1, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->f:I

    iget v2, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->f:I

    invoke-virtual {v0, v8, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(III)V

    .line 3168
    new-instance v0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$6;-><init>(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->m:Landroid/content/BroadcastReceiver;

    .line 3183
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3184
    const-string/jumbo v1, "com.workapp.ding.update.ding.unread.comment.count"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3185
    const-string/jumbo v1, "com.workapp.ding.update.ding.unread.count"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3186
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 93
    return-void

    .line 2140
    :cond_0
    new-instance v0, Layf;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->k:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->l:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;

    invoke-direct {v0, p0, v1, v2, v3}, Layf;-><init>(Landroid/content/Context;Lcn;Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->h:Layf;

    .line 2142
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->h:Layf;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setAdapter(Lgl;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 201
    const/4 v1, 0x1

    sget v2, Laxp$i;->sure:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 202
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->c:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 203
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 204
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->h:Layf;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->h:Layf;

    .line 6049
    iget-object v1, v0, Layf;->a:Lcom/alibaba/android/ding/fragment/DingUnReadFragment;

    if-eqz v1, :cond_0

    .line 6050
    iget-object v1, v0, Layf;->a:Lcom/alibaba/android/ding/fragment/DingUnReadFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/fragment/DingUnReadFragment;->onDestroy()V

    .line 6052
    :cond_0
    iget-object v1, v0, Layf;->b:Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;

    if-eqz v1, :cond_1

    .line 6053
    iget-object v0, v0, Layf;->b:Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->onDestroy()V

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->i:Layq;

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->i:Layq;

    .line 6056
    iget-object v1, v0, Layq;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    if-eqz v1, :cond_2

    .line 6057
    iget-object v1, v0, Layq;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->onDestroy()V

    .line 6059
    :cond_2
    iget-object v1, v0, Layq;->b:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    if-eqz v1, :cond_3

    .line 6060
    iget-object v0, v0, Layq;->b:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->onDestroy()V

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->m:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 112
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 114
    :cond_4
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 115
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 192
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->finish()V

    .line 194
    const/4 v0, 0x1

    .line 196
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 97
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->h:Layf;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->h:Layf;

    .line 4058
    iget-object v1, v0, Layf;->a:Lcom/alibaba/android/ding/fragment/DingUnReadFragment;

    if-eqz v1, :cond_0

    .line 4059
    iget-object v1, v0, Layf;->a:Lcom/alibaba/android/ding/fragment/DingUnReadFragment;

    .line 5052
    invoke-virtual {v1}, Lcom/alibaba/android/ding/fragment/DingUnReadFragment;->getUserVisibleHint()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5053
    iget-object v2, v1, Lcom/alibaba/android/ding/fragment/DingUnReadFragment;->a:Lbaq$d;

    if-eqz v2, :cond_0

    .line 5054
    iget-object v1, v1, Lcom/alibaba/android/ding/fragment/DingUnReadFragment;->a:Lbaq$d;

    invoke-interface {v1}, Lbaq$d;->d()V

    .line 4061
    :cond_0
    iget-object v0, v0, Layf;->b:Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;

    if-eqz v0, :cond_1

    .line 4062
    invoke-static {}, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->b()V

    .line 101
    :cond_1
    return-void
.end method
