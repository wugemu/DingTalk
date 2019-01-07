.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2$2;
.super Ljava/lang/Object;
.source "TCPFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;->a(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->r()V

    .line 93
    :cond_0
    return-void
.end method
