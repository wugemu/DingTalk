.class public Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;
.super Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
.source "EmotionInstallPackageObject.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;",
        ">;"
    }
.end annotation


# instance fields
.field public emotions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;",
            ">;"
        }
    .end annotation
.end field

.field public iconPath:Ljava/lang/String;

.field public installProgress:I

.field public installStatus:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "packageId"    # J

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->packageId:J

    .line 41
    sget-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Uninstall:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->installStatus:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageObject"    # Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
    .param p2, "iconPath"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;-><init>()V

    .line 45
    sget-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Installed:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->installStatus:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    .line 46
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->iconPath:Ljava/lang/String;

    .line 47
    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->shortDesc:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->shortDesc:Ljava/lang/String;

    .line 49
    iget v0, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->price:I

    iput v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->price:I

    .line 50
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->iconMediaId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->iconMediaId:Ljava/lang/String;

    .line 51
    iget v0, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->state:I

    iput v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->state:I

    .line 52
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->name:Ljava/lang/String;

    .line 53
    iget-wide v0, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->packageId:J

    .line 54
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageMediaId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->packageMediaId:Ljava/lang/String;

    .line 55
    iget v0, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->order:I

    iput v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->order:I

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;)I
    .locals 2
    .param p1, "another"    # Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 76
    iget v0, p1, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->order:I

    iget v1, p0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->order:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->compareTo(Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;)I

    move-result v0

    return v0
.end method

.method public setEmotionPackageObject(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V
    .locals 2
    .param p1, "packageObject"    # Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->shortDesc:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->shortDesc:Ljava/lang/String;

    .line 65
    iget v0, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->price:I

    iput v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->price:I

    .line 66
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->iconMediaId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->iconMediaId:Ljava/lang/String;

    .line 67
    iget v0, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->state:I

    iput v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->state:I

    .line 68
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->name:Ljava/lang/String;

    .line 69
    iget-wide v0, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->packageId:J

    .line 70
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageMediaId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->packageMediaId:Ljava/lang/String;

    .line 71
    iget v0, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->order:I

    iput v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->order:I

    goto :goto_0
.end method
