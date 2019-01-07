.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$36;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 2091
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$36;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    iput p2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$36;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2094
    iget v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$36;->a:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$36;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->s(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/ding/base/objects/DingTabFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2095
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$36;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->s(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/ding/base/objects/DingTabFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingTabFragment;->b()V

    .line 2097
    :cond_0
    iget v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$36;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2098
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Z)V

    .line 2107
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$36;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->u(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$36;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setCurrentItem(IZ)V

    .line 2108
    return-void

    .line 2100
    :cond_1
    iget v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$36;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2101
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$36;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->t(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2102
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$36;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->t(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 2105
    :cond_2
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Z)V

    goto :goto_0
.end method
