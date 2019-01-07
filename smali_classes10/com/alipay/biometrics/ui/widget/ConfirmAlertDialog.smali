.class public Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;
.super Landroid/app/Dialog;
.source "ConfirmAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;,
        Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;,
        Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$ClickListenerInterface;
    }
.end annotation


# instance fields
.field private _self:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

.field private isShowIcons:Z

.field private mBtnNegative:Landroid/view/View;

.field private mBtnPositive:Landroid/view/View;

.field private mButtonsContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mIconsContainer:Landroid/view/View;

.field private mMessage:Ljava/lang/String;

.field private mMessage2:Ljava/lang/String;

.field private mNegativeListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNegativeText:Ljava/lang/String;

.field private mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "positive"    # Ljava/lang/String;
    .param p4, "negative"    # Ljava/lang/String;

    .prologue
    .line 51
    sget v0, Lige$e;->ConfirmAlertDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 52
    iput-object p1, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mMessage:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mPositiveText:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mNegativeText:Ljava/lang/String;

    .line 57
    iput-object p0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->_self:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "message2"    # Ljava/lang/String;
    .param p4, "positive"    # Ljava/lang/String;
    .param p5, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "negative"    # Ljava/lang/String;
    .param p7, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "showIcons"    # Z

    .prologue
    .line 63
    sget v0, Lige$e;->ConfirmAlertDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 64
    iput-object p1, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mMessage:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mMessage2:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mPositiveText:Ljava/lang/String;

    .line 68
    iput-object p6, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mNegativeText:Ljava/lang/String;

    .line 70
    iput-object p5, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 71
    iput-object p7, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    .line 72
    iput-object p0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->_self:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    .line 73
    iput-boolean p8, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->isShowIcons:Z

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "message2"    # Ljava/lang/String;
    .param p4, "positive"    # Ljava/lang/String;
    .param p5, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "negative"    # Ljava/lang/String;
    .param p7, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "showIcons"    # Z
    .param p9, "title"    # Ljava/lang/String;

    .prologue
    .line 79
    sget v0, Lige$e;->ConfirmAlertDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 80
    iput-object p1, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mMessage:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mMessage2:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mPositiveText:Ljava/lang/String;

    .line 84
    iput-object p6, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mNegativeText:Ljava/lang/String;

    .line 86
    iput-object p5, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 87
    iput-object p7, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    .line 88
    iput-object p0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->_self:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    .line 89
    iput-boolean p8, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->isShowIcons:Z

    .line 90
    iput-object p9, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mTitle:Ljava/lang/String;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->_self:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mBtnPositive:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mMessage2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mBtnPositive:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mBtnNegative:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mBtnNegative:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$302(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mIconsContainer:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$400(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mButtonsContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mButtonsContainer:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mPositiveText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mNegativeText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mMessage:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public init()V
    .locals 12

    .prologue
    .line 103
    iget-object v9, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 104
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v9, Lige$d;->bio_alert_dialog:I

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 106
    .local v8, "view":Landroid/view/View;
    :try_start_0
    invoke-virtual {p0, v8}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    new-instance v9, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;

    invoke-direct {v9, p0, v8}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;-><init>(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;Landroid/view/View;)V

    invoke-virtual {v9}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->invoke()Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;

    move-result-object v6

    .line 113
    .local v6, "setDialogContext":Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;
    invoke-virtual {v6}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->isNegativeEnable()Z

    move-result v4

    .line 114
    .local v4, "negativeEnable":Z
    invoke-virtual {v6}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->isPositiveEnable()Z

    move-result v5

    .line 116
    .local v5, "positiveEnable":Z
    invoke-virtual {v6}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->getTvMessage()Landroid/widget/TextView;

    move-result-object v7

    .line 118
    .local v7, "tvMessage":Landroid/widget/TextView;
    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    .line 120
    :cond_0
    iget-object v9, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mButtonsContainer:Landroid/view/View;

    new-instance v10, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$1;

    invoke-direct {v10, p0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$1;-><init>(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 136
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 137
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v9, "confirmDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "message:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v9, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mIconsContainer:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-boolean v9, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->isShowIcons:Z

    if-nez v9, :cond_2

    .line 143
    iget-object v9, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->mIconsContainer:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 152
    .end local v0    # "dialogWindow":Landroid/view/Window;
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "negativeEnable":Z
    .end local v5    # "positiveEnable":Z
    .end local v6    # "setDialogContext":Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;
    .end local v7    # "tvMessage":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->init()V

    .line 100
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->tag:Ljava/lang/Object;

    .line 41
    return-void
.end method
