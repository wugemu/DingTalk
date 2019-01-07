.class public Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;
.super Ljava/lang/Object;
.source "WearableDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;,
        Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL:I = 0x0

.field public static final ACTION_TO_PWD:I = 0x2


# instance fields
.field private btnDivider:Landroid/view/View;

.field private btnSpliter:Landroid/view/View;

.field private cancel:Landroid/widget/Button;

.field private loading:Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;

.field private mDialog:Landroid/app/Dialog;

.field private mIsExit:Z

.field private mListener:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;

.field private mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

.field private mVertifyEnum:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;

.field private tips:Landroid/widget/TextView;

.field private toPwd:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mIsExit:Z

    .line 51
    sget-object v0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;->VERIFY:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mVertifyEnum:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->showDialogImpl(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mIsExit:Z

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mListener:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->tips:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->loading:Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->cancel:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->toPwd:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->btnSpliter:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->btnDivider:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    if-nez v1, :cond_0

    .line 60
    new-instance v0, Lcom/alipay/android/app/smartpays/res/provider/ResourceProvider;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/smartpays/res/provider/ResourceProvider;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, "provider":Lcom/alipay/android/app/smartpays/api/IResourceProvider;
    new-instance v1, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;-><init>(Lcom/alipay/android/app/smartpays/api/IResourceProvider;)V

    iput-object v1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    .line 63
    .end local v0    # "provider":Lcom/alipay/android/app/smartpays/api/IResourceProvider;
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    return-object v1
.end method

.method private showDialogImpl(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;)Landroid/app/Dialog;
    .locals 7
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 80
    if-nez p1, :cond_0

    .line 172
    :goto_0
    return-object v3

    .line 83
    :cond_0
    iput-object p3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mListener:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;

    .line 84
    iput-boolean v4, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mIsExit:Z

    .line 85
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    .line 87
    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 88
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    move-result-object v3

    const-string/jumbo v4, "safepay_wear_dialog_layout"

    invoke-interface {v3, v4}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getLayoutId(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 89
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 90
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestFocusFromTouch()Z

    .line 91
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    move-result-object v3

    const-string/jumbo v4, "safepay_wear_dialog_tips"

    invoke-interface {v3, v4}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->tips:Landroid/widget/TextView;

    .line 92
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    move-result-object v3

    const-string/jumbo v4, "safepay_wear_dialog_loading"

    invoke-interface {v3, v4}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;

    iput-object v3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->loading:Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;

    .line 94
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    move-result-object v3

    const-string/jumbo v4, "safepay_wear_dialog_spliter"

    invoke-interface {v3, v4}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->btnSpliter:Landroid/view/View;

    .line 95
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    move-result-object v3

    const-string/jumbo v4, "safepay_wear_dialog_divider"

    invoke-interface {v3, v4}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->btnDivider:Landroid/view/View;

    .line 97
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    move-result-object v3

    const-string/jumbo v4, "safepay_wear_dialog_cancel"

    invoke-interface {v3, v4}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->cancel:Landroid/widget/Button;

    .line 98
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->cancel:Landroid/widget/Button;

    new-instance v4, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$2;

    invoke-direct {v4, p0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$2;-><init>(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    move-result-object v3

    const-string/jumbo v4, "safepay_wear_dialog_pwd"

    invoke-interface {v3, v4}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->toPwd:Landroid/widget/Button;

    .line 113
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->toPwd:Landroid/widget/Button;

    new-instance v4, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$3;

    invoke-direct {v4, p0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$3;-><init>(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mVertifyEnum:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;

    sget-object v4, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;->VERIFY:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;

    if-ne v3, v4, :cond_1

    .line 129
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->toPwd:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->btnDivider:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_1
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->loading:Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;

    invoke-virtual {v3}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->spin()V

    .line 134
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->loading:Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;

    invoke-virtual {v3}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->start()V

    .line 136
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->tips:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    move-result-object v4

    const-string/jumbo v5, "safepay_wear_verifying"

    invoke-interface {v4, v5}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 142
    :goto_1
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 143
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 144
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 145
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    new-instance v4, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$4;

    invoke-direct {v4, p0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$4;-><init>(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 156
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    new-instance v4, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$5;

    invoke-direct {v4, p0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$5;-><init>(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 167
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v1    # "layout":Landroid/widget/LinearLayout;
    .end local v2    # "layoutInflater":Landroid/view/LayoutInflater;
    :goto_2
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v3

    const-string/jumbo v4, "WearableDialog::showDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "WearableDialog msg:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 139
    .restart local v1    # "layout":Landroid/widget/LinearLayout;
    .restart local v2    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->tips:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 168
    .end local v1    # "layout":Landroid/widget/LinearLayout;
    .end local v2    # "layoutInflater":Landroid/view/LayoutInflater;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v3

    const-string/jumbo v4, "WearV1"

    const-string/jumbo v5, "ShowWearDialogEx"

    invoke-virtual {v3, v4, v5, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mIsExit:Z

    .line 193
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 196
    :cond_0
    return-void
.end method

.method public dismiss(I)V
    .locals 4
    .param p1, "delay"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mIsExit:Z

    .line 240
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->tips:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$9;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$9;-><init>(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    :cond_0
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAllButtonsGone()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 222
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->cancel:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->toPwd:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->btnSpliter:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->btnDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->cancel:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$8;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$8;-><init>(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    .line 236
    :cond_0
    return-void
.end method

.method public setResourceLoader(Lcom/alipay/android/app/smartpays/res/IResourceLoader;)V
    .locals 0
    .param p1, "loader"    # Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    .line 56
    return-void
.end method

.method public showDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;

    .prologue
    .line 70
    new-instance v0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$1;-><init>(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method public showLoadingSuccess()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->loading:Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->loading:Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;

    new-instance v1, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$7;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$7;-><init>(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->post(Ljava/lang/Runnable;)Z

    .line 218
    :cond_0
    return-void
.end method

.method public updateMsg(Ljava/lang/String;II)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "delay"    # I
    .param p3, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->tips:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->tips:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$6;

    invoke-direct {v1, p0, p1, p3}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$6;-><init>(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;Ljava/lang/String;I)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    :cond_0
    return-void
.end method
