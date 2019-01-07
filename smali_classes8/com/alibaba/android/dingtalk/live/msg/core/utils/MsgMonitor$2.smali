.class final Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$2;
.super Lfk;
.source "MsgMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor;->commitMonitor(Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfk",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$p:Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;)V
    .locals 4

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$2;->val$p:Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;

    invoke-direct {p0}, Lfk;-><init>()V

    .line 42
    const-string/jumbo v0, "MKT_MEASURE_FLOW"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$2;->val$p:Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->alongTime:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string/jumbo v0, "MKT_MEASURE_NET"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$2;->val$p:Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->netTime:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v0, "MKT_MEASURE_PACK"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$2;->val$p:Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->packTime:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method
