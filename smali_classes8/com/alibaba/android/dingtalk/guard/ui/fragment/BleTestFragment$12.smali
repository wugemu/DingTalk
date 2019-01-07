.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$12;
.super Ljava/lang/Object;
.source "BleTestFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$12;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 118
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$12;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$b;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$b;->a(I)Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;

    move-result-object v0

    .line 119
    .local v0, "data":Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;
    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$12;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;)V

    .line 122
    :cond_0
    return-void
.end method
