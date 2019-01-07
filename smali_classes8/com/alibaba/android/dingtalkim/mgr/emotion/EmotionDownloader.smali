.class public Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;
.super Ljava/lang/Object;
.source "EmotionDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$b;,
        Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;,
        Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;,
        Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field protected a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

.field public b:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;

.field public c:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$b;

.field public d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "mediaId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Uninstall:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    .line 99
    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->f:Ljava/lang/String;

    .line 101
    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->b:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;

    .line 105
    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->h:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->i:Ljava/lang/String;

    .line 197
    new-instance v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$1;-><init>(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->j:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;

    .line 114
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->h:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->i:Ljava/lang/String;

    .line 116
    invoke-static {p3}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->f:Ljava/lang/String;

    .line 117
    new-instance v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->g:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    .line 118
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->g:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->c:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$b;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->d:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "traceEmotion"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mFileName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",mStorePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    .line 133
    :cond_1
    new-instance v6, Ljava/io/File;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->i:Ljava/lang/String;

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v6, "target":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 143
    :cond_2
    new-instance v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->j:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;-><init>(Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->b:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->b:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->i:Ljava/lang/String;

    const-string/jumbo v5, "CUSTOM_EMOTION"

    invoke-static {v5, v4, v4, v4}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    .line 156
    return-void
.end method

.method public final b()Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->g:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->g:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->g:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->h:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    if-eq v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->g:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->g:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->h:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->g:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->g:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->h:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    .line 163
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->g:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    return-object v0
.end method
