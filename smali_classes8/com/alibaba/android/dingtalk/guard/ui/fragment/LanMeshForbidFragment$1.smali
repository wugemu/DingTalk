.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment$1;
.super Ljava/lang/Object;
.source "LanMeshForbidFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;)I

    move-result v0

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_MESH_FAIL_NO_C1:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget v1, v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mCode:I

    if-ne v0, v1, :cond_0

    .line 94
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->j()Z

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a(Landroid/app/Activity;)V

    .line 96
    const-string/jumbo v0, "LanMeshForbidFragment"

    const-string/jumbo v1, "alpha_no_wan_click"

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;)I

    move-result v0

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_MESH_FAIL_NO_ADMIN_CORP_IDS:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget v1, v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mCode:I

    if-ne v0, v1, :cond_1

    .line 99
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->j()Z

    .line 100
    const-string/jumbo v0, "LanMeshForbidFragment"

    const-string/jumbo v1, "alpha_no_auth_click"

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->x()V

    .line 103
    return-void
.end method
