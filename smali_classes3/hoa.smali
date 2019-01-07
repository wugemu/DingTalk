.class public final Lhoa;
.super Ljava/lang/Object;
.source "MiniResourceHandlerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/resourcehandler/H5ResourceHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 11
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 18
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 19
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 20
    .local v4, "localId":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 21
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    move-result-object v5

    .line 22
    .local v5, "localResModel":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    if-eqz v5, :cond_1

    .line 23
    iget-object v2, v5, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->filePath:Ljava/lang/String;

    .line 24
    .local v2, "filePath":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 25
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 28
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 29
    .local v3, "is":Ljava/io/InputStream;
    new-instance v7, Landroid/webkit/WebResourceResponse;

    .line 1045
    sget-object v9, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;->IMAGE:Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;

    invoke-virtual {v9}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;->getExtName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1046
    const-string/jumbo v9, "image/*"

    .line 29
    :goto_0
    const-string/jumbo v10, "UTF-8"

    invoke-direct {v7, v9, v10, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "localId":Ljava/lang/String;
    .end local v5    # "localResModel":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    :goto_1
    return-object v7

    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "filePath":Ljava/lang/String;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "localId":Ljava/lang/String;
    .restart local v5    # "localResModel":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    :cond_0
    move-object v9, v8

    .line 1049
    goto :goto_0

    .line 30
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v4    # "localId":Ljava/lang/String;
    .end local v5    # "localResModel":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    :cond_1
    :goto_2
    move-object v7, v8

    .line 41
    goto :goto_1

    .line 32
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "filePath":Ljava/lang/String;
    .restart local v4    # "localId":Ljava/lang/String;
    .restart local v5    # "localResModel":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    :catch_1
    move-exception v6

    .line 33
    .local v6, "t":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method
