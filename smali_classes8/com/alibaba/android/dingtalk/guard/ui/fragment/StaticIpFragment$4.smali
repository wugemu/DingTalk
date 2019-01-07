.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$4;
.super Ljava/lang/Object;
.source "StaticIpFragment.java"

# interfaces
.implements Lbsy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

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
    .line 348
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 351
    :cond_0
    if-eqz p1, :cond_3

    .line 352
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;I)V

    .line 353
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$4$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$4$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$4;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    sget v0, Lbrx$g;->dt_device_config_reset_wifi_success:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 367
    :cond_2
    sget v0, Lbrx$g;->dt_smart_device_config_wire_net_connect_success:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 371
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 372
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 374
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;I)V

    goto :goto_0
.end method
