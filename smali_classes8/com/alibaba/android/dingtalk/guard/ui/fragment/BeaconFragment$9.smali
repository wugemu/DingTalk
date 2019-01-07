.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$9;
.super Ljava/lang/Object;
.source "BeaconFragment.java"

# interfaces
.implements Lbtc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$9;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 280
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$9;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$9;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->h(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/16 v0, 0x3e8

    :goto_0
    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;I)V

    .line 281
    return-void

    .line 280
    :cond_0
    const/16 v0, 0x9c4

    goto :goto_0
.end method
