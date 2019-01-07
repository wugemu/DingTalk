.class public Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "DingReceiverCheckInActivity.java"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Lbak$a;

.field private l:Lbak$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 100
    new-instance v0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;-><init>(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->l:Lbak$b;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Lbak$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->k:Lbak$a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;Lbak$a;)Lbak$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;
    .param p1, "x1"    # Lbak$a;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->k:Lbak$a;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->j:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget v0, Laxp$g;->ding_activity_ding_receiver_check_in_meeting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->setContentView(I)V

    .line 1063
    sget v0, Laxp$f;->layout_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->a:Landroid/widget/LinearLayout;

    .line 1064
    sget v0, Laxp$f;->iv_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1065
    sget v0, Laxp$f;->tv_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->c:Landroid/widget/TextView;

    .line 1066
    sget v0, Laxp$f;->tv_status_not_start:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->d:Landroid/widget/TextView;

    .line 1068
    sget v0, Laxp$f;->layout_success:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->e:Landroid/view/View;

    .line 1069
    sget v0, Laxp$f;->tv_check_in_time_value:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->f:Landroid/widget/TextView;

    .line 1070
    sget v0, Laxp$f;->tv_meeting_time_value:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->g:Landroid/widget/TextView;

    .line 1072
    sget v0, Laxp$f;->tv_go_to_meeting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->h:Landroid/widget/TextView;

    .line 1073
    sget v0, Laxp$f;->tv_not_in_meeting_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->i:Landroid/widget/TextView;

    .line 1075
    sget v0, Laxp$f;->layout_progress:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->j:Landroid/view/View;

    .line 1088
    new-instance v0, Lbal;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->l:Lbak$b;

    invoke-direct {v0, p0, v1}, Lbal;-><init>(Landroid/app/Activity;Lbak$b;)V

    .line 2079
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_ding_sign_in_conference_code"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2080
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2081
    const-string/jumbo v1, "[DingReceiverCheckInPage]handleIntent failed"

    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "qrCode is null"

    invoke-static {v1, v2, v3}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->finish()V

    .line 2084
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->k:Lbak$a;

    invoke-interface {v1, v0}, Lbak$a;->a(Ljava/lang/String;)V

    .line 2092
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$1;-><init>(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method
