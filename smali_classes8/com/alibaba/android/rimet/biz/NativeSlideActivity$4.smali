.class final Lcom/alibaba/android/rimet/biz/NativeSlideActivity$4;
.super Ljava/lang/Object;
.source "NativeSlideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/NativeSlideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$4;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 148
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$4;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-virtual {v7}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/slides"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "cachePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 153
    :cond_0
    const/4 v3, 0x0

    .line 154
    .local v3, "gifInStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 156
    .local v4, "gifOutStream":Ljava/io/OutputStream;
    :try_start_1
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$4;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string/jumbo v7, "app_slides/imgs/01.gif"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 157
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/01.gif"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    .end local v4    # "gifOutStream":Ljava/io/OutputStream;
    .local v5, "gifOutStream":Ljava/io/OutputStream;
    :try_start_2
    invoke-static {v3, v5}, Lhcs;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 162
    if-eqz v3, :cond_1

    .line 163
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 166
    :cond_1
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 170
    :goto_0
    :try_start_4
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$4;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string/jumbo v7, "app_slides/imgs/02.gif"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 171
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/02.gif"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 172
    .end local v5    # "gifOutStream":Ljava/io/OutputStream;
    .restart local v4    # "gifOutStream":Ljava/io/OutputStream;
    :try_start_5
    invoke-static {v3, v4}, Lhcs;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 176
    if-eqz v3, :cond_2

    .line 177
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 180
    :cond_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 183
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$4;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    new-instance v7, Llgf;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/01.gif"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Llgf;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->a(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;Llgf;)Llgf;

    .line 184
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$4;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    new-instance v7, Llgf;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/02.gif"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Llgf;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->b(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;Llgf;)Llgf;

    .line 185
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v6

    new-instance v7, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$4$1;

    invoke-direct {v7, p0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$4$1;-><init>(Lcom/alibaba/android/rimet/biz/NativeSlideActivity$4;)V

    invoke-virtual {v6, v7}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 194
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v1    # "cachePath":Ljava/lang/String;
    .end local v3    # "gifInStream":Ljava/io/InputStream;
    .end local v4    # "gifOutStream":Ljava/io/OutputStream;
    :goto_2
    return-void

    .line 159
    .restart local v0    # "cacheDir":Ljava/io/File;
    .restart local v1    # "cachePath":Ljava/lang/String;
    .restart local v3    # "gifInStream":Ljava/io/InputStream;
    .restart local v4    # "gifOutStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 160
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 162
    if-eqz v3, :cond_4

    .line 163
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 165
    :cond_4
    if-eqz v4, :cond_a

    .line 166
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    move-object v5, v4

    .end local v4    # "gifOutStream":Ljava/io/OutputStream;
    .restart local v5    # "gifOutStream":Ljava/io/OutputStream;
    goto/16 :goto_0

    .line 162
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "gifOutStream":Ljava/io/OutputStream;
    .restart local v4    # "gifOutStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v3, :cond_5

    .line 163
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 165
    :cond_5
    if-eqz v4, :cond_6

    .line 166
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_6
    throw v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 191
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v1    # "cachePath":Ljava/lang/String;
    .end local v3    # "gifInStream":Ljava/io/InputStream;
    .end local v4    # "gifOutStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 192
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 173
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cacheDir":Ljava/io/File;
    .restart local v1    # "cachePath":Ljava/lang/String;
    .restart local v3    # "gifInStream":Ljava/io/InputStream;
    .restart local v5    # "gifOutStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v2

    move-object v4, v5

    .line 174
    .end local v5    # "gifOutStream":Ljava/io/OutputStream;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "gifOutStream":Ljava/io/OutputStream;
    :goto_5
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 176
    if-eqz v3, :cond_7

    .line 177
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 179
    :cond_7
    if-eqz v4, :cond_3

    .line 180
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    .line 176
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "gifOutStream":Ljava/io/OutputStream;
    .restart local v5    # "gifOutStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "gifOutStream":Ljava/io/OutputStream;
    .restart local v4    # "gifOutStream":Ljava/io/OutputStream;
    :goto_6
    if-eqz v3, :cond_8

    .line 177
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 179
    :cond_8
    if-eqz v4, :cond_9

    .line 180
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_9
    throw v6
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 176
    :catchall_2
    move-exception v6

    goto :goto_6

    .line 173
    :catch_3
    move-exception v2

    goto :goto_5

    .line 162
    .end local v4    # "gifOutStream":Ljava/io/OutputStream;
    .restart local v5    # "gifOutStream":Ljava/io/OutputStream;
    :catchall_3
    move-exception v6

    move-object v4, v5

    .end local v5    # "gifOutStream":Ljava/io/OutputStream;
    .restart local v4    # "gifOutStream":Ljava/io/OutputStream;
    goto :goto_4

    .line 159
    .end local v4    # "gifOutStream":Ljava/io/OutputStream;
    .restart local v5    # "gifOutStream":Ljava/io/OutputStream;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5    # "gifOutStream":Ljava/io/OutputStream;
    .restart local v4    # "gifOutStream":Ljava/io/OutputStream;
    goto :goto_3

    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_a
    move-object v5, v4

    .end local v4    # "gifOutStream":Ljava/io/OutputStream;
    .restart local v5    # "gifOutStream":Ljava/io/OutputStream;
    goto/16 :goto_0
.end method
