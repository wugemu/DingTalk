.class final Ldmx$5;
.super Ljava/lang/Object;
.source "LuckyTimePlanDataCenter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldmx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldmx;


# direct methods
.method constructor <init>(Ldmx;)V
    .locals 0
    .param p1, "this$0"    # Ldmx;

    .prologue
    .line 255
    iput-object p1, p0, Ldmx$5;->a:Ldmx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 255
    check-cast p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    check-cast p2, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    .line 1258
    iget-wide v0, p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->timePlan:J

    iget-wide v2, p2, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->timePlan:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 255
    return v0
.end method
