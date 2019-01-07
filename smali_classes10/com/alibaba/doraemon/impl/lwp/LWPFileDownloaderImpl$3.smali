.class Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl$3;
.super Ljava/lang/Object;
.source "LWPFileDownloaderImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/lwp/LWPFileSegment;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl;->transferFileSegment(Lcom/laiwang/protocol/file/download/FileSegment;)Lcom/alibaba/doraemon/lwp/LWPFileSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl;

.field final synthetic val$fileSegment:Lcom/laiwang/protocol/file/download/FileSegment;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl;Lcom/laiwang/protocol/file/download/FileSegment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl$3;->this$0:Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl$3;->val$fileSegment:Lcom/laiwang/protocol/file/download/FileSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl$3;->val$fileSegment:Lcom/laiwang/protocol/file/download/FileSegment;

    invoke-virtual {v1}, Lcom/laiwang/protocol/file/download/FileSegment;->getController()Lcom/laiwang/protocol/file/download/DownloadController;

    move-result-object v0

    .line 121
    .local v0, "controller":Lcom/laiwang/protocol/file/download/DownloadController;
    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Lcom/laiwang/protocol/file/download/DownloadController;->cancel()V

    .line 124
    :cond_0
    return-void
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl$3;->val$fileSegment:Lcom/laiwang/protocol/file/download/FileSegment;

    invoke-virtual {v0}, Lcom/laiwang/protocol/file/download/FileSegment;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method public getEnd()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl$3;->val$fileSegment:Lcom/laiwang/protocol/file/download/FileSegment;

    invoke-virtual {v0}, Lcom/laiwang/protocol/file/download/FileSegment;->getEnd()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStart()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl$3;->val$fileSegment:Lcom/laiwang/protocol/file/download/FileSegment;

    invoke-virtual {v0}, Lcom/laiwang/protocol/file/download/FileSegment;->getStart()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalLength()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl$3;->val$fileSegment:Lcom/laiwang/protocol/file/download/FileSegment;

    invoke-virtual {v0}, Lcom/laiwang/protocol/file/download/FileSegment;->getTotalLength()J

    move-result-wide v0

    return-wide v0
.end method
