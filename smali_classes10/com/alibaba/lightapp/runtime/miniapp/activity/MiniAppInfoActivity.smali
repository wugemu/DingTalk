.class public Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "MiniAppInfoActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/Button;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/Button;

.field private n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private o:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 53
    const-class v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 126
    const-class v1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;

    .line 128
    .local v0, "service":Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;
    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;->getMiniAppOpenInfo(Ljava/lang/String;Liyv;)V

    .line 199
    return-void
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->m:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->j:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->c:Z

    return v0
.end method

.method static synthetic l(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->e:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    .prologue
    .line 51
    .line 2202
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 2203
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 2204
    invoke-static {}, Lhlt;->a()Lhlt;

    move-result-object v0

    const-string/jumbo v1, "onDDShare"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lhlt;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 2205
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$4;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcaa;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    return-void
.end method

.method static synthetic o(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->o:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onAttachedToWindow()V

    .line 83
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->a(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 216
    invoke-static {p0}, Lhrf;->b(Landroid/app/Activity;)V

    .line 217
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    sget v0, Lhdn$i;->activity_miniapp_app_info:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->setContentView(I)V

    .line 1118
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->b:Ljava/lang/String;

    .line 1119
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "SHOW_SHARE_POP_MENU"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->c:Z

    .line 1120
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "ddOriginUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->d:Ljava/lang/String;

    .line 2087
    sget v0, Lhdn$h;->btn_share:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->e:Landroid/widget/Button;

    .line 2088
    sget v0, Lhdn$h;->btn_retry:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->m:Landroid/widget/Button;

    .line 2089
    sget v0, Lhdn$h;->iv_miniapp_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    .line 2090
    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {p0, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 2091
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2092
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a(FFFF)V

    .line 2093
    sget v0, Lhdn$h;->tv_miniapp_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->g:Landroid/widget/TextView;

    .line 2094
    sget v0, Lhdn$h;->tv_miniapp_desc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->h:Landroid/widget/TextView;

    .line 2095
    sget v0, Lhdn$h;->tv_provider_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->i:Landroid/widget/TextView;

    .line 2096
    sget v0, Lhdn$h;->ll_provider_info_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->j:Landroid/widget/LinearLayout;

    .line 2097
    sget v0, Lhdn$h;->ll_miniapp_info_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->l:Landroid/widget/LinearLayout;

    .line 2098
    sget v0, Lhdn$h;->tv_version:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->o:Landroid/widget/TextView;

    .line 2099
    sget v0, Lhdn$h;->back_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->k:Landroid/widget/RelativeLayout;

    .line 2100
    const/4 v0, 0x0

    sget v1, Lhdn$k;->miniapp_loading:I

    .line 2101
    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 2100
    invoke-static {p0, v0, v1, v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 2102
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->k:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2108
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->m:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method
