.class public final Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$1;
.super Landroid/database/ContentObserver;
.source "ScreenShotDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$1;->a:Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 12
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$1;->a:Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;->a(Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    const/4 v6, 0x0

    .line 87
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$1;->a:Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;->b(Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;->b()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "date_added DESC"

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 89
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    const-string/jumbo v0, "_data"

    .line 91
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 90
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "path":Ljava/lang/String;
    const-string/jumbo v0, "date_added"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 94
    .local v4, "dateAdded":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v2, v8, v10

    .line 95
    .local v2, "currentTime":J
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$1;->a:Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;->a(Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;Ljava/lang/String;JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$1;->a:Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;->c(Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;)Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v8, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$1$1;

    invoke-direct {v8, p0, v1}, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$1$1;-><init>(Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$1;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "currentTime":J
    .end local v4    # "dateAdded":J
    :cond_1
    if-eqz v6, :cond_2

    .line 112
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 116
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 120
    :goto_1
    return-void

    .line 107
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 108
    .local v7, "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v8, "ScreenShotDetector"

    invoke-static {v7}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    if-eqz v6, :cond_2

    .line 112
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 117
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    .line 118
    .restart local v7    # "e":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 111
    .end local v7    # "e":Ljava/lang/Throwable;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 112
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
.end method
