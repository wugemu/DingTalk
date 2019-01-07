.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$4;
.super Ljava/lang/Object;
.source "LanMeshFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 194
    const-string/jumbo v2, "https://netmanager.dingtalk.com/ap/deviceSummary?deviceId=%d&corpId=%s&showmenu=false&dd_progress=false&from=nm"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 196
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 198
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->x()V

    .line 199
    return-void
.end method
