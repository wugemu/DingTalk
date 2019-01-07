.class public Lcom/alipay/mobile/nebula/resourcehandler/H5ResourceHandlerUtil;
.super Ljava/lang/Object;
.source "H5ResourceHandlerUtil.java"


# static fields
.field public static final AUDIO:Ljava/lang/String; = "audio"

.field public static final IMAGE:Ljava/lang/String; = "image"

.field public static final OTHER:Ljava/lang/String; = "other"

.field public static final RESOURCE:Ljava/lang/String; = "https://resource/"

.field public static final VIDEO:Ljava/lang/String; = "video"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 60
    .local v0, "details":[Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    .local v3, "localId":Ljava/lang/String;
    .local v4, "path":Ljava/lang/String;
    .local v5, "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object p0

    .line 37
    .end local v0    # "details":[Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "localId":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_1
    const-string/jumbo v6, "image"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "video"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "audio"

    .line 38
    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "other"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 39
    :cond_2
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 40
    .restart local v5    # "uri":Landroid/net/Uri;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 41
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 42
    .restart local v4    # "path":Ljava/lang/String;
    const-string/jumbo v6, "/"

    const-string/jumbo v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 43
    const-string/jumbo v6, "\\."

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 44
    .restart local v0    # "details":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v6, v0

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 45
    const/4 v6, 0x0

    aget-object v3, v0, v6

    .line 47
    .restart local v3    # "localId":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 48
    const-class v6, Lcom/alipay/mobile/nebula/provider/H5APMTool;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5APMTool;

    .line 49
    .local v2, "h5APMTool":Lcom/alipay/mobile/nebula/provider/H5APMTool;
    if-eqz v2, :cond_0

    .line 50
    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5APMTool;->decodeToPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 53
    .end local v2    # "h5APMTool":Lcom/alipay/mobile/nebula/provider/H5APMTool;
    :catch_0
    move-exception v1

    .line 54
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, ""

    invoke-static {v6, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static localIdToUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "localId"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "https://resource/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
