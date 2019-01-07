.class final Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$2;
.super Ljava/lang/Object;
.source "CirclePostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$2;->b:Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 396
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$2;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$2;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .line 398
    .local v0, "orgInfoObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;
    if-eqz v0, :cond_0

    .line 399
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$2;->b:Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->c(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$2;->b:Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->d(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)J

    move-result-wide v2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$2;->b:Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;J)J

    .line 402
    const-string/jumbo v1, "circle_key_who_can_see_org_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$2;->b:Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->d(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcpk;->b(Ljava/lang/String;J)V

    .line 405
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$2;->b:Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;Ljava/util/List;)Ljava/util/List;

    .line 406
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$2;->b:Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->e(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$2;->b:Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->e(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 408
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$2;->b:Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->f(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    .end local v0    # "orgInfoObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;
    :cond_0
    return-void
.end method
