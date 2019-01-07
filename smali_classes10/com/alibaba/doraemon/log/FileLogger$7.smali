.class Lcom/alibaba/doraemon/log/FileLogger$7;
.super Ljava/lang/Object;
.source "FileLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/log/FileLogger;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/log/FileLogger;

.field final synthetic val$finalMemSize:I

.field final synthetic val$finalMemoryFile:Landroid/os/MemoryFile;

.field final synthetic val$logContext:Lcom/alibaba/doraemon/log/FileLogger$LogContext;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/log/FileLogger;Landroid/os/MemoryFile;ILcom/alibaba/doraemon/log/FileLogger$LogContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/log/FileLogger;

    .prologue
    .line 738
    iput-object p1, p0, Lcom/alibaba/doraemon/log/FileLogger$7;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    iput-object p2, p0, Lcom/alibaba/doraemon/log/FileLogger$7;->val$finalMemoryFile:Landroid/os/MemoryFile;

    iput p3, p0, Lcom/alibaba/doraemon/log/FileLogger$7;->val$finalMemSize:I

    iput-object p4, p0, Lcom/alibaba/doraemon/log/FileLogger$7;->val$logContext:Lcom/alibaba/doraemon/log/FileLogger$LogContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 741
    iget-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger$7;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger$7;->val$finalMemoryFile:Landroid/os/MemoryFile;

    iget v2, p0, Lcom/alibaba/doraemon/log/FileLogger$7;->val$finalMemSize:I

    iget-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger$7;->val$logContext:Lcom/alibaba/doraemon/log/FileLogger$LogContext;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/doraemon/log/FileLogger;->access$700(Lcom/alibaba/doraemon/log/FileLogger;Landroid/os/MemoryFile;ILcom/alibaba/doraemon/log/FileLogger$LogContext;)V

    .line 742
    return-void
.end method
