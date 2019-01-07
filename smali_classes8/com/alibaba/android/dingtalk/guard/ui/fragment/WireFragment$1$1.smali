.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$1$1;
.super Ljava/lang/Object;
.source "WireFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$1;->a(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$1;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$1$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$1$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$1$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->r()V

    .line 74
    :cond_0
    return-void
.end method
