.class public Lcom/alibaba/android/projection/widget/ProjectionFailDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "ProjectionFailDialog.java"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field public a:Landroid/view/View$OnClickListener;

.field public b:Landroid/view/View$OnClickListener;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/alibaba/android/projection/widget/ProjectionFailDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/projection/widget/ProjectionFailDialog;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    sget v0, Legm$f;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/projection/widget/ProjectionFailDialog;-><init>(Landroid/content/Context;I)V

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 37
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

    .line 41
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionFailDialog;->requestWindowFeature(I)Z

    .line 42
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v1, Legm$d;->layout_focus_dialog_local_projection_fail:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionFailDialog;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/android/projection/widget/ProjectionFailDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 46
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 47
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 1054
    :cond_0
    sget v1, Legm$c;->sure_btn:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionFailDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFailDialog;->e:Landroid/widget/TextView;

    .line 1055
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFailDialog;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionFailDialog;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1056
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1057
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFailDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    :cond_1
    sget v1, Legm$c;->cancel_btn:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionFailDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFailDialog;->d:Landroid/widget/TextView;

    .line 1061
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFailDialog;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionFailDialog;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1062
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1063
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFailDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_2
    return-void
.end method
