.class final Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$1;
.super Ljava/lang/Object;
.source "LiveDetailsActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 120
    const-string/jumbo v0, "live"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getLiveStatistics failed, code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 112
    check-cast p1, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    .line 1115
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;)V

    .line 112
    return-void
.end method
