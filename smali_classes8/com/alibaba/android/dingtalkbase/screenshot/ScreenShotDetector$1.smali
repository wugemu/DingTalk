.class public final Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$1;
.super Landroid/database/ContentObserver;
.source "ScreenShotDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$1;->a:Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 12
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$1;->a:Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;->a(Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;)Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    :cond_2
    const/4 v6, 0x0

    .line 99
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$1;->a:Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;->b(Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;)V

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$1;->a:Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;->a(Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;->c()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "date_added desc limit 1"

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 102
    if-nez v6, :cond_3

    .line 130
    if-eqz v6, :cond_0

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 106
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 130
    if-eqz v6, :cond_0

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 110
    :cond_4
    :try_start_2
    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "path":Ljava/lang/String;
    const-string/jumbo v0, "date_added"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 113
    .local v4, "dateAdded":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v2, v8, v10

    .line 115
    .local v2, "currentTime":J
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$1;->a:Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;->a(Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;Ljava/lang/String;JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$1;->a:Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;->c(Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;)Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 117
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v8, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$1$1;

    invoke-direct {v8, p0, v1}, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$1$1;-><init>(Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$1;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    :cond_5
    if-eqz v6, :cond_0

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 125
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "currentTime":J
    .end local v4    # "dateAdded":J
    :catch_0
    move-exception v7

    .line 126
    .local v7, "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    const-string/jumbo v0, "screenshot"

    const-string/jumbo v8, "ScreenShotDetector"

    invoke-static {v7}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    if-eqz v6, :cond_0

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 130
    .end local v7    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method
