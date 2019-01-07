.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$3;
.super Ljava/lang/Object;
.source "BeaconTestFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;

    .line 90
    .local v0, "data":Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;Lorg/altbeacon/beacon/Beacon;)V

    .line 93
    return-void
.end method
