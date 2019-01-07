.class public Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "CommonDialog.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Landroid/view/View$OnClickListener;

.field private h:Lcom/alibaba/android/dingtalk/guard/ui/widget/RotateIconFontTextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Ljava/lang/String;

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    sget v0, Lbrx$h;->DeviceTheme_SubTransparent:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 55
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->a:Landroid/content/Context;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->g:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 145
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->b:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->l:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->l:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    iget v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->s:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setImageResource(I)V

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->l:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->k:Landroid/widget/ImageView;

    iget v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "imgId"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->s:I

    .line 204
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->s:I

    if-lez v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->b()V

    .line 207
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "subTitle"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->r:Ljava/lang/String;

    .line 197
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->a()V

    .line 200
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->dismiss()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->a:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->requestWindowFeature(I)Z

    .line 68
    sget v0, Lbrx$e;->dialog_device_common:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->setContentView(I)V

    .line 1074
    sget v0, Lbrx$d;->progress:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RotateIconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->h:Lcom/alibaba/android/dingtalk/guard/ui/widget/RotateIconFontTextView;

    .line 1075
    sget v0, Lbrx$d;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->i:Landroid/widget/TextView;

    .line 1076
    sget v0, Lbrx$d;->tv_sub_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->j:Landroid/widget/TextView;

    .line 1078
    sget v0, Lbrx$d;->image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->k:Landroid/widget/ImageView;

    .line 1079
    sget v0, Lbrx$d;->image_round:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->l:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    .line 1081
    sget v0, Lbrx$d;->layout_operate:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->m:Landroid/view/View;

    .line 1082
    sget v0, Lbrx$d;->tv_single:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->n:Landroid/widget/TextView;

    .line 1083
    sget v0, Lbrx$d;->layout_double:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->o:Landroid/view/View;

    .line 1084
    sget v0, Lbrx$d;->tv_left:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->p:Landroid/widget/TextView;

    .line 1085
    sget v0, Lbrx$d;->tv_right:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->q:Landroid/widget/TextView;

    .line 1087
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->m:Landroid/view/View;

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->b:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1088
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->c:Z

    if-eqz v0, :cond_2

    .line 1089
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1090
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1096
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->h:Lcom/alibaba/android/dingtalk/guard/ui/widget/RotateIconFontTextView;

    iget-boolean v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->d:Z

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RotateIconFontTextView;->setVisibility(I)V

    .line 1097
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1098
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->a()V

    .line 1099
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->s:I

    if-lez v0, :cond_0

    .line 1100
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->b()V

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1104
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1106
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->n:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1115
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->p:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog$2;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1124
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->q:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog$3;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void

    :cond_1
    move v0, v2

    .line 1087
    goto :goto_0

    .line 1092
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1093
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v2, v1

    .line 1096
    goto :goto_2
.end method
