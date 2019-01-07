.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;
.super Ljava/lang/Object;
.source "TCPFragment.java"

# interfaces
.implements Lbsy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 6
    .param p1, "result"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 74
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 75
    .local v0, "activity":Landroid/app/Activity;
    if-eqz p1, :cond_2

    .line 76
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "TCPFragment"

    const-string/jumbo v3, "oa_bravo_attendance_tcp_success_click"

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;I)I

    .line 78
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 87
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2$2;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 97
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "TCPFragment"

    const-string/jumbo v3, "oa_bravo_attendance_tcp_fail_click"

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 98
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;I)I

    .line 99
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2$3;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 108
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
