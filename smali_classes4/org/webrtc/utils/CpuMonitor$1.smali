.class Lorg/webrtc/utils/CpuMonitor$1;
.super Ljava/lang/Object;
.source "CpuMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/utils/CpuMonitor;->scheduleCpuUtilizationTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/utils/CpuMonitor;


# direct methods
.method constructor <init>(Lorg/webrtc/utils/CpuMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/utils/CpuMonitor;

    .prologue
    .line 207
    iput-object p1, p0, Lorg/webrtc/utils/CpuMonitor$1;->this$0:Lorg/webrtc/utils/CpuMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/webrtc/utils/CpuMonitor$1;->this$0:Lorg/webrtc/utils/CpuMonitor;

    invoke-static {v0}, Lorg/webrtc/utils/CpuMonitor;->access$000(Lorg/webrtc/utils/CpuMonitor;)V

    .line 211
    return-void
.end method
