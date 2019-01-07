.class public Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "ProjectionDetailFailDialog.java"


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field public a:Landroid/view/View$OnClickListener;

.field public b:Landroid/view/View$OnClickListener;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget v0, Legm$f;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;-><init>(Landroid/content/Context;I)V

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 47
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 51
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->requestWindowFeature(I)Z

    .line 52
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget v1, Legm$d;->layout_focus_dialog_local_projection_detail_fail:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 56
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 57
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 1064
    :cond_0
    sget v1, Legm$c;->sure_btn:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->j:Landroid/widget/TextView;

    .line 1065
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1066
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1067
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    :cond_1
    sget v1, Legm$c;->cancel_btn:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->i:Landroid/widget/TextView;

    .line 1071
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1072
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1073
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    :cond_2
    sget v1, Legm$c;->fail_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->k:Landroid/widget/TextView;

    .line 1076
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1077
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    :cond_3
    sget v1, Legm$c;->fail_image:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->n:Landroid/widget/ImageView;

    .line 1080
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 1081
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->n:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1083
    :cond_4
    sget v1, Legm$c;->fail_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->l:Landroid/widget/TextView;

    .line 1084
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1085
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    :cond_5
    sget v1, Legm$c;->wifi_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->m:Landroid/widget/TextView;

    .line 1088
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1089
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1090
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->m:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    :cond_6
    return-void
.end method
