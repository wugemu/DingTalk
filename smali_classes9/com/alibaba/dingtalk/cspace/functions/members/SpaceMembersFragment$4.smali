.class final Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$4;
.super Ljava/lang/Object;
.source "SpaceMembersFragment.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "letter"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->b(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)Lgfd;

    move-result-object v2

    .line 1260
    iget-object v1, v2, Lgfd;->e:Ljava/util/Map;

    .line 136
    .local v1, "letterIndexMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 140
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->b(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)Lgfd;

    move-result-object v2

    invoke-virtual {v2}, Lgfd;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->c(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 144
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 146
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->e(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->d(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->e(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->d(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
