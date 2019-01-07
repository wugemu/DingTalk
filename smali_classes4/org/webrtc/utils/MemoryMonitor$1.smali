.class Lorg/webrtc/utils/MemoryMonitor$1;
.super Ljava/lang/Object;
.source "MemoryMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/utils/MemoryMonitor;->scheduleMemoryUtilizationTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/utils/MemoryMonitor;


# direct methods
.method constructor <init>(Lorg/webrtc/utils/MemoryMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/utils/MemoryMonitor;

    .prologue
    .line 140
    iput-object p1, p0, Lorg/webrtc/utils/MemoryMonitor$1;->this$0:Lorg/webrtc/utils/MemoryMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/webrtc/utils/MemoryMonitor$1;->this$0:Lorg/webrtc/utils/MemoryMonitor;

    invoke-static {v0}, Lorg/webrtc/utils/MemoryMonitor;->access$000(Lorg/webrtc/utils/MemoryMonitor;)V

    .line 144
    return-void
.end method
