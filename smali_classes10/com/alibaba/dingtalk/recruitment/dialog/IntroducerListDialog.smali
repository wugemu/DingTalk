.class public Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "IntroducerListDialog.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:Lguq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lguq;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resumeObject"    # Lguq;

    .prologue
    .line 34
    sget v0, Lgtt$g;->RecruitmentFullScreenDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 35
    iput-object p2, p0, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->d:Lguq;

    .line 36
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 40
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget v0, Lgtt$e;->recruitment_dialog_introducer_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lgtt$g;->recruitment_anim_bottom_in_out:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 46
    :cond_0
    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->setCanceledOnTouchOutside(Z)V

    .line 1053
    sget v0, Lgtt$d;->tv_introducer_count:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->a:Landroid/widget/TextView;

    .line 1054
    sget v0, Lgtt$d;->iv_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1055
    sget v0, Lgtt$d;->rv_introducer:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->c:Landroid/support/v7/widget/RecyclerView;

    .line 1059
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog$1;-><init>(Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1068
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->d:Lguq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->d:Lguq;

    .line 1083
    iget-object v0, v0, Lguq;->i:Ljava/util/List;

    .line 1069
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->d:Lguq;

    .line 2083
    iget-object v0, v0, Lguq;->i:Ljava/util/List;

    .line 1070
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1071
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->dismiss()V

    .line 1072
    :goto_0
    return-void

    .line 1075
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->a:Landroid/widget/TextView;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lgtt$f;->dt_recruitment_recommend_person:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "("

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->d:Lguq;

    .line 3083
    iget-object v3, v3, Lguq;->i:Ljava/util/List;

    .line 1077
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ")"

    aput-object v3, v1, v2

    .line 1075
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1080
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lgtu;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;->d:Lguq;

    .line 4083
    iget-object v3, v3, Lguq;->i:Ljava/util/List;

    .line 1080
    invoke-direct {v1, v2, v3}, Lgtu;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0
.end method
