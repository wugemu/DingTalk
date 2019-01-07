.class final Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;
.super Ljava/lang/Object;
.source "SingleChatTaskActivity.java"

# interfaces
.implements Lbbe$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 101
    .line 2114
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 101
    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->finish()V

    .line 80
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "taskNum"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v1, 0xb

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 119
    .line 3114
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 119
    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 122
    :cond_0
    if-nez p1, :cond_1

    .line 123
    const-string/jumbo p1, ""

    .line 125
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 126
    invoke-static {p1, v1, v4}, Lbka;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    .line 128
    :cond_2
    if-gtz p2, :cond_4

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    sget v1, Laxp$i;->dt_im_todo_tasks_vc_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->setTitle(I)V

    .line 134
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    sget v2, Laxp$i;->dt_im_todo_tasks_vc_subtitle_at:I

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->b(Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;)Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;

    move-result-object v0

    .line 4106
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$1;

    invoke-direct {v2, v0, p1}, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$1;-><init>(Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxp$i;->dt_im_todo_tasks_vc_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "("

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ")"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 152
    .line 5114
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 152
    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->c(Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->d(Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->b(Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;)Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;

    move-result-object v0

    .line 5116
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$2;

    invoke-direct {v2, v0, p1}, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$2;-><init>(Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 93
    .line 1114
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 93
    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->showLoadingDialog()V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    return-object v0
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 143
    .line 4114
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 143
    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->c(Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->d(Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public final bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
