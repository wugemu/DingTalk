.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$1$1;
.super Ljava/lang/Object;
.source "GroupFoundFragment.java"

# interfaces
.implements Lbsy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$1;->a(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$1;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$1$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$1;

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
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$1$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 71
    :cond_0
    if-nez p1, :cond_1

    .line 72
    sget v0, Lbrx$g;->dt_device_bind_fail_alert:I

    invoke-static {v0}, Leda;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$1$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;Z)V

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$1$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;Z)Z

    goto :goto_0
.end method
