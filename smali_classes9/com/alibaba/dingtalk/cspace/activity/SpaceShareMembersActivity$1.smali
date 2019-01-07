.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$1;
.super Ljava/lang/Object;
.source "SpaceShareMembersActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 257
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 259
    .local v0, "position":I
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 260
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->k:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->e(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 263
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->k:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->e(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$a;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 265
    .end local v0    # "position":I
    :cond_0
    return-void
.end method
