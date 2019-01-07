.class public Ldpt;
.super Ljava/lang/Object;
.source "EmotionPackageMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldpt$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field private static i:Ldpt;


# instance fields
.field public d:J

.field public e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;",
            ">;"
        }
    .end annotation
.end field

.field public volatile f:Z

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldpt$a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Ldpt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldpt;->a:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "downloadType"

    sput-object v0, Ldpt;->b:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "dataId"

    sput-object v0, Ldpt;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldpt;->d:J

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Ldpt;->e:Ljava/util/Queue;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldpt;->f:Z

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ldpt;->g:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ldpt;->k:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldpt;->h:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldpt;->j:Ljava/util/HashMap;

    .line 98
    return-void
.end method

.method static synthetic a(Ldpt;J)J
    .locals 1
    .param p0, "x0"    # Ldpt;
    .param p1, "x1"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Ldpt;->d:J

    return-wide p1
.end method

.method public static declared-synchronized a()Ldpt;
    .locals 2

    .prologue
    .line 90
    const-class v1, Ldpt;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldpt;->i:Ldpt;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ldpt;

    invoke-direct {v0}, Ldpt;-><init>()V

    sput-object v0, Ldpt;->i:Ldpt;

    .line 93
    :cond_0
    sget-object v0, Ldpt;->i:Ldpt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(JLcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;I)V
    .locals 3
    .param p1, "packageId"    # J
    .param p3, "status"    # Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;
    .param p4, "progress"    # I

    .prologue
    .line 732
    const/4 v1, -0x1

    .line 733
    .local v1, "order":I
    sget-object v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Installed:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    if-ne p3, v2, :cond_0

    .line 734
    invoke-static {}, Ldhe;->a()Ldhe;

    move-result-object v2

    invoke-virtual {v2}, Ldhe;->c()Ldhi;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Ldhi;->a(JLcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;I)I

    move-result v1

    .line 737
    :cond_0
    invoke-virtual {p0, p1, p2}, Ldpt;->b(J)Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    move-result-object v0

    .line 739
    .local v0, "installPackageObject":Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;
    if-nez v0, :cond_1

    .line 740
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    .end local v0    # "installPackageObject":Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;
    invoke-direct {v0, p1, p2}, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;-><init>(J)V

    .line 741
    .restart local v0    # "installPackageObject":Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;
    invoke-virtual {p0, p1, p2}, Ldpt;->e(J)Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->setEmotionPackageObject(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V

    .line 742
    iget-object v2, p0, Ldpt;->k:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    :cond_1
    iput-object p3, v0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->installStatus:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    .line 745
    iput p4, v0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->installProgress:I

    .line 746
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 747
    iput v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->order:I

    .line 749
    :cond_2
    return-void
.end method

.method private a(JLjava/lang/String;)V
    .locals 3
    .param p1, "packageId"    # J
    .param p3, "error"    # Ljava/lang/String;

    .prologue
    .line 839
    sget-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Error:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ldpt;->a(JLcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;I)V

    .line 841
    iget-object v0, p0, Ldpt;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 857
    :goto_0
    return-void

    .line 845
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldpt$4;

    invoke-direct {v1, p0, p1, p2, p3}, Ldpt$4;-><init>(Ldpt;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Ldpt;)V
    .locals 2
    .param p0, "x0"    # Ldpt;

    .prologue
    .line 57
    .line 2723
    invoke-static {}, Ldhe;->a()Ldhe;

    move-result-object v0

    invoke-virtual {v0}, Ldhe;->c()Ldhi;

    move-result-object v0

    invoke-interface {v0}, Ldhi;->a()Ljava/util/List;

    move-result-object v0

    .line 2724
    iget-object v1, p0, Ldpt;->k:Ljava/util/List;

    invoke-static {v0, v1}, Ldpu;->a(Ljava/util/List;Ljava/util/List;)V

    .line 2726
    invoke-static {}, Ldhe;->a()Ldhe;

    move-result-object v0

    invoke-virtual {v0}, Ldhe;->b()Ldhg;

    move-result-object v0

    invoke-interface {v0}, Ldhg;->a()Ljava/util/List;

    move-result-object v0

    .line 2727
    iget-object v1, p0, Ldpt;->g:Ljava/util/List;

    invoke-static {v0, v1}, Ldpu;->a(Ljava/util/List;Ljava/util/List;)V

    .line 57
    return-void
.end method

.method static synthetic a(Ldpt;JI)V
    .locals 3
    .param p0, "x0"    # Ldpt;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 57
    .line 5774
    sget-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Downloading:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    invoke-direct {p0, p1, p2, v0, p3}, Ldpt;->a(JLcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;I)V

    .line 5776
    iget-object v0, p0, Ldpt;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5780
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldpt$15;

    invoke-direct {v1, p0, p1, p2, p3}, Ldpt$15;-><init>(Ldpt;JI)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 57
    :cond_0
    return-void
.end method

.method static synthetic a(Ldpt;JLjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Ldpt;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Ldpt;->a(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ldpt;JLjava/util/List;)V
    .locals 7
    .param p0, "x0"    # Ldpt;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/util/List;

    .prologue
    .line 57
    .line 8690
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 8691
    :cond_0
    :goto_0
    return-void

    .line 8694
    :cond_1
    invoke-virtual {p0, p1, p2}, Ldpt;->b(J)Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    move-result-object v0

    .line 8696
    if-nez v0, :cond_3

    .line 8697
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;-><init>(J)V

    .line 8698
    invoke-virtual {p0, p1, p2}, Ldpt;->e(J)Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->setEmotionPackageObject(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V

    .line 8699
    iget-object v1, p0, Ldpt;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 8702
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->iconPath:Ljava/lang/String;

    .line 8703
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .line 8704
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionId:J

    iget v6, v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->type:I

    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->a(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->originPath:Ljava/lang/String;

    .line 8705
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionId:J

    invoke-static {v3, v4, v5}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->thumnailPath:Ljava/lang/String;

    goto :goto_2

    .line 8707
    :cond_2
    iput-object p3, v1, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->emotions:Ljava/util/List;

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic a(Ldpt;Ljava/util/HashMap;Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;)V
    .locals 7
    .param p0, "x0"    # Ldpt;
    .param p1, "x1"    # Ljava/util/HashMap;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    .prologue
    .line 57
    .line 6588
    sget-object v0, Ldpt;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 7044
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 6589
    invoke-static {v2, v3}, Ldpt;->g(J)Ljava/lang/String;

    move-result-object v1

    .line 6591
    const-string/jumbo v0, "im"

    const-string/jumbo v4, "traceEmotion"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "start install,pid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6593
    sget-object v0, Ldpt;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    .line 6594
    sget-object v4, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;->ZIP:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    if-eq v0, v4, :cond_0

    .line 6595
    const-string/jumbo v0, "im"

    const-string/jumbo v4, "traceEmotion"

    const-string/jumbo v5, "zip type incorrect"

    invoke-static {v0, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6596
    const-string/jumbo v0, "Zip type incorrect"

    invoke-direct {p0, v2, v3, v0}, Ldpt;->a(JLjava/lang/String;)V

    .line 6597
    invoke-virtual {p0, v1}, Ldpt;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    .line 6598
    :goto_0
    return-void

    .line 6601
    :cond_0
    iget-object v0, p2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->d:Ljava/lang/String;

    .line 6602
    iget-object v4, p2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->e:Ljava/lang/String;

    .line 6603
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 6604
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6608
    :goto_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6611
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6612
    new-instance v5, Ldqe;

    invoke-direct {v5, v4, v0}, Ldqe;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6613
    new-instance v0, Ldpt$13;

    invoke-direct {v0, p0, v2, v3, v1}, Ldpt$13;-><init>(Ldpt;JLjava/lang/String;)V

    .line 8044
    iput-object v0, v5, Ldqg;->c:Ldqh;

    .line 6685
    invoke-virtual {v5}, Ldqe;->a()V

    goto :goto_0

    .line 6606
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Ldpt;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ldpt;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    .line 4580
    iget-object v0, p0, Ldpt;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4581
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 4583
    :cond_0
    const/4 v0, 0x0

    .line 57
    goto :goto_0
.end method

.method static synthetic a(Ldpt;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;)Z
    .locals 1
    .param p0, "x0"    # Ldpt;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    .prologue
    .line 57
    .line 5564
    iget-object v0, p0, Ldpt;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5565
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5567
    :cond_0
    iget-object v0, p0, Ldpt;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5568
    const/4 v0, 0x1

    .line 57
    goto :goto_0
.end method

.method static synthetic a(Ldpt;Z)Z
    .locals 1
    .param p0, "x0"    # Ldpt;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldpt;->f:Z

    return v0
.end method

.method static synthetic b(Ldpt;Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;
    .locals 1
    .param p0, "x0"    # Ldpt;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Ldpt;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ldpt;)V
    .locals 5
    .param p0, "x0"    # Ldpt;

    .prologue
    .line 57
    .line 3430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string/jumbo v2, "PREF_KEY_LAST_DOWNLOAD_INCOMPLETE_PACKAGE_TIME"

    invoke-static {v2}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 4191
    iget-object v0, p0, Ldpt;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldpt;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 4192
    :cond_0
    const/4 v0, 0x0

    .line 3435
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_5

    .line 3436
    :cond_1
    :goto_1
    return-void

    .line 4195
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4196
    iget-object v0, p0, Ldpt;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    .line 4197
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->installStatus:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    sget-object v4, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Incomplete:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    if-ne v3, v4, :cond_3

    .line 4198
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 4202
    goto :goto_0

    .line 3438
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    .line 3439
    if-eqz v0, :cond_6

    .line 3442
    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->packageId:J

    invoke-direct {p0, v2, v3}, Ldpt;->i(J)V

    goto :goto_3

    .line 3445
    :cond_7
    const-string/jumbo v0, "PREF_KEY_LAST_DOWNLOAD_INCOMPLETE_PACKAGE_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcpk;->b(Ljava/lang/String;J)V

    goto :goto_1
.end method

.method static synthetic b(Ldpt;J)V
    .locals 1
    .param p0, "x0"    # Ldpt;
    .param p1, "x1"    # J

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ldpt;->i(J)V

    return-void
.end method

.method static synthetic c(Ldpt;)J
    .locals 2
    .param p0, "x0"    # Ldpt;

    .prologue
    .line 57
    iget-wide v0, p0, Ldpt;->d:J

    return-wide v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Ldpt;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Ldpt;J)V
    .locals 1
    .param p0, "x0"    # Ldpt;
    .param p1, "x1"    # J

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ldpt;->j(J)V

    return-void
.end method

.method static synthetic d(Ldpt;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ldpt;

    .prologue
    .line 57
    iget-object v0, p0, Ldpt;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Ldpt;J)V
    .locals 3
    .param p0, "x0"    # Ldpt;
    .param p1, "x1"    # J

    .prologue
    .line 57
    .line 5796
    sget-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Installing:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    const/16 v1, 0x64

    invoke-direct {p0, p1, p2, v0, v1}, Ldpt;->a(JLcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;I)V

    .line 5798
    iget-object v0, p0, Ldpt;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5802
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldpt$2;

    invoke-direct {v1, p0, p1, p2}, Ldpt$2;-><init>(Ldpt;J)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 57
    :cond_0
    return-void
.end method

.method static synthetic e(Ldpt;)V
    .locals 1
    .param p0, "x0"    # Ldpt;

    .prologue
    .line 57
    .line 6527
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldpt;->f:Z

    .line 6528
    iget-object v0, p0, Ldpt;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    .line 6529
    if-eqz v0, :cond_0

    .line 6530
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->a()V

    .line 6531
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldpt;->f:Z

    .line 57
    :cond_0
    return-void
.end method

.method static synthetic e(Ldpt;J)V
    .locals 3
    .param p0, "x0"    # Ldpt;
    .param p1, "x1"    # J

    .prologue
    .line 57
    .line 8817
    sget-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Installed:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    const/16 v1, 0x64

    invoke-direct {p0, p1, p2, v0, v1}, Ldpt;->a(JLcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;I)V

    .line 8819
    iget-object v0, p0, Ldpt;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 8823
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldpt$3;

    invoke-direct {v1, p0, p1, p2}, Ldpt$3;-><init>(Ldpt;J)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 57
    :cond_0
    return-void
.end method

.method static synthetic f(Ldpt;J)V
    .locals 3
    .param p0, "x0"    # Ldpt;
    .param p1, "x1"    # J

    .prologue
    .line 57
    .line 9712
    invoke-virtual {p0, p1, p2}, Ldpt;->b(J)Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    move-result-object v0

    .line 9713
    if-eqz v0, :cond_0

    .line 9717
    invoke-static {}, Ldhe;->a()Ldhe;

    move-result-object v1

    invoke-virtual {v1}, Ldhe;->c()Ldhi;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->iconPath:Ljava/lang/String;

    invoke-interface {v1, p1, p2, v2}, Ldhi;->a(JLjava/lang/String;)Z

    .line 9718
    invoke-static {}, Ldhe;->a()Ldhe;

    move-result-object v1

    invoke-virtual {v1}, Ldhe;->d()Ldhd;

    move-result-object v1

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->emotions:Ljava/util/List;

    invoke-interface {v1, v0}, Ldhd;->a(Ljava/util/List;)Z

    .line 57
    :cond_0
    return-void
.end method

.method static synthetic f(Ldpt;)Z
    .locals 1
    .param p0, "x0"    # Ldpt;

    .prologue
    .line 57
    iget-boolean v0, p0, Ldpt;->f:Z

    return v0
.end method

.method public static g(J)Ljava/lang/String;
    .locals 2
    .param p0, "packageId"    # J

    .prologue
    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;->ZIP:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Ldpt;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Ldpt;

    .prologue
    .line 57
    iget-object v0, p0, Ldpt;->e:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic h(J)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 57
    invoke-static {p0, p1}, Ldpt;->g(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Ldpt;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ldpt;

    .prologue
    .line 57
    iget-object v0, p0, Ldpt;->h:Ljava/util/List;

    return-object v0
.end method

.method private i(J)V
    .locals 5
    .param p1, "packageId"    # J

    .prologue
    .line 455
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "traceEmotion"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start download zip,pid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string/jumbo v0, "downloadZip"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Ldpt$12;

    invoke-direct {v1, p0, p1, p2}, Ldpt$12;-><init>(Ldpt;J)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 524
    return-void
.end method

.method private j(J)V
    .locals 3
    .param p1, "packageId"    # J

    .prologue
    .line 753
    sget-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Init:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ldpt;->a(JLcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;I)V

    .line 755
    iget-object v0, p0, Ldpt;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 770
    :goto_0
    return-void

    .line 759
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldpt$14;

    invoke-direct {v1, p0, p1, p2}, Ldpt$14;-><init>(Ldpt;J)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a(JJ)Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    .locals 7
    .param p1, "packageId"    # J
    .param p3, "emotionId"    # J

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-virtual {p0, p1, p2}, Ldpt;->c(J)Ljava/util/List;

    move-result-object v1

    .line 239
    .local v1, "emotionDetailObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    move-object v0, v2

    .line 247
    :goto_0
    return-object v0

    .line 242
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .line 243
    .local v0, "emotionDetailObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    if-eqz v0, :cond_2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionId:J

    cmp-long v4, v4, p3

    if-nez v4, :cond_2

    goto :goto_0

    .end local v0    # "emotionDetailObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    :cond_3
    move-object v0, v2

    .line 247
    goto :goto_0
.end method

.method public final a(J)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;
    .locals 7
    .param p1, "packageId"    # J

    .prologue
    .line 133
    new-instance v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;-><init>()V

    .line 134
    .local v0, "downloaderData":Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;
    sget-object v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Uninstall:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->h:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    .line 137
    iget-object v2, p0, Ldpt;->k:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ldpt;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 138
    iget-object v2, p0, Ldpt;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    .line 139
    .local v1, "installPackageObject":Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;
    if-eqz v1, :cond_0

    iget-wide v4, v1, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->packageId:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 140
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->installStatus:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->h:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    .line 141
    iget v2, v1, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->installProgress:I

    iput v2, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->c:I

    .line 148
    .end local v1    # "installPackageObject":Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;
    :cond_1
    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 536
    iget-object v0, p0, Ldpt;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    return-object v0
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V
    .locals 8
    .param p1, "packageObject"    # Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 381
    if-eqz p1, :cond_2

    .line 382
    const/4 v1, 0x0

    .line 383
    .local v1, "isExist":Z
    iget-object v2, p0, Ldpt;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    .line 384
    .local v0, "emotionPackageObject":Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    iget-wide v6, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 385
    const/4 v1, 0x1

    .line 389
    .end local v0    # "emotionPackageObject":Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
    :cond_1
    if-nez v1, :cond_2

    .line 390
    iget-object v2, p0, Ldpt;->g:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    const-string/jumbo v2, "insert2DB"

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Ldpt$10;

    invoke-direct {v3, p0, p1}, Ldpt$10;-><init>(Ldpt;Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 399
    .end local v1    # "isExist":Z
    :cond_2
    return-void
.end method

.method public final a(Ldpt$a;)V
    .locals 1
    .param p1, "listener"    # Ldpt$a;

    .prologue
    .line 122
    iget-object v0, p0, Ldpt;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public final b(J)Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;
    .locals 5
    .param p1, "emotionPackageId"    # J

    .prologue
    .line 162
    iget-object v1, p0, Ldpt;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    .line 163
    .local v0, "emotionInstallPackageObject":Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->packageId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 167
    .end local v0    # "emotionInstallPackageObject":Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    iget-object v2, p0, Ldpt;->k:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldpt;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 173
    :cond_0
    const/4 v1, 0x0

    .line 186
    :cond_1
    return-object v1

    .line 176
    :cond_2
    iget-object v5, p0, Ldpt;->k:Ljava/util/List;

    .line 1213
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 1214
    const/4 v2, 0x0

    move v4, v2

    :goto_0
    add-int/lit8 v2, v6, -0x1

    if-ge v4, v2, :cond_5

    .line 1215
    add-int/lit8 v2, v4, 0x1

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_4

    .line 1216
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    iget v7, v2, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->order:I

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    iget v2, v2, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->order:I

    if-ge v7, v2, :cond_3

    .line 1217
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    .line 1218
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v4, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1219
    invoke-interface {v5, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1215
    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 1214
    :cond_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 178
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v1, "installedPackageObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;>;"
    iget-object v2, p0, Ldpt;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    .line 180
    .local v0, "installPackageObject":Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;
    if-eqz v0, :cond_6

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->installStatus:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    sget-object v4, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Installed:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    if-eq v3, v4, :cond_7

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->installStatus:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    sget-object v4, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Incomplete:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    if-ne v3, v4, :cond_6

    .line 182
    :cond_7
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public final b(Ldpt$a;)V
    .locals 1
    .param p1, "listener"    # Ldpt$a;

    .prologue
    .line 126
    iget-object v0, p0, Ldpt;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Ldpt;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    return-void
.end method

.method public final c(J)Ljava/util/List;
    .locals 5
    .param p1, "packageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v1, p0, Ldpt;->k:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldpt;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 228
    iget-object v1, p0, Ldpt;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    .line 229
    .local v0, "installPackageObject":Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->packageId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 230
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->emotions:Ljava/util/List;

    .line 234
    .end local v0    # "installPackageObject":Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final d(J)V
    .locals 5
    .param p1, "packageId"    # J

    .prologue
    .line 345
    iget-object v1, p0, Ldpt;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    .line 346
    .local v0, "installPackageObject":Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->packageId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 347
    iget-object v1, p0, Ldpt;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1861
    iget-object v1, p0, Ldpt;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1865
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Ldpt$5;

    invoke-direct {v2, p0, p1, p2}, Ldpt$5;-><init>(Ldpt;J)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 349
    :cond_1
    invoke-static {p1, p2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->a(J)V

    .line 350
    const-class v1, Ldpt;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Ldpt$9;

    invoke-direct {v2, p0, p1, p2}, Ldpt$9;-><init>(Ldpt;J)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 359
    .end local v0    # "installPackageObject":Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;
    :cond_2
    return-void
.end method

.method public final e(J)Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
    .locals 7
    .param p1, "packageId"    # J

    .prologue
    const/4 v1, 0x0

    .line 363
    iget-object v2, p0, Ldpt;->g:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldpt;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 371
    :goto_0
    return-object v0

    .line 366
    :cond_1
    iget-object v2, p0, Ldpt;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    .line 367
    .local v0, "emotionPackageObject":Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
    if-eqz v0, :cond_2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_2

    goto :goto_0

    .end local v0    # "emotionPackageObject":Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
    :cond_3
    move-object v0, v1

    .line 371
    goto :goto_0
.end method

.method public final f(J)V
    .locals 5
    .param p1, "packageId"    # J

    .prologue
    .line 403
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "traceEmotion"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start purchase,pid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-direct {p0, p1, p2}, Ldpt;->j(J)V

    .line 406
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v0

    invoke-virtual {v0}, Ldyn;->e()Ldxn;

    move-result-object v0

    new-instance v1, Ldpt$11;

    invoke-direct {v1, p0, p1, p2}, Ldpt$11;-><init>(Ldpt;J)V

    invoke-interface {v0, p1, p2, v1}, Ldxn;->c(JLcma;)V

    .line 425
    return-void
.end method
