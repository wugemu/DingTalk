.class final Lheb$3;
.super Ljava/lang/Object;
.source "PhotoDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lheb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lheb;


# direct methods
.method constructor <init>(Lheb;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lheb;

    .prologue
    .line 190
    iput-object p1, p0, Lheb$3;->c:Lheb;

    iput-object p2, p0, Lheb$3;->a:Ljava/io/InputStream;

    iput-object p3, p0, Lheb$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 194
    :try_start_0
    iget-object v2, p0, Lheb$3;->c:Lheb;

    .line 1040
    iget-object v3, v2, Lheb;->d:Ljava/lang/Object;

    .line 194
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    :try_start_1
    iget-object v2, p0, Lheb$3;->c:Lheb;

    .line 2040
    iget-object v2, v2, Lheb;->b:Landroid/graphics/Bitmap;

    .line 196
    if-eqz v2, :cond_0

    iget-object v2, p0, Lheb$3;->c:Lheb;

    .line 3040
    iget-object v2, v2, Lheb;->b:Landroid/graphics/Bitmap;

    .line 196
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    :cond_0
    iget-object v2, p0, Lheb$3;->c:Lheb;

    iget-object v4, p0, Lheb$3;->a:Ljava/io/InputStream;

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 4040
    iput-object v4, v2, Lheb;->b:Landroid/graphics/Bitmap;

    .line 199
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :try_start_2
    iget-object v2, p0, Lheb$3;->c:Lheb;

    invoke-static {v2}, Lheb;->i(Lheb;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lheb$3;->c:Lheb;

    .line 5040
    iget-object v3, v3, Lheb;->b:Landroid/graphics/Bitmap;

    .line 201
    iget-object v4, p0, Lheb$3;->b:Ljava/lang/String;

    iget-object v5, p0, Lheb$3;->b:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "stringUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 203
    sget v2, Lhdn$k;->dt_lightapp_webview_save_photo_success:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 204
    iget-object v2, p0, Lheb$3;->c:Lheb;

    invoke-static {v2}, Lheb;->j(Lheb;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 209
    :goto_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lheb$3$1;

    invoke-direct {v3, p0}, Lheb$3$1;-><init>(Lheb$3;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 242
    .end local v1    # "stringUrl":Ljava/lang/String;
    :goto_1
    return-void

    .line 199
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lheb$3$2;

    invoke-direct {v3, p0, v0}, Lheb$3$2;-><init>(Lheb$3;Ljava/lang/OutOfMemoryError;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 206
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v1    # "stringUrl":Ljava/lang/String;
    :cond_2
    :try_start_5
    sget v2, Lhdn$k;->pic_save_fail:I

    invoke-static {v2}, Lcms;->a(I)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 229
    .end local v1    # "stringUrl":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lheb$3$3;

    invoke-direct {v3, p0, v0}, Lheb$3$3;-><init>(Lheb$3;Ljava/lang/Exception;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
