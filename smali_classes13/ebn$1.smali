.class public final Lebn$1;
.super Ljava/lang/Object;
.source "VideoDownloadManager.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lebn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lebn;


# direct methods
.method public constructor <init>(Lebn;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lebn;

    .prologue
    .line 61
    iput-object p1, p0, Lebn$1;->c:Lebn;

    iput p2, p0, Lebn$1;->a:I

    iput-object p3, p0, Lebn$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    iget-object v1, p0, Lebn$1;->c:Lebn;

    iget v2, p0, Lebn$1;->a:I

    iget-object v3, p0, Lebn$1;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lebn;->a(Lebn;ILjava/lang/String;)Lcma;

    move-result-object v0

    .line 65
    .local v0, "resultListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    .line 66
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 68
    :cond_0
    return-void
.end method

.method public final a(IJ)V
    .locals 4
    .param p1, "progress"    # I
    .param p2, "length"    # J

    .prologue
    .line 81
    iget-object v1, p0, Lebn$1;->c:Lebn;

    iget v2, p0, Lebn$1;->a:I

    iget-object v3, p0, Lebn$1;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lebn;->a(Lebn;ILjava/lang/String;)Lcma;

    move-result-object v0

    .line 82
    .local v0, "resultListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    .line 83
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 85
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$DownloaderError;)V
    .locals 4
    .param p1, "error"    # Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$DownloaderError;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    iget-object v1, p0, Lebn$1;->c:Lebn;

    iget v2, p0, Lebn$1;->a:I

    iget-object v3, p0, Lebn$1;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lebn;->a(Lebn;ILjava/lang/String;)Lcma;

    move-result-object v0

    .line 100
    .local v0, "resultListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$DownloaderError;->getErrorCode()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$DownloaderError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object v1, p0, Lebn$1;->c:Lebn;

    iget-object v2, p0, Lebn$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lebn;->c(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "fileDir"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    iget-object v1, p0, Lebn$1;->c:Lebn;

    iget v2, p0, Lebn$1;->a:I

    iget-object v3, p0, Lebn$1;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lebn;->a(Lebn;ILjava/lang/String;)Lcma;

    move-result-object v0

    .line 91
    .local v0, "resultListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    .line 92
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 94
    :cond_0
    iget-object v1, p0, Lebn$1;->c:Lebn;

    iget-object v2, p0, Lebn$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lebn;->c(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    iget-object v1, p0, Lebn$1;->c:Lebn;

    iget v2, p0, Lebn$1;->a:I

    iget-object v3, p0, Lebn$1;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lebn;->a(Lebn;ILjava/lang/String;)Lcma;

    move-result-object v0

    .line 109
    .local v0, "resultListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    .line 110
    const-string/jumbo v1, "1001"

    const-string/jumbo v2, "download cancel"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    iget-object v1, p0, Lebn$1;->c:Lebn;

    iget-object v2, p0, Lebn$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lebn;->c(Ljava/lang/String;)V

    .line 113
    return-void
.end method
