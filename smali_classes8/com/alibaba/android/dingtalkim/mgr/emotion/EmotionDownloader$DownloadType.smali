.class public final enum Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;
.super Ljava/lang/Enum;
.source "EmotionDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

.field public static final enum GIF:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

.field public static final enum PNG:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

.field public static final enum THUMNAIL:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

.field public static final enum ZIP:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    const-string/jumbo v1, "GIF"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;->GIF:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    .line 92
    new-instance v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    const-string/jumbo v1, "PNG"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;->PNG:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    .line 94
    new-instance v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    const-string/jumbo v1, "THUMNAIL"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;->THUMNAIL:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    .line 96
    new-instance v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    const-string/jumbo v1, "ZIP"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;->ZIP:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    .line 88
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    sget-object v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;->GIF:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;->PNG:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;->THUMNAIL:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;->ZIP:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;->$VALUES:[Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    const-class v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;->$VALUES:[Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    return-object v0
.end method
