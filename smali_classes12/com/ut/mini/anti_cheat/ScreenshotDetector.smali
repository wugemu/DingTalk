.class Lcom/ut/mini/anti_cheat/ScreenshotDetector;
.super Ljava/lang/Object;
.source "ScreenshotDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;,
        Lcom/ut/mini/anti_cheat/ScreenshotDetector$ScreenshotListener;
    }
.end annotation


# static fields
.field private static final TIME_MAX:J = 0x1eL


# instance fields
.field private contentObserver:Landroid/database/ContentObserver;

.field private listener:Lcom/ut/mini/anti_cheat/ScreenshotDetector$ScreenshotListener;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/ut/mini/anti_cheat/ScreenshotDetector$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/ut/mini/anti_cheat/ScreenshotDetector$1;-><init>(Lcom/ut/mini/anti_cheat/ScreenshotDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/ut/mini/anti_cheat/ScreenshotDetector;->contentObserver:Landroid/database/ContentObserver;

    .line 19
    iput-object p1, p0, Lcom/ut/mini/anti_cheat/ScreenshotDetector;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/ut/mini/anti_cheat/ScreenshotDetector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/ut/mini/anti_cheat/ScreenshotDetector;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/ut/mini/anti_cheat/ScreenshotDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ut/mini/anti_cheat/ScreenshotDetector;Landroid/content/Context;Landroid/net/Uri;)Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;
    .locals 1
    .param p0, "x0"    # Lcom/ut/mini/anti_cheat/ScreenshotDetector;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/net/Uri;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/ut/mini/anti_cheat/ScreenshotDetector;->getFilePathFromContentResolver(Landroid/content/Context;Landroid/net/Uri;)Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/ut/mini/anti_cheat/ScreenshotDetector;Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ut/mini/anti_cheat/ScreenshotDetector;
    .param p1, "x1"    # Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/ut/mini/anti_cheat/ScreenshotDetector;->isValidScreenshot(Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/ut/mini/anti_cheat/ScreenshotDetector;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ut/mini/anti_cheat/ScreenshotDetector;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/ut/mini/anti_cheat/ScreenshotDetector;->onScreenCaptured(Ljava/lang/String;)V

    return-void
.end method

.method private getFilePathFromContentResolver(Landroid/content/Context;Landroid/net/Uri;)Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 95
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "_display_name"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v3, "_data"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string/jumbo v3, "date_added"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "date_added DESC"

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 100
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 102
    .local v7, "path":Ljava/lang/String;
    const-string/jumbo v0, "date_added"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 103
    .local v8, "date":J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 104
    new-instance v0, Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;

    invoke-direct {v0, p0, v7, v8, v9}, Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;-><init>(Lcom/ut/mini/anti_cheat/ScreenshotDetector;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "date":J
    :goto_0
    return-object v0

    .line 106
    :catch_0
    move-exception v10

    .line 107
    .local v10, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v0, ""

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v0, v10, v1}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .end local v10    # "throwable":Ljava/lang/Throwable;
    :cond_0
    move-object v0, v11

    .line 109
    goto :goto_0
.end method

.method private isValidScreenshot(Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;)Z
    .locals 10
    .param p1, "data"    # Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    if-nez p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v2

    .line 74
    :cond_1
    invoke-static {p1}, Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;->access$300(Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 78
    const-string/jumbo v4, ""

    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "data.path"

    aput-object v6, v5, v2

    invoke-static {p1}, Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;->access$300(Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-static {p1}, Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;->access$300(Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "screenshots"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 85
    .local v0, "localtime":J
    const-string/jumbo v4, ""

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "localtime"

    aput-object v6, v5, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    const-string/jumbo v6, "data.date"

    aput-object v6, v5, v8

    const/4 v6, 0x3

    invoke-static {p1}, Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;->access$500(Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-static {p1}, Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;->access$500(Lcom/ut/mini/anti_cheat/ScreenshotDetector$FileData;)J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1e

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    move v2, v3

    .line 87
    goto :goto_0
.end method

.method private onScreenCaptured(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {}, Lamu;->b()V

    .line 64
    iget-object v0, p0, Lcom/ut/mini/anti_cheat/ScreenshotDetector;->listener:Lcom/ut/mini/anti_cheat/ScreenshotDetector$ScreenshotListener;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/ut/mini/anti_cheat/ScreenshotDetector;->listener:Lcom/ut/mini/anti_cheat/ScreenshotDetector$ScreenshotListener;

    invoke-interface {v0, p1}, Lcom/ut/mini/anti_cheat/ScreenshotDetector$ScreenshotListener;->onScreenCaptured(Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public start(Lcom/ut/mini/anti_cheat/ScreenshotDetector$ScreenshotListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/ut/mini/anti_cheat/ScreenshotDetector$ScreenshotListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 23
    iput-object p1, p0, Lcom/ut/mini/anti_cheat/ScreenshotDetector;->listener:Lcom/ut/mini/anti_cheat/ScreenshotDetector$ScreenshotListener;

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/anti_cheat/ScreenshotDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ut/mini/anti_cheat/ScreenshotDetector;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/anti_cheat/ScreenshotDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/ut/mini/anti_cheat/ScreenshotDetector;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
