.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment$2;
.super Ljava/lang/Object;
.source "LanWaitingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->t()V

    .line 118
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "LanWaitingFragment"

    const-string/jumbo v2, "alpha_config_net_click"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 119
    return-void
.end method
