.class public final Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;
.super Ljava/lang/Object;
.source "EmotionDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$DownloaderError;

.field public g:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

.field public h:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->a:J

    .line 174
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->b:J

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->c:I

    .line 186
    sget-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Uninstall:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->h:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DownloaderData [totalLength="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fileDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->f:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$DownloaderError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", preStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->g:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->h:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
