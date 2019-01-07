.class Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$4;
.super Ljava/lang/Object;
.source "ShortCut.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->getBitmapFromNet(Ljava/lang/String;Ljava/io/File;Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;

.field final synthetic val$callBack:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$CallBack;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;Ljava/io/File;Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$CallBack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$4;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$4;->val$callBack:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "l"    # J
    .param p4, "l2"    # J

    .prologue
    .line 250
    return-void
.end method

.method public onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 8
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 207
    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 208
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v4

    .line 209
    .local v4, "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 212
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$4;->val$file:Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v0, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 225
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 226
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 230
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$4;->val$callBack:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$CallBack;

    if-eqz v6, :cond_0

    .line 231
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$4;->val$callBack:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$CallBack;

    invoke-interface {v6, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$CallBack;->callback(Landroid/graphics/Bitmap;)V

    .line 240
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_0
    :goto_1
    return-void

    .line 214
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 216
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$4;->val$callBack:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$CallBack;

    if-eqz v6, :cond_1

    .line 217
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$4;->val$callBack:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$CallBack;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$CallBack;->callback(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    :cond_1
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 226
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 219
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    .line 220
    .local v5, "throwable":Ljava/lang/Throwable;
    :goto_3
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 221
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$4;->val$callBack:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$CallBack;

    if-eqz v6, :cond_2

    .line 222
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$4;->val$callBack:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$CallBack;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$CallBack;->callback(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    :cond_2
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 226
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 225
    .end local v5    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    :goto_4
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 226
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v6

    .line 235
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_3
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$4;->val$callBack:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$CallBack;

    if-eqz v6, :cond_0

    .line 236
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$4;->val$callBack:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$CallBack;

    invoke-interface {v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$CallBack;->callback(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 225
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 219
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v5

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 214
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 245
    return-void
.end method
