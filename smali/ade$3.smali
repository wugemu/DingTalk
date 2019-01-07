.class final Lade$3;
.super Ljava/lang/Object;
.source "AvatarManager.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/AvatarDownloadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lade$b;

.field final synthetic f:Lade;


# direct methods
.method constructor <init>(Lade;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lade$b;)V
    .locals 0
    .param p1, "this$0"    # Lade;

    .prologue
    .line 175
    iput-object p1, p0, Lade$3;->f:Lade;

    iput-object p2, p0, Lade$3;->a:Ljava/lang/String;

    iput p3, p0, Lade$3;->b:I

    iput-object p4, p0, Lade$3;->c:Ljava/lang/String;

    iput-object p5, p0, Lade$3;->d:Ljava/lang/String;

    iput-object p6, p0, Lade$3;->e:Lade$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 214
    iget-object v0, p0, Lade$3;->f:Lade;

    iget-object v1, p0, Lade$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lade;->a(Lade;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 4
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 207
    iget-object v0, p0, Lade$3;->f:Lade;

    invoke-static {v0}, Lade;->d(Lade;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lade$3;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lade$3;->f:Lade;

    iget-object v1, p0, Lade$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lade;->a(Lade;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 175
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/AvatarDownloadResult;

    .line 1178
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AvatarDownloadResult;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1180
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AvatarDownloadResult;->getBytes()[B

    move-result-object v0

    .line 1181
    array-length v1, v0

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1182
    iget-object v0, p0, Lade$3;->f:Lade;

    invoke-static {v0}, Lade;->a(Lade;)Lcom/alibaba/alimei/mail/avatar/AvatarFileCache;

    move-result-object v0

    iget-object v2, p0, Lade$3;->a:Ljava/lang/String;

    .line 2047
    if-eqz v1, :cond_1

    .line 2051
    new-instance v3, Ljava/io/File;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/avatar/AvatarFileCache;->a:Ljava/lang/String;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2053
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2057
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 2058
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2059
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2060
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 2061
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1183
    :cond_1
    :goto_0
    iget-object v0, p0, Lade$3;->f:Lade;

    invoke-static {v0}, Lade;->b(Lade;)Ladf;

    move-result-object v0

    iget v2, p0, Lade$3;->b:I

    iget-object v3, p0, Lade$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Ladf;->a(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1185
    iget-object v0, p0, Lade$3;->f:Lade;

    iget-object v2, p0, Lade$3;->a:Ljava/lang/String;

    iget-object v3, p0, Lade$3;->c:Ljava/lang/String;

    invoke-static {v0, v2, v1, v3}, Lade;->a(Lade;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1187
    iget-object v0, p0, Lade$3;->f:Lade;

    invoke-static {v0}, Lade;->c(Lade;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lade$3;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AvatarDownloadResult;->geteTag()Ljava/lang/String;

    move-result-object v0

    .line 1190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1191
    iget-object v1, p0, Lade$3;->f:Lade;

    iget-object v2, p0, Lade$3;->c:Ljava/lang/String;

    iget v3, p0, Lade$3;->b:I

    invoke-static {v1, v2, v3, v0}, Lade;->a(Lade;Ljava/lang/String;ILjava/lang/String;)V

    .line 1193
    :cond_2
    :goto_1
    return-void

    .line 2062
    :catch_0
    move-exception v0

    .line 2063
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1193
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AvatarDownloadResult;->getStatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1195
    iget-object v0, p0, Lade$3;->f:Lade;

    iget-object v1, p0, Lade$3;->d:Ljava/lang/String;

    iget-object v2, p0, Lade$3;->c:Ljava/lang/String;

    iget v3, p0, Lade$3;->b:I

    iget-object v4, p0, Lade$3;->e:Lade$b;

    invoke-static/range {v0 .. v5}, Lade;->a(Lade;Ljava/lang/String;Ljava/lang/String;ILade$b;Z)V

    goto :goto_1
.end method
