.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18;
.super Ljava/lang/Object;
.source "BleTestFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 168
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

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
    .line 171
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->g(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->h(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->g(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;

    .line 175
    .local v0, "data":Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;
    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18;Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;)V

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
