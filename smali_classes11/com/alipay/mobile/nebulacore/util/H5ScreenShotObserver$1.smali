.class Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;
.super Landroid/database/ContentObserver;
.source "H5ScreenShotObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;->this$0:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    const-string/jumbo v1, "H5ScreenShotObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "old onChange "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :try_start_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 38
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;->onChange(ZLandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5ScreenShotObserver"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 12
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    :try_start_0
    const-string/jumbo v8, "H5ScreenShotObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "new onChange "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", uri "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;->this$0:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->access$100(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;)Landroid/content/Context;

    move-result-object v8

    if-nez v8, :cond_1

    .line 58
    const-string/jumbo v8, "H5ScreenShotObserver"

    const-string/jumbo v9, "new onChange mContext == null"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;->query(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    .line 62
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_0

    .line 65
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-nez v8, :cond_2

    .line 66
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    .end local v2    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 85
    .local v7, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v8, "H5ScreenShotObserver"

    invoke-static {v8, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 69
    .end local v7    # "throwable":Ljava/lang/Throwable;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_1
    const-string/jumbo v8, "_data"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "path":Ljava/lang/String;
    const-string/jumbo v8, "date_added"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 71
    .local v4, "dateAdded":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .line 72
    .local v0, "currentTime":J
    sub-long v8, v0, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0xa

    cmp-long v8, v8, v10

    if-gtz v8, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "screenshot"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 73
    const-string/jumbo v8, "H5ScreenShotObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "onScreenShot, listeners: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;->this$0:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    invoke-static {v10}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->access$300(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;->this$0:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->access$400(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;)Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 75
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;->this$0:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->access$400(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;)Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;

    move-result-object v8

    invoke-interface {v8}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;->onScreenShot()V

    .line 77
    :cond_3
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;->this$0:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->access$300(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 78
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;->this$0:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->access$300(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;

    .line 79
    .local v3, "listener":Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;
    invoke-interface {v3}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;->onScreenShot()V

    goto :goto_1

    .line 83
    .end local v3    # "listener":Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method query(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 46
    if-nez p1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;->this$0:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->access$100(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->access$000()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "date_added DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 50
    :cond_0
    :goto_0
    return-object v3

    .line 48
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;->this$0:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->access$100(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->access$000()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "date_added DESC"

    move-object v1, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_0
.end method
