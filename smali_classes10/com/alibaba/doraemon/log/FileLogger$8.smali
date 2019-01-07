.class Lcom/alibaba/doraemon/log/FileLogger$8;
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


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/log/FileLogger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/log/FileLogger;

    .prologue
    .line 751
    iput-object p1, p0, Lcom/alibaba/doraemon/log/FileLogger$8;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 754
    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger$8;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-static {v1}, Lcom/alibaba/doraemon/log/FileLogger;->access$800(Lcom/alibaba/doraemon/log/FileLogger;)Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger$8;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-static {v1}, Lcom/alibaba/doraemon/log/FileLogger;->access$800(Lcom/alibaba/doraemon/log/FileLogger;)Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_0

    .line 756
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger$8;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-static {v1}, Lcom/alibaba/doraemon/log/FileLogger;->access$800(Lcom/alibaba/doraemon/log/FileLogger;)Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/doraemon/log/FileLogger$OpenedFile;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger$8;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-static {v1}, Lcom/alibaba/doraemon/log/FileLogger;->access$900(Lcom/alibaba/doraemon/log/FileLogger;)Landroid/os/MemoryFile;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 763
    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger$8;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-static {v1}, Lcom/alibaba/doraemon/log/FileLogger;->access$900(Lcom/alibaba/doraemon/log/FileLogger;)Landroid/os/MemoryFile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/MemoryFile;->close()V

    .line 765
    :cond_1
    return-void

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
