.class public Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;
.super Landroid/app/Dialog;
.source "H5LoadingDialog.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private messageText:Ljava/lang/String;

.field private pbLoading:Landroid/widget/ProgressBar;

.field private tvMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 27
    sget v0, Lcom/alipay/mobile/nebula/R$style;->h5_loading_style:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->activity:Landroid/app/Activity;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    return-void
.end method

.method private realSetMessage()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->tvMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->messageText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->messageText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->tvMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->tvMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 37
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->activity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 38
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/alipay/mobile/nebula/R$layout;->h5_loading:I

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 39
    .local v2, "view":Landroid/view/View;
    sget v3, Lcom/alipay/mobile/nebula/R$id;->h5_loading_progress:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->pbLoading:Landroid/widget/ProgressBar;

    .line 40
    sget v3, Lcom/alipay/mobile/nebula/R$id;->h5_loading_message:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->tvMessage:Landroid/widget/TextView;

    .line 42
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 43
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const v3, 0x3f7d70a4    # 0.99f

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 44
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 45
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->setContentView(Landroid/view/View;)V

    .line 46
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 47
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->setCancelable(Z)V

    .line 48
    invoke-virtual {p0, v5}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 49
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 50
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 51
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->realSetMessage()V

    .line 52
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 53
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->messageText:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->tvMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->realSetMessage()V

    .line 60
    :cond_0
    return-void
.end method
