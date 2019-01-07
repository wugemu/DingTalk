.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7$1;
.super Ljava/lang/Object;
.source "WifiFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;->a(ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->r()V

    .line 381
    :cond_0
    return-void
.end method
