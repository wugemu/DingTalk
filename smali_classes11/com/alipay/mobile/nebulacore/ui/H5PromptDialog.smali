.class public Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;
.super Landroid/app/Dialog;
.source "H5PromptDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickNegativeListener;,
        Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickPositiveListener;
    }
.end annotation


# instance fields
.field private bottomLayout:Landroid/widget/LinearLayout;

.field private dialogBg:Landroid/widget/RelativeLayout;

.field private inflater:Landroid/view/LayoutInflater;

.field private inputContent:Landroid/widget/EditText;

.field private mCancelBtn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mEnsureBtn:Landroid/widget/Button;

.field private mIsAutoCancel:Z

.field private mMsg:Landroid/widget/TextView;

.field private mNegativeListener:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickNegativeListener;

.field private mNegativeString:Ljava/lang/String;

.field private mPositiveListener:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickPositiveListener;

.field private mPositiveString:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;

.field private rootView:Landroid/view/View;

.field private sMsg:Ljava/lang/String;

.field private sTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "positiveString"    # Ljava/lang/String;
    .param p5, "negativeString"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "positiveString"    # Ljava/lang/String;
    .param p5, "negativeString"    # Ljava/lang/String;
    .param p6, "isAutoCancel"    # Z

    .prologue
    .line 64
    sget v0, Lcom/alipay/mobile/nebula/R$style;->h5_prompt_noTitleTransBgDialogStyle:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mIsAutoCancel:Z

    .line 65
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->sTitle:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->sMsg:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mPositiveString:Ljava/lang/String;

    .line 69
    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mNegativeString:Ljava/lang/String;

    .line 70
    iput-boolean p6, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mIsAutoCancel:Z

    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->inflater:Landroid/view/LayoutInflater;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;)Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickNegativeListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mNegativeListener:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickNegativeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;)Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickPositiveListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mPositiveListener:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickPositiveListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->inputContent:Landroid/widget/EditText;

    return-object v0
.end method

.method private static getScreenWidth(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    const-string/jumbo v2, "window"

    .line 157
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 158
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 159
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    return v2
.end method

.method private initBtn()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mNegativeString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mPositiveString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->bottomLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->bottomLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mCancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mNegativeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mCancelBtn:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mEnsureBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mPositiveString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mEnsureBtn:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$2;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getBottomLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->bottomLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getCancelBtn()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mCancelBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getDialogBg()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->dialogBg:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getEnsureBtn()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mEnsureBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getInputContent()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->inputContent:Landroid/widget/EditText;

    return-object v0
.end method

.method public getMsg()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 76
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 77
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/alipay/mobile/nebula/R$layout;->h5_prompt_input_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "view":Landroid/view/View;
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->rootView:Landroid/view/View;

    .line 79
    sget v1, Lcom/alipay/mobile/nebula/R$id;->ensure:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mEnsureBtn:Landroid/widget/Button;

    .line 80
    sget v1, Lcom/alipay/mobile/nebula/R$id;->cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mCancelBtn:Landroid/widget/Button;

    .line 81
    sget v1, Lcom/alipay/mobile/nebula/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mTitle:Landroid/widget/TextView;

    .line 82
    sget v1, Lcom/alipay/mobile/nebula/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mMsg:Landroid/widget/TextView;

    .line 83
    sget v1, Lcom/alipay/mobile/nebula/R$id;->inputContent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->inputContent:Landroid/widget/EditText;

    .line 84
    sget v1, Lcom/alipay/mobile/nebula/R$id;->bottom_ll:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->bottomLayout:Landroid/widget/LinearLayout;

    .line 85
    sget v1, Lcom/alipay/mobile/nebula/R$id;->dialog_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->dialogBg:Landroid/widget/RelativeLayout;

    .line 87
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->sMsg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->sTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :goto_1
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mIsAutoCancel:Z

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->setCanceledOnTouchOutside(Z)V

    .line 100
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->initBtn()V

    .line 101
    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mMsg:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->sMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->sTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setNegativeListener(Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickNegativeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickNegativeListener;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mNegativeListener:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickNegativeListener;

    .line 216
    return-void
.end method

.method public setPositiveListener(Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickPositiveListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickPositiveListener;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mPositiveListener:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickPositiveListener;

    .line 209
    return-void
.end method

.method public show()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 148
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->rootView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->setContentView(Landroid/view/View;)V

    .line 149
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 150
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebula/R$dimen;->h5_prompt_height:I

    .line 151
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 152
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 153
    return-void
.end method
