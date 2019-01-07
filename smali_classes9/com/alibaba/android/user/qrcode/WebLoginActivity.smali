.class public Lcom/alibaba/android/user/qrcode/WebLoginActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "WebLoginActivity.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/qrcode/WebLoginActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/qrcode/WebLoginActivity;

    .prologue
    .line 27
    iget v0, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->f:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/qrcode/WebLoginActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/qrcode/WebLoginActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v2, Lezg$j;->activity_web_login:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->setContentView(I)V

    .line 44
    sget v2, Lezg$h;->btn_login:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->a:Landroid/widget/Button;

    .line 45
    sget v2, Lezg$h;->tv_login_cancel:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->b:Landroid/widget/TextView;

    .line 46
    sget v2, Lezg$h;->tv_login_tip:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->c:Landroid/widget/TextView;

    .line 47
    sget v2, Lezg$h;->iv_web_login_info:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->d:Landroid/widget/ImageView;

    .line 49
    const-string/jumbo v1, ""

    .line 50
    .local v1, "title":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 51
    .local v0, "desc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "qrcode"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->e:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "desc"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "type"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->f:I

    .line 57
    :cond_0
    iget v2, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->f:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 58
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    iget-object v2, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->a:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 63
    iget-object v2, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->a:Landroid/widget/Button;

    new-instance v3, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;-><init>(Lcom/alibaba/android/user/qrcode/WebLoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v2, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->b:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/android/user/qrcode/WebLoginActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/qrcode/WebLoginActivity$2;-><init>(Lcom/alibaba/android/user/qrcode/WebLoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void

    .line 65
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->c:Landroid/widget/TextView;

    sget v3, Lezg$l;->oalogin_tip:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 67
    :cond_3
    iget v2, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->f:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 68
    iget-object v2, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->c:Landroid/widget/TextView;

    sget v3, Lezg$l;->dt_ipad_login_tip:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v2, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->d:Landroid/widget/ImageView;

    sget v3, Lezg$g;->ipad_login_info:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 71
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->c:Landroid/widget/TextView;

    sget v3, Lezg$l;->weblogin_tip:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
