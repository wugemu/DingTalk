.class final Ldqc$2;
.super Ljava/lang/Object;
.source "DynamicDefaultEmotionUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldqc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;


# direct methods
.method constructor <init>(Ljava/util/HashMap;Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Ldqc$2;->a:Ljava/util/HashMap;

    iput-object p2, p0, Ldqc$2;->b:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 294
    iget-object v6, p0, Ldqc$2;->a:Ljava/util/HashMap;

    sget-object v7, Ldpt;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    .line 295
    .local v4, "type":Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;
    sget-object v6, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;->ZIP:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    if-eq v4, v6, :cond_0

    .line 296
    const-string/jumbo v6, "im"

    const-string/jumbo v7, "emoDynamic"

    const-string/jumbo v8, "zip type incorrect"

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v6, p0, Ldqc$2;->b:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    iget-object v1, v6, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->d:Ljava/lang/String;

    .line 301
    .local v1, "fileDir":Ljava/lang/String;
    iget-object v6, p0, Ldqc$2;->b:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    iget-object v2, v6, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->e:Ljava/lang/String;

    .line 302
    .local v2, "fileName":Ljava/lang/String;
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 303
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1055
    .local v0, "file":Ljava/io/File;
    const-string/jumbo v6, "defaultEmoji"

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, "folderPath":Ljava/lang/String;
    new-instance v5, Ldqe;

    invoke-direct {v5, v0, v3}, Ldqe;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 311
    .local v5, "upzipStep":Ldqe;
    new-instance v6, Ldqc$2$1;

    invoke-direct {v6, p0}, Ldqc$2$1;-><init>(Ldqc$2;)V

    .line 2044
    iput-object v6, v5, Ldqg;->c:Ldqh;

    .line 325
    invoke-virtual {v5}, Ldqe;->a()V

    goto :goto_0

    .line 305
    .end local v0    # "file":Ljava/io/File;
    .end local v3    # "folderPath":Ljava/lang/String;
    .end local v5    # "upzipStep":Ldqe;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
