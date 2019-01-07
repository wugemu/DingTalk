.class final Lcom/alibaba/android/user/connection/activity/CirclePostActivity$8;
.super Ljava/lang/Object;
.source "CirclePostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/CirclePostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    .prologue
    .line 808
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$8;->a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

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
    .line 811
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 812
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "allow_check_origin_origin_picture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 813
    const-string/jumbo v1, "is_start_for_result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 814
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$8;->a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->d(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 815
    const-string/jumbo v1, "album_choose_num"

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$8;->a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->d(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 817
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$8;->a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    const/16 v3, 0x123

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;ILandroid/os/Bundle;)V

    .line 818
    return-void
.end method
