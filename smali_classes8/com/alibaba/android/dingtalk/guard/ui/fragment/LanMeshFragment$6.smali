.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$6;
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
    .line 250
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$6;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 253
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$6;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->d(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$6;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;Z)Z

    .line 257
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$6$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$6$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$6;)V

    .line 280
    .local v0, "listener":Lcma;
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$6;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;
    check-cast v0, Lcma;

    .line 281
    .restart local v0    # "listener":Lcma;
    invoke-static {}, Lbnc;->a()Lbnc;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$6;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lbnc;->b(Ljava/lang/String;Lcma;)V

    .line 282
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "LanMeshFragment"

    const-string/jumbo v3, "alpha_manual_mesh_retry_click"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
