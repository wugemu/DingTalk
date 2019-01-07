.class public Lcom/alipay/mobile/nebulauc/util/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CommonUtil"

.field private static sUserId:Ljava/lang/String;

.field private static final simpleDateFormat:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/alipay/mobile/nebulauc/util/CommonUtil$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/util/CommonUtil$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->simpleDateFormat:Ljava/lang/ThreadLocal;

    .line 36
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->sUserId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpDir(Ljava/io/File;)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 54
    if-nez p0, :cond_1

    .line 55
    const-string/jumbo v2, "CommonUtil"

    const-string/jumbo v3, "cannot dump null directory!"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void

    .line 58
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->dumpFile(Ljava/io/File;)V

    .line 59
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 61
    .local v1, "flist":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 62
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 63
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->dumpDir(Ljava/io/File;)V

    .line 62
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_2
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->dumpFile(Ljava/io/File;)V

    goto :goto_1
.end method

.method public static dumpFile(Ljava/io/File;)V
    .locals 14
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 74
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 75
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v5, "r"

    .line 76
    .local v5, "read":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v6, "w"

    .line 77
    .local v6, "write":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->canExecute()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v0, "x"

    .line 78
    .local v0, "exec":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v2, "d"

    .line 79
    .local v2, "isDir":Ljava/lang/String;
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "meta":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 82
    .local v3, "lastModified":Ljava/lang/String;
    sget-object v7, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->simpleDateFormat:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    .line 83
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    if-eqz v1, :cond_0

    .line 84
    new-instance v7, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 86
    :cond_0
    const-string/jumbo v7, "CommonUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "kb "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .end local v0    # "exec":Ljava/lang/String;
    .end local v1    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v2    # "isDir":Ljava/lang/String;
    .end local v3    # "lastModified":Ljava/lang/String;
    .end local v4    # "meta":Ljava/lang/String;
    .end local v5    # "read":Ljava/lang/String;
    .end local v6    # "write":Ljava/lang/String;
    :goto_4
    return-void

    .line 75
    :cond_1
    const-string/jumbo v5, "-"

    goto/16 :goto_0

    .line 76
    .restart local v5    # "read":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "-"

    goto/16 :goto_1

    .line 77
    .restart local v6    # "write":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "-"

    goto/16 :goto_2

    .line 78
    .restart local v0    # "exec":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, "f"

    goto/16 :goto_3

    .line 88
    .end local v0    # "exec":Ljava/lang/String;
    .end local v5    # "read":Ljava/lang/String;
    .end local v6    # "write":Ljava/lang/String;
    :cond_5
    const-string/jumbo v7, "CommonUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " not exist!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "type":Ljava/lang/String;
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "extension":Ljava/lang/String;
    const-string/jumbo v2, "js"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    const-string/jumbo v2, "application/javascript"

    .line 103
    :goto_0
    return-object v2

    .line 100
    :cond_0
    if-eqz v0, :cond_1

    .line 101
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 103
    goto :goto_0
.end method

.method public static getUrlWithOutQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 190
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "query":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    move-object v2, p0

    .line 200
    .end local v0    # "query":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 196
    .restart local v0    # "query":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "?"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .local v2, "urlWithoutQuery":Ljava/lang/String;
    goto :goto_0

    .line 200
    .end local v0    # "query":Ljava/lang/String;
    .end local v2    # "urlWithoutQuery":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    .line 145
    .local v0, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    if-eqz v0, :cond_2

    .line 146
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 159
    :goto_0
    return-object v1

    .line 150
    .end local v0    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->sUserId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    sget-object v1, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->sUserId:Ljava/lang/String;

    goto :goto_0

    .line 153
    :cond_1
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    .line 154
    .restart local v0    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    if-eqz v0, :cond_2

    .line 155
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 156
    sput-object v1, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->sUserId:Ljava/lang/String;

    goto :goto_0

    .line 159
    :cond_2
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static isApk(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->getUrlWithOutQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "urlWithoutQuery":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isForeground()Z
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 47
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 48
    const/4 v1, 0x1

    .line 50
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isM40(Ljava/lang/String;)Z
    .locals 1
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "2.11"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMainDoc(I)Z
    .locals 1
    .param p0, "requestType"    # I

    .prologue
    const/4 v0, 0x1

    .line 163
    if-eqz p0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUploadAllStack()Z
    .locals 2

    .prologue
    .line 120
    const-string/jumbo v0, "no"

    const-string/jumbo v1, "h5_upload_allStack"

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUrlMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static matchMultimediaImageType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 168
    const-string/jumbo v3, "h5_multiMediaAppList"

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .line 170
    .local v0, "multiMediaAppList":Lcom/alibaba/fastjson/JSONArray;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 171
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 174
    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "type":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "jpeg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "png"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "webp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    .end local v1    # "type":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static stringify(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 107
    if-nez p0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    .line 112
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isUploadAllStack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static tinyProcessUseSpdy(Ljava/lang/String;)Z
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 129
    const-string/jumbo v2, "h5_use_spdy_initTinyProcess"

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 131
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 132
    .local v0, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    const-string/jumbo v2, "all"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    :cond_0
    const-string/jumbo v2, "CommonUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " contain appId "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not use spdy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v2, 0x0

    .line 139
    .end local v0    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
