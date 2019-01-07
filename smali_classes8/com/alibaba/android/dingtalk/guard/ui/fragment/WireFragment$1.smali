.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$1;
.super Ljava/lang/Object;
.source "WireFragment.java"

# interfaces
.implements Lbsy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 4
    .param p1, "result"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;Z)Z

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 65
    :cond_0
    if-eqz p1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$1$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;)V

    goto :goto_0
.end method
