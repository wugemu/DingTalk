.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$2;
.super Ljava/lang/Object;
.source "BeaconFragment.java"

# interfaces
.implements Lbsy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;
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
    .line 686
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 2
    .param p1, "result"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 689
    if-eqz p1, :cond_0

    .line 690
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->d(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;Z)Z

    .line 691
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->g(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V

    .line 693
    :cond_0
    return-void
.end method
