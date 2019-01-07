.class Lcom/ut/mini/anti_cheat/ScreenshotDetector$1;
.super Landroid/database/ContentObserver;
.source "ScreenshotDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/anti_cheat/ScreenshotDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ut/mini/anti_cheat/ScreenshotDetector;


# direct methods
.method constructor <init>(Lcom/ut/mini/anti_cheat/ScreenshotDetector;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ut/mini/anti_cheat/ScreenshotDetector$1;->this$0:Lcom/ut/mini/anti_cheat/ScreenshotDetector;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 49
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    invoke-static {}, Lamu;->b()V

    .line 54
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 55
    iget-object v1, p0, Lcom/ut/mini/anti_cheat/ScreenshotDetector$1;->this$0:Lcom/ut/mini/anti_cheat/ScreenshotDetector;

    iget-object v2, p0, Lcom/ut/mini/anti_cheat/ScreenshotDetector$1;->this$0:Lcom/ut/mini/anti_cheat/ScreenshotDetector;

    invoke-static {v2}, Lcom/ut/mini/anti_cheat/ScreenshotDetector;->access$000(Lcom/ut/mini/anti_cheat/ScreenshotDetector;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/ut/mini/anti_cheat/ScreenshotDetector;->access$100(Lcom/ut/mini/anti_cheat/ScreenshotDetector;Landroid/content/Context;Landroid/net/Uri;)Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;

    move-result-object v0

    .line 56
    .local v0, "data":Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;
    iget-object v1, p0, Lcom/ut/mini/anti_cheat/ScreenshotDetector$1;->this$0:Lcom/ut/mini/anti_cheat/ScreenshotDetector;

    invoke-static {v1, v0}, Lcom/ut/mini/anti_cheat/ScreenshotDetector;->access$200(Lcom/ut/mini/anti_cheat/ScreenshotDetector;Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/ut/mini/anti_cheat/ScreenshotDetector$1;->this$0:Lcom/ut/mini/anti_cheat/ScreenshotDetector;

    invoke-static {v0}, Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;->access$300(Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ut/mini/anti_cheat/ScreenshotDetector;->access$400(Lcom/ut/mini/anti_cheat/ScreenshotDetector;Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method
