.class Lorg/webrtc/utils/CpuMonitor$ProcStat;
.super Ljava/lang/Object;
.source "CpuMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/utils/CpuMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcStat"
.end annotation


# instance fields
.field final idleTime:J

.field final systemTime:J

.field final userTime:J


# direct methods
.method constructor <init>(JJJ)V
    .locals 1
    .param p1, "userTime"    # J
    .param p3, "systemTime"    # J
    .param p5, "idleTime"    # J

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-wide p1, p0, Lorg/webrtc/utils/CpuMonitor$ProcStat;->userTime:J

    .line 109
    iput-wide p3, p0, Lorg/webrtc/utils/CpuMonitor$ProcStat;->systemTime:J

    .line 110
    iput-wide p5, p0, Lorg/webrtc/utils/CpuMonitor$ProcStat;->idleTime:J

    .line 111
    return-void
.end method
