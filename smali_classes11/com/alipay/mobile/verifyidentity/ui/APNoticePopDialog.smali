.class public Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;
.super Landroid/app/Dialog;
.source "APNoticePopDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickNegativeListener;,
        Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickPositiveListener;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

.field private g:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

.field private h:Ljava/lang/CharSequence;

.field private i:Ljava/lang/CharSequence;

.field private j:Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickPositiveListener;

.field private k:Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickNegativeListener;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/text/Spanned;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 45
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/text/Spanned;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/text/Spanned;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 50
    sget v0, Ligh$i;->dialog_with_no_title_style_trans_bg:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->p:Z

    .line 51
    invoke-direct/range {p0 .. p6}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 56
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 61
    sget v0, Ligh$i;->dialog_with_no_title_style_trans_bg:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->p:Z

    .line 62
    invoke-direct/range {p0 .. p6}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 63
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->a:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->h:Ljava/lang/CharSequence;

    .line 68
    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->i:Ljava/lang/CharSequence;

    .line 69
    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->l:Ljava/lang/String;

    .line 70
    iput-object p5, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->m:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->b:Landroid/view/LayoutInflater;

    .line 72
    iput-boolean p6, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->p:Z

    .line 73
    return-void
.end method

.method private static a(Lcom/alipay/mobile/verifyidentity/ui/APTextView;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setVisibility(I)V

    .line 115
    :goto_0
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setVisibility(I)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;)Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickNegativeListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->k:Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickNegativeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;)Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickPositiveListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->j:Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickPositiveListener;

    return-object v0
.end method


# virtual methods
.method public getCancelBtn()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->d:Landroid/widget/Button;

    return-object v0
.end method

.method public getDialogBg()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->o:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getEnsureBtn()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->e:Landroid/widget/Button;

    return-object v0
.end method

.method public getMsg()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->g:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->f:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v3, 0x8

    .line 77
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->b:Landroid/view/LayoutInflater;

    sget v1, Ligh$g;->notice_dialog_pop:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->c:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->c:Landroid/view/View;

    sget v1, Ligh$f;->ensure:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->e:Landroid/widget/Button;

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->c:Landroid/view/View;

    sget v1, Ligh$f;->cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->d:Landroid/widget/Button;

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->c:Landroid/view/View;

    sget v1, Ligh$f;->titleTip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->f:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->c:Landroid/view/View;

    sget v1, Ligh$f;->message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->g:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->c:Landroid/view/View;

    sget v1, Ligh$f;->button_ll:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->n:Landroid/widget/LinearLayout;

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->c:Landroid/view/View;

    sget v1, Ligh$f;->dialog_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->o:Landroid/widget/RelativeLayout;

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->f:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->h:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->a(Lcom/alipay/mobile/verifyidentity/ui/APTextView;Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->g:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->i:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->a(Lcom/alipay/mobile/verifyidentity/ui/APTextView;Ljava/lang/CharSequence;)V

    .line 88
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->p:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->setCanceledOnTouchOutside(Z)V

    .line 1118
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1120
    :goto_0
    return-void

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1124
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1125
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1126
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->d:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1128
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->d:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$1;-><init>(Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1137
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1138
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1139
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->e:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1141
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->e:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$2;-><init>(Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setNegativeListener(Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickNegativeListener;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->k:Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickNegativeListener;

    .line 190
    return-void
.end method

.method public setNegativeTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->d:Landroid/widget/Button;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 102
    :cond_0
    return-void
.end method

.method public setPositiveListener(Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickPositiveListener;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->j:Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickPositiveListener;

    .line 186
    return-void
.end method

.method public setPositiveTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->e:Landroid/widget/Button;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 96
    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->setContentView(Landroid/view/View;)V

    .line 156
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->a:Landroid/content/Context;

    .line 1162
    const-string/jumbo v2, "window"

    .line 1163
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1164
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1165
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 157
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Ligh$d;->notice_dialog_width_margin_window:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 158
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 159
    return-void
.end method
