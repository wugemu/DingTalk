.class public Lcom/alibaba/doraemon/health/BarrierPolicy;
.super Ljava/lang/Object;
.source "BarrierPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/health/BarrierPolicy$Builder;
    }
.end annotation


# static fields
.field public static final ENABLE_CPU_TIME_REG_BARRIER:I = 0x10000

.field public static final ENABLE_DORAEMONTHREAD_BARRIER:I = 0x40000

.field public static final ENABLE_IMGE_BARRIER:I = 0x2

.field public static final ENABLE_LARGE_TOTAL_TRAFFIC_BARRIER:I = 0x800

.field public static final ENABLE_LARGE_TRAFFIC_BARRIER:I = 0x200

.field public static final ENABLE_POWER_BARRIER:I = 0x8

.field public static final ENABLE_REPEAT_OPEN_FILE_BARRIER:I = 0x1000

.field public static final ENABLE_REPEAT_TRAFFIC_BARRIER:I = 0x400

.field public static final ENABLE_SOCKET_BARRIER:I = 0x100

.field public static final ENABLE_TB_BARRIER:I = 0x1

.field public static final ENABLE_THREAD_WHITE_LIST_BARRIER:I = 0x20000

.field public static final ENABLE_TRAFFIC_BARRIER:I = 0x4

.field public static final PENALTY_DEATH:I = 0x40

.field public static final PENALTY_DIALOG:I = 0x20

.field public static final PENALTY_LOG:I = 0x10


# instance fields
.field final mask:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "mask"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/alibaba/doraemon/health/BarrierPolicy;->mask:I

    .line 68
    return-void
.end method

.method synthetic constructor <init>(ILcom/alibaba/doraemon/health/BarrierPolicy$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/alibaba/doraemon/health/BarrierPolicy$1;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/health/BarrierPolicy;-><init>(I)V

    return-void
.end method


# virtual methods
.method public mask()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/alibaba/doraemon/health/BarrierPolicy;->mask:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[BarrierPolicy; mask="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alibaba/doraemon/health/BarrierPolicy;->mask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
