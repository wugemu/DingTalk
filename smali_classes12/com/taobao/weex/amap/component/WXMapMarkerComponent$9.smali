.class Lcom/taobao/weex/amap/component/WXMapMarkerComponent$9;
.super Landroid/os/AsyncTask;
.source "WXMapMarkerComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->setMarkerIcon(Lcom/amap/api/maps/model/Marker;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/component/WXMapMarkerComponent;

.field final synthetic val$icon:Ljava/lang/String;

.field final synthetic val$mMarker:Lcom/amap/api/maps/model/Marker;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapMarkerComponent;Ljava/lang/String;Lcom/amap/api/maps/model/Marker;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$9;->this$0:Lcom/taobao/weex/amap/component/WXMapMarkerComponent;

    iput-object p2, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$9;->val$icon:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$9;->val$mMarker:Lcom/amap/api/maps/model/Marker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$9;->this$0:Lcom/taobao/weex/amap/component/WXMapMarkerComponent;

    iget-object v2, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$9;->val$icon:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$9;->this$0:Lcom/taobao/weex/amap/component/WXMapMarkerComponent;

    invoke-virtual {v3}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->access$400(Lcom/taobao/weex/amap/component/WXMapMarkerComponent;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 241
    :goto_0
    return-object v1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 233
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$9;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 9
    .param p1, "result"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 246
    if-eqz p1, :cond_2

    new-instance v7, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 247
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->access$500(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 248
    new-instance v3, Lcom/taobao/weex/amap/util/GifDecoder;

    invoke-direct {v3}, Lcom/taobao/weex/amap/util/GifDecoder;-><init>()V

    .line 249
    .local v3, "gifDecoder":Lcom/taobao/weex/amap/util/GifDecoder;
    const/4 v5, 0x0

    .line 252
    .local v5, "imgFile":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    .end local v5    # "imgFile":Ljava/io/FileInputStream;
    .local v6, "imgFile":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3, v6}, Lcom/taobao/weex/amap/util/GifDecoder;->read(Ljava/io/InputStream;)I

    .line 254
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v1, "bitmapDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amap/api/maps/model/BitmapDescriptor;>;"
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/taobao/weex/amap/util/GifDecoder;->getFrameCount()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 256
    invoke-virtual {v3, v4}, Lcom/taobao/weex/amap/util/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 257
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 258
    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 261
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v7, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$9;->val$mMarker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v7, v1}, Lcom/amap/api/maps/model/Marker;->setIcons(Ljava/util/ArrayList;)V

    .line 262
    iget-object v7, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$9;->val$mMarker:Lcom/amap/api/maps/model/Marker;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/amap/api/maps/model/Marker;->setPeriod(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 271
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 285
    .end local v1    # "bitmapDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amap/api/maps/model/BitmapDescriptor;>;"
    .end local v3    # "gifDecoder":Lcom/taobao/weex/amap/util/GifDecoder;
    .end local v4    # "i":I
    .end local v6    # "imgFile":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    return-void

    .line 272
    .restart local v1    # "bitmapDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amap/api/maps/model/BitmapDescriptor;>;"
    .restart local v3    # "gifDecoder":Lcom/taobao/weex/amap/util/GifDecoder;
    .restart local v4    # "i":I
    .restart local v6    # "imgFile":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 273
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 264
    .end local v1    # "bitmapDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amap/api/maps/model/BitmapDescriptor;>;"
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "i":I
    .end local v6    # "imgFile":Ljava/io/FileInputStream;
    .restart local v5    # "imgFile":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 265
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 269
    if-eqz v5, :cond_2

    .line 271
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 272
    :catch_2
    move-exception v2

    .line 273
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 266
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 267
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 269
    if-eqz v5, :cond_2

    .line 271
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 272
    :catch_4
    move-exception v2

    .line 273
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 269
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v5, :cond_3

    .line 271
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 274
    :cond_3
    :goto_5
    throw v7

    .line 272
    :catch_5
    move-exception v2

    .line 273
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 279
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "gifDecoder":Lcom/taobao/weex/amap/util/GifDecoder;
    .end local v5    # "imgFile":Ljava/io/FileInputStream;
    :cond_4
    iget-object v7, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$9;->val$mMarker:Lcom/amap/api/maps/model/Marker;

    if-eqz v7, :cond_2

    .line 280
    iget-object v7, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$9;->val$mMarker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromPath(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/amap/api/maps/model/Marker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    goto :goto_1

    .line 269
    .restart local v3    # "gifDecoder":Lcom/taobao/weex/amap/util/GifDecoder;
    .restart local v6    # "imgFile":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "imgFile":Ljava/io/FileInputStream;
    .restart local v5    # "imgFile":Ljava/io/FileInputStream;
    goto :goto_4

    .line 266
    .end local v5    # "imgFile":Ljava/io/FileInputStream;
    .restart local v6    # "imgFile":Ljava/io/FileInputStream;
    :catch_6
    move-exception v2

    move-object v5, v6

    .end local v6    # "imgFile":Ljava/io/FileInputStream;
    .restart local v5    # "imgFile":Ljava/io/FileInputStream;
    goto :goto_3

    .line 264
    .end local v5    # "imgFile":Ljava/io/FileInputStream;
    .restart local v6    # "imgFile":Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "imgFile":Ljava/io/FileInputStream;
    .restart local v5    # "imgFile":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 233
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$9;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
