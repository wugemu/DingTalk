.class public Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "RatingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/RatingBar;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget v0, Lcig$k;->SelectDateDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;-><init>(Landroid/content/Context;I)V

    .line 52
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 57
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 58
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcig$f;->view_root:I

    if-ne v0, v1, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->dismiss()V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcig$f;->rl_content:I

    if-eq v0, v1, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcig$f;->iv_close:I

    if-ne v0, v1, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->dismiss()V

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcig$f;->tv_submit:I

    if-ne v0, v1, :cond_0

    .line 1119
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->dismiss()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 62
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget v0, Lcig$h;->dialog_rating:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcig$k;->SelectDateDialogAnimation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 68
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->setCanceledOnTouchOutside(Z)V

    .line 1101
    sget v0, Lcig$f;->view_root:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->a:Landroid/view/View;

    .line 1102
    sget v0, Lcig$f;->rl_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->b:Landroid/view/View;

    .line 1103
    sget v0, Lcig$f;->iv_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->c:Landroid/widget/ImageView;

    .line 1104
    sget v0, Lcig$f;->tv_submit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->d:Landroid/widget/TextView;

    .line 1105
    sget v0, Lcig$f;->rating_bar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->e:Landroid/widget/RatingBar;

    .line 1106
    sget v0, Lcig$f;->et_evaluate:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->f:Landroid/widget/EditText;

    .line 1107
    sget v0, Lcig$f;->cb_anonymous:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->g:Landroid/widget/CheckBox;

    .line 1111
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1112
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1113
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1114
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public show()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 88
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->show()V

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/RatingDialog;->e:Landroid/widget/RatingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 90
    return-void
.end method
