.class public Lcom/alipay/mobile/nebulacore/view/H5Dialog;
.super Ljava/lang/Object;
.source "H5Dialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;
    }
.end annotation


# static fields
.field private static final BUTTON_BOTTOM:I = 0x9


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResId:I

.field private mBuilder:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

.field private mCancel:Z

.field private mContext:Landroid/content/Context;

.field private mHasShow:Z

.field private mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageContentView:Landroid/view/View;

.field private mMessageResId:I

.field private mNegativeButton:Landroid/widget/Button;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPositiveButton:Landroid/widget/Button;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleResId:I

.field private mView:Landroid/view/View;

.field private promptEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mHasShow:Z

    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mNegativeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/mobile/nebulacore/view/H5Dialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .prologue
    .line 31
    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBackgroundResId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mMessageContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mCancel:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .prologue
    .line 31
    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mTitleResId:I

    return v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .prologue
    .line 31
    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mMessageResId:I

    return v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mPositiveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method

.method private static isLollipop()Z
    .locals 2

    .prologue
    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 7
    .param p0, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v6, 0x0

    .line 66
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 67
    .local v1, "listAdapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v4, 0x0

    .line 73
    .local v4, "totalHeight":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 74
    const/4 v5, 0x0

    invoke-interface {v1, v0, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 75
    .local v2, "listItem":Landroid/view/View;
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 76
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    .end local v2    # "listItem":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 80
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 81
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 126
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBuilder:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBuilder:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 113
    :cond_0
    return-object p0
.end method

.method public setBackgroundResource(I)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 2
    .param p1, "resId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    iput p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBackgroundResId:I

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBuilder:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBuilder:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    iget v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBackgroundResId:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->setBackgroundResource(I)V

    .line 121
    :cond_0
    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 2
    .param p1, "cancel"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mCancel:Z

    .line 274
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBuilder:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBuilder:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mCancel:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->setCanceledOnTouchOutside(Z)V

    .line 277
    :cond_0
    return-object p0
.end method

.method public setContentView(Landroid/view/View;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mMessageContentView:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBuilder:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBuilder:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mMessageContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->setContentView(Landroid/view/View;)V

    .line 105
    :cond_0
    return-object p0
.end method

.method public setMessage(I)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mMessageResId:I

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBuilder:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBuilder:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->setMessage(I)V

    .line 149
    :cond_0
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mMessage:Ljava/lang/CharSequence;

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBuilder:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBuilder:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->setMessage(Ljava/lang/CharSequence;)V

    .line 157
    :cond_0
    return-object p0
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 4
    .param p1, "resId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 215
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mNegativeButton:Landroid/widget/Button;

    .line 216
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mNegativeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mNegativeButton:Landroid/widget/Button;

    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_dialog_button:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mNegativeButton:Landroid/widget/Button;

    const/16 v1, 0xde

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mNegativeButton:Landroid/widget/Button;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mNegativeButton:Landroid/widget/Button;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    invoke-static {}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->isLollipop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mNegativeButton:Landroid/widget/Button;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 231
    :cond_0
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 253
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mNegativeButton:Landroid/widget/Button;

    .line 254
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mNegativeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mNegativeButton:Landroid/widget/Button;

    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_dialog_button:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mNegativeButton:Landroid/widget/Button;

    const/16 v1, 0xde

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mNegativeButton:Landroid/widget/Button;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mNegativeButton:Landroid/widget/Button;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    invoke-static {}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->isLollipop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mNegativeButton:Landroid/widget/Button;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 269
    :cond_0
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 0
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 282
    return-object p0
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 8
    .param p1, "resId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, -0x2

    .line 161
    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mPositiveButton:Landroid/widget/Button;

    .line 162
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 166
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mPositiveButton:Landroid/widget/Button;

    sget v3, Lcom/alipay/mobile/nebula/R$drawable;->h5_dialog_button:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 168
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mPositiveButton:Landroid/widget/Button;

    const/16 v3, 0xff

    const/16 v4, 0x23

    const/16 v5, 0x9f

    const/16 v6, 0xf2

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 169
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setText(I)V

    .line 170
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mPositiveButton:Landroid/widget/Button;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setGravity(I)V

    .line 171
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mPositiveButton:Landroid/widget/Button;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 172
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 176
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mContext:Landroid/content/Context;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mContext:Landroid/content/Context;

    const/high16 v5, 0x41400000    # 12.0f

    .line 177
    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mContext:Landroid/content/Context;

    const/high16 v6, 0x41100000    # 9.0f

    .line 178
    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 176
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 179
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-static {}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->isLollipop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mPositiveButton:Landroid/widget/Button;

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 184
    :cond_0
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, -0x2

    .line 188
    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mPositiveButton:Landroid/widget/Button;

    .line 189
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 193
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mPositiveButton:Landroid/widget/Button;

    sget v3, Lcom/alipay/mobile/nebula/R$drawable;->h5_dialog_button:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 195
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mPositiveButton:Landroid/widget/Button;

    const/16 v3, 0xff

    const/16 v4, 0x23

    const/16 v5, 0x9f

    const/16 v6, 0xf2

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 196
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mPositiveButton:Landroid/widget/Button;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setGravity(I)V

    .line 198
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mPositiveButton:Landroid/widget/Button;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 199
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 203
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mContext:Landroid/content/Context;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mContext:Landroid/content/Context;

    const/high16 v5, 0x41400000    # 12.0f

    .line 204
    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mContext:Landroid/content/Context;

    const/high16 v6, 0x41100000    # 9.0f

    .line 205
    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 203
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 206
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    invoke-static {}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->isLollipop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mPositiveButton:Landroid/widget/Button;

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 211
    :cond_0
    return-object p0
.end method

.method public setPrompt(ILandroid/view/View$OnClickListener;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, -0x2

    .line 235
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->promptEdit:Landroid/widget/EditText;

    .line 236
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->promptEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->promptEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(I)V

    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->promptEdit:Landroid/widget/EditText;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->promptEdit:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->promptEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    invoke-static {}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->isLollipop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->promptEdit:Landroid/widget/EditText;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 249
    :cond_0
    return-object p0
.end method

.method public setTitle(I)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mTitleResId:I

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBuilder:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBuilder:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->setTitle(I)V

    .line 133
    :cond_0
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mTitle:Ljava/lang/CharSequence;

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBuilder:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBuilder:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    :cond_0
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mView:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBuilder:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBuilder:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->setView(Landroid/view/View;)V

    .line 97
    :cond_0
    return-object p0
.end method

.method public show()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mHasShow:Z

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;-><init>(Lcom/alipay/mobile/nebulacore/view/H5Dialog;Lcom/alipay/mobile/nebulacore/view/H5Dialog$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mBuilder:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    .line 89
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mHasShow:Z

    .line 90
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
