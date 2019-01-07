.class Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;
.super Ljava/lang/Object;
.source "ScreenshotDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/anti_cheat/ScreenshotDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileData"
.end annotation


# instance fields
.field private final date:J

.field private final path:Ljava/lang/String;

.field final synthetic this$0:Lcom/ut/mini/anti_cheat/ScreenshotDetector;


# direct methods
.method public constructor <init>(Lcom/ut/mini/anti_cheat/ScreenshotDetector;Ljava/lang/String;J)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "date"    # J

    .prologue
    .line 122
    iput-object p1, p0, Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;->this$0:Lcom/ut/mini/anti_cheat/ScreenshotDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p2, p0, Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;->path:Ljava/lang/String;

    .line 124
    iput-wide p3, p0, Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;->date:J

    .line 125
    return-void
.end method

.method static synthetic access$300(Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;)J
    .locals 2
    .param p0, "x0"    # Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;->date:J

    return-wide v0
.end method
