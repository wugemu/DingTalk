.class final Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;
.super Ljava/lang/Object;
.source "EmotionDownloader.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    sget-object v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Init:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->a(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;)V

    .line 201
    return-void
.end method

.method public final a(IJ)V
    .locals 4
    .param p1, "progress"    # I
    .param p2, "length"    # J

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->a(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    move-result-object v0

    iput-wide p2, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->b:J

    .line 216
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->a(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    move-result-object v0

    iput p1, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->c:I

    .line 217
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    sget-object v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Downloading:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->a(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;)V

    .line 218
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->b(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->b(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$b;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->c(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->b()Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$b;->a(Ljava/util/HashMap;Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;)V

    .line 221
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$DownloaderError;)V
    .locals 3
    .param p1, "error"    # Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$DownloaderError;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 236
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->a(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    move-result-object v0

    iput-object p1, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->f:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$DownloaderError;

    .line 237
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    sget-object v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Error:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->a(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;)V

    .line 238
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->b(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->b(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$b;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->c(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->b()Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$b;->a(Ljava/util/HashMap;Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;)V

    .line 241
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fileDir"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 225
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->a(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    move-result-object v0

    iput-object p1, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->d:Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->a(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    move-result-object v0

    iput-object p2, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->e:Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    sget-object v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Installing:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->a(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;)V

    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->b(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->b(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$b;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->c(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->b()Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$b;->a(Ljava/util/HashMap;Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;)V

    .line 232
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 245
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    sget-object v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Cancel:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->a(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;)V

    .line 246
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->b(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->b(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$b;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->c(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->b()Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$b;->a(Ljava/util/HashMap;Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;)V

    .line 249
    :cond_0
    return-void
.end method
