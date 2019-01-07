.class final Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$1;
.super Ljava/lang/Object;
.source "LiveDataActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;
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
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;

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
    .line 187
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

    .line 189
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 178
    check-cast p1, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    .line 1181
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;)Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    .line 1182
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;)V

    .line 178
    return-void
.end method
