.class final Lcom/alibaba/android/user/settings/fragment/MineFragment$1;
.super Ljava/lang/Object;
.source "MineFragment.java"

# interfaces
.implements Lcom/alibaba/android/user/namecard/widget/NameCardView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/fragment/MineFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/fragment/MineFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$1;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 251
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$1;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$1;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->d(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lflz;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)V

    .line 252
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 240
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$1;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    const-string/jumbo v1, "from=facetoface"

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Lcom/alibaba/android/user/settings/fragment/MineFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    const-string/jumbo v0, "CardSee"

    const/4 v1, 0x0

    const-string/jumbo v2, "a2o5v.12302328.1.CardSee"

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 243
    const-string/jumbo v0, "from=facetoface"

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$1;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$1;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Ljava/lang/String;Landroid/app/Activity;Z)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$1;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$1;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->b(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lcom/alibaba/android/user/model/SWPersonObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$1;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->c(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lflz;->a(Landroid/app/Activity;Lcom/alibaba/android/user/model/SWPersonObject;Z)V

    goto :goto_0
.end method
