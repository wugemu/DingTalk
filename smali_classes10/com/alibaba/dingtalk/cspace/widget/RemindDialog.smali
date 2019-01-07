.class public Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "RemindDialog.java"


# instance fields
.field protected e:Landroid/widget/LinearLayout;

.field protected f:Landroid/widget/LinearLayout;

.field protected g:Landroid/widget/TextView;

.field protected h:Landroid/widget/TextView;

.field protected i:Landroid/widget/TextView;

.field protected j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->a()V

    .line 31
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lfzs$g;->layout_online_edit_remind_dialog:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 36
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcms;->b(Landroid/content/Context;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v2, v3, 0x4

    .line 37
    .local v2, "width":I
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 38
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->setContentView(Landroid/view/View;)V

    .line 41
    sget v3, Lfzs$f;->ll_loading:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->e:Landroid/widget/LinearLayout;

    .line 42
    sget v3, Lfzs$f;->ll_content:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->f:Landroid/widget/LinearLayout;

    .line 44
    sget v3, Lfzs$f;->tv_title:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->g:Landroid/widget/TextView;

    .line 45
    sget v3, Lfzs$f;->tv_desc:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->h:Landroid/widget/TextView;

    .line 46
    sget v3, Lfzs$f;->tv_sure:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->j:Landroid/widget/TextView;

    .line 48
    sget v3, Lfzs$f;->tv_cancel:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->i:Landroid/widget/TextView;

    .line 49
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->i:Landroid/widget/TextView;

    new-instance v4, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog$1;

    invoke-direct {v4, p0}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog$1;-><init>(Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->j:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 111
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 59
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 60
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "sureText"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v4, 0x41c00000    # 24.0f

    .line 82
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->h:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 83
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->g:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 87
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v0, :cond_1

    .line 88
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    .restart local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 91
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 96
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->g:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 132
    return-void
.end method
