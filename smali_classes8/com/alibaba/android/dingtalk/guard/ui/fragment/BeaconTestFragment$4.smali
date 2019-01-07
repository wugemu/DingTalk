.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$4;
.super Ljava/lang/Object;
.source "BeaconTestFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 98
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;Z)Z

    .line 102
    const-string/jumbo v0, "\u5f00\u59cb\u8bb0\u5f55"

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 103
    return-void
.end method
