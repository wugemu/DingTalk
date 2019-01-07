.class public Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "ProjectionSsidAlertDialog.java"


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field public a:Landroid/view/View$OnClickListener;

.field public b:Landroid/view/View$OnClickListener;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget v0, Legm$f;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 48
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 52
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->requestWindowFeature(I)Z

    .line 53
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget v1, Legm$d;->layout_focus_dialog_ssid_alert:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 57
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 58
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 1065
    :cond_0
    sget v1, Legm$c;->sure_btn:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->k:Landroid/widget/TextView;

    .line 1066
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1067
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1068
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    :cond_1
    sget v1, Legm$c;->cancel_btn:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->j:Landroid/widget/TextView;

    .line 1072
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1073
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1074
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1076
    :cond_2
    sget v1, Legm$c;->fail_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->l:Landroid/widget/TextView;

    .line 1077
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1078
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    :cond_3
    sget v1, Legm$c;->top_image:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->o:Landroid/widget/ImageView;

    .line 1081
    sget v1, Legm$c;->fail_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->m:Landroid/widget/TextView;

    .line 1082
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 1083
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->o:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1087
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1088
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1090
    :cond_4
    sget v1, Legm$c;->wifi_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->n:Landroid/widget/TextView;

    .line 1091
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1092
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->n:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1093
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->n:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    :cond_5
    return-void

    .line 1085
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->o:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
