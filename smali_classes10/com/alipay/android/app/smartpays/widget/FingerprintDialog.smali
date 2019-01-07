.class public Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;
.super Ljava/lang/Object;
.source "FingerprintDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$DialogButtonActionListener;,
        Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL:I = 0x0

.field public static final ACTION_TO_PWD:I = 0x2


# instance fields
.field private btnDivider:Landroid/view/View;

.field private btnSpliter:Landroid/view/View;

.field private cancel:Landroid/widget/Button;

.field private img:Landroid/widget/ImageView;

.field private mDialog:Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;

.field private mIsExit:Z

.field private mListener:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$DialogButtonActionListener;

.field private mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

.field private mVertifyEnum:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;

.field private tips:Landroid/widget/TextView;

.field private toPwd:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mIsExit:Z

    .line 50
    sget-object v0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;->OPEN:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mVertifyEnum:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;)V
    .locals 1
    .param p1, "vertifyEnum"    # Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mIsExit:Z

    .line 54
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mVertifyEnum:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$DialogButtonActionListener;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$DialogButtonActionListener;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->showDialogImpl(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$DialogButtonActionListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mIsExit:Z

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$DialogButtonActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mListener:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$DialogButtonActionListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->tips:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->cancel:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->toPwd:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->btnSpliter:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->btnDivider:Landroid/view/View;

    return-object v0
.end method

.method private showDialogImpl(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$DialogButtonActionListener;)Landroid/app/Dialog;
    .locals 7
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$DialogButtonActionListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 79
    if-nez p1, :cond_0

    .line 169
    :goto_0
    return-object v3

    .line 82
    :cond_0
    iput-object p3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mListener:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$DialogButtonActionListener;

    .line 83
    iput-boolean v4, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mIsExit:Z

    .line 84
    new-instance v3, Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;

    invoke-direct {v3, p1}, Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;

    .line 86
    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 87
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string/jumbo v4, "safepay_fp_dialog_layout"

    invoke-interface {v3, v4}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getLayoutId(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 88
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 89
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestFocusFromTouch()Z

    .line 90
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string/jumbo v4, "safepay_fp_dialog_tips"

    invoke-interface {v3, v4}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->tips:Landroid/widget/TextView;

    .line 91
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string/jumbo v4, "safepay_fp_dialog_icon"

    invoke-interface {v3, v4}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->img:Landroid/widget/ImageView;

    .line 93
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string/jumbo v4, "safepay_fp_dialog_spliter"

    invoke-interface {v3, v4}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->btnSpliter:Landroid/view/View;

    .line 94
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string/jumbo v4, "safepay_fp_dialog_divider"

    invoke-interface {v3, v4}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->btnDivider:Landroid/view/View;

    .line 96
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string/jumbo v4, "safepay_fp_dialog_cancel"

    invoke-interface {v3, v4}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->cancel:Landroid/widget/Button;

    .line 97
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->cancel:Landroid/widget/Button;

    new-instance v4, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$2;

    invoke-direct {v4, p0, p1}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$2;-><init>(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string/jumbo v4, "safepay_fp_dialog_pwd"

    invoke-interface {v3, v4}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->toPwd:Landroid/widget/Button;

    .line 111
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->toPwd:Landroid/widget/Button;

    new-instance v4, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$3;

    invoke-direct {v4, p0, p1}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$3;-><init>(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mVertifyEnum:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;

    sget-object v4, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;->OPEN:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;

    if-ne v3, v4, :cond_1

    .line 126
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->toPwd:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 127
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->btnDivider:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->tips:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string/jumbo v5, "safepay_fp_open"

    invoke-interface {v4, v5}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 139
    :goto_2
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;->requestWindowFeature(I)Z

    .line 140
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;->setContentView(Landroid/view/View;)V

    .line 141
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;->setCancelable(Z)V

    .line 142
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;

    new-instance v4, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$4;

    invoke-direct {v4, p0}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$4;-><init>(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)V

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 153
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;

    new-instance v4, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$5;

    invoke-direct {v4, p0}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$5;-><init>(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)V

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 164
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;

    invoke-virtual {v3}, Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v1    # "layout":Landroid/widget/LinearLayout;
    .end local v2    # "layoutInflater":Landroid/view/LayoutInflater;
    :goto_3
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v3

    const-string/jumbo v4, "HardwarePayValidateDialog::showDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "HardwarePayValidateDialog msg:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;

    goto/16 :goto_0

    .line 129
    .restart local v1    # "layout":Landroid/widget/LinearLayout;
    .restart local v2    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->toPwd:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->btnDivider:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 165
    .end local v1    # "layout":Landroid/widget/LinearLayout;
    .end local v2    # "layoutInflater":Landroid/view/LayoutInflater;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v3

    const-string/jumbo v4, "fpV1"

    const-string/jumbo v5, "ShowFpDialogEx"

    invoke-virtual {v3, v4, v5, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "layout":Landroid/widget/LinearLayout;
    .restart local v2    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->tips:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public dismiss(I)V
    .locals 4
    .param p1, "delay"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mIsExit:Z

    .line 248
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->tips:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$9;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$9;-><init>(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 262
    :cond_0
    return-void
.end method

.method public dismiss(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 189
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mIsExit:Z

    .line 190
    iget-object v2, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;

    if-eqz v2, :cond_0

    .line 192
    :try_start_0
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 193
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$7;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$7;-><init>(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;

    invoke-virtual {v0}, Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;->isShowing()Z

    move-result v0

    .line 209
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
    .line 230
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->cancel:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->toPwd:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->btnSpliter:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->btnDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->cancel:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$8;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$8;-><init>(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    .line 244
    :cond_0
    return-void
.end method

.method public setResourceLoader(Lcom/alipay/android/app/smartpays/res/IResourceLoader;)V
    .locals 0
    .param p1, "loader"    # Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    .line 59
    return-void
.end method

.method public showAnimation()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 213
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 215
    .local v9, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x41000000    # -0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 221
    .local v0, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 222
    invoke-virtual {v0, v10}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 223
    invoke-virtual {v0, v10}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 224
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 226
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->img:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 227
    return-void
.end method

.method public showDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$DialogButtonActionListener;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$DialogButtonActionListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    :try_start_0
    new-instance v1, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$1;-><init>(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$DialogButtonActionListener;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
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
    .line 173
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->tips:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->tips:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$6;

    invoke-direct {v1, p0, p1, p3}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$6;-><init>(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;Ljava/lang/String;I)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 182
    :cond_0
    return-void
.end method
