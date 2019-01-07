.class public Lcom/taobao/weex/utils/TypefaceUtil;
.super Ljava/lang/Object;
.source "TypefaceUtil.java"


# static fields
.field public static final ACTION_TYPE_FACE_AVAILABLE:Ljava/lang/String; = "type_face_available"

.field public static final FONT_CACHE_DIR_NAME:Ljava/lang/String; = "font-family"

.field private static final TAG:Ljava/lang/String; = "TypefaceUtil"

.field private static final sCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/utils/FontDO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/utils/TypefaceUtil;->sCacheMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/utils/TypefaceUtil;->loadLocalFontFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/taobao/weex/utils/TypefaceUtil;->sCacheMap:Ljava/util/Map;

    return-object v0
.end method

.method public static applyFontStyle(Landroid/graphics/Paint;IILjava/lang/String;)V
    .locals 5
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "style"    # I
    .param p2, "weight"    # I
    .param p3, "family"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 77
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 78
    .local v1, "typeface":Landroid/graphics/Typeface;
    if-nez v1, :cond_5

    .line 79
    const/4 v0, 0x0

    .line 84
    .local v0, "oldStyle":I
    :goto_0
    const/4 v2, 0x0

    .line 85
    .local v2, "want":I
    const/4 v3, 0x1

    if-eq p2, v3, :cond_0

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_1

    if-ne p2, v4, :cond_1

    .line 87
    :cond_0
    const/4 v2, 0x1

    .line 90
    :cond_1
    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_3

    if-ne p1, v4, :cond_3

    .line 92
    :cond_2
    or-int/lit8 v2, v2, 0x2

    .line 95
    :cond_3
    if-eqz p3, :cond_4

    .line 96
    invoke-static {p3, v2}, Lcom/taobao/weex/utils/TypefaceUtil;->getOrCreateTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 99
    :cond_4
    if-eqz v1, :cond_6

    .line 100
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 104
    :goto_1
    return-void

    .line 81
    .end local v0    # "oldStyle":I
    .end local v2    # "want":I
    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    .restart local v0    # "oldStyle":I
    goto :goto_0

    .line 102
    .restart local v2    # "want":I
    :cond_6
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_1
.end method

.method private static downloadFontByNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "fullPath"    # Ljava/lang/String;
    .param p2, "fontFamily"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getIWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;

    move-result-object v0

    .line 163
    .local v0, "adapter":Lcom/taobao/weex/adapter/IWXHttpAdapter;
    if-nez v0, :cond_0

    .line 164
    const-string/jumbo v2, "TypefaceUtil"

    const-string/jumbo v3, "downloadFontByNetwork() IWXHttpAdapter == null"

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_0
    return-void

    .line 167
    :cond_0
    new-instance v1, Lcom/taobao/weex/common/WXRequest;

    invoke-direct {v1}, Lcom/taobao/weex/common/WXRequest;-><init>()V

    .line 168
    .local v1, "request":Lcom/taobao/weex/common/WXRequest;
    iput-object p0, v1, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    .line 169
    const-string/jumbo v2, "GET"

    iput-object v2, v1, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    .line 170
    new-instance v2, Lcom/taobao/weex/utils/TypefaceUtil$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/taobao/weex/utils/TypefaceUtil$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/taobao/weex/adapter/IWXHttpAdapter;->sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V

    goto :goto_0
.end method

.method private static getFontCacheDir()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/font-family"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFontDO(Ljava/lang/String;)Lcom/taobao/weex/utils/FontDO;
    .locals 1
    .param p0, "fontFamilyName"    # Ljava/lang/String;

    .prologue
    .line 67
    sget-object v0, Lcom/taobao/weex/utils/TypefaceUtil;->sCacheMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/utils/FontDO;

    return-object v0
.end method

.method public static getOrCreateTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "family"    # Ljava/lang/String;
    .param p1, "style"    # I

    .prologue
    .line 107
    sget-object v1, Lcom/taobao/weex/utils/TypefaceUtil;->sCacheMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/utils/FontDO;

    .line 108
    .local v0, "fontDo":Lcom/taobao/weex/utils/FontDO;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/weex/utils/FontDO;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/taobao/weex/utils/FontDO;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 112
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0
.end method

.method private static loadFromAsset(Lcom/taobao/weex/utils/FontDO;Ljava/lang/String;)V
    .locals 5
    .param p0, "fontDo"    # Lcom/taobao/weex/utils/FontDO;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 117
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 118
    .local v1, "typeface":Landroid/graphics/Typeface;
    if-eqz v1, :cond_1

    .line 119
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const-string/jumbo v2, "TypefaceUtil"

    const-string/jumbo v3, "load asset file success"

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/taobao/weex/utils/FontDO;->setState(I)V

    .line 123
    invoke-virtual {p0, v1}, Lcom/taobao/weex/utils/FontDO;->setTypeface(Landroid/graphics/Typeface;)V

    .line 130
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    :goto_0
    return-void

    .line 125
    .restart local v1    # "typeface":Landroid/graphics/Typeface;
    :cond_1
    const-string/jumbo v2, "TypefaceUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Font asset file not found "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "TypefaceUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static loadLocalFontFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "hasNetworkDowload"    # Z

    .prologue
    const/4 v5, 0x0

    .line 229
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v5

    .line 233
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 237
    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 238
    .local v4, "typeface":Landroid/graphics/Typeface;
    if-eqz v4, :cond_4

    .line 239
    sget-object v6, Lcom/taobao/weex/utils/TypefaceUtil;->sCacheMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/utils/FontDO;

    .line 240
    .local v2, "fontDo":Lcom/taobao/weex/utils/FontDO;
    if-eqz v2, :cond_0

    .line 241
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lcom/taobao/weex/utils/FontDO;->setState(I)V

    .line 242
    invoke-virtual {v2, v4}, Lcom/taobao/weex/utils/FontDO;->setTypeface(Landroid/graphics/Typeface;)V

    .line 243
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 244
    const-string/jumbo v6, "TypefaceUtil"

    const-string/jumbo v7, "load local font file success"

    invoke-static {v6, v7}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_2
    if-eqz p2, :cond_3

    .line 253
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v6

    new-instance v7, Lcom/taobao/weex/utils/TypefaceUtil$2;

    invoke-direct {v7, p1}, Lcom/taobao/weex/utils/TypefaceUtil$2;-><init>(Ljava/lang/String;)V

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v9}, Lcom/taobao/weex/ui/WXRenderManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 266
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 262
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "type_face_available"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "fontFamily"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v6

    invoke-virtual {v6, v3}, Ldq;->a(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 271
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fontDo":Lcom/taobao/weex/utils/FontDO;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "typeface":Landroid/graphics/Typeface;
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "TypefaceUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "typeface":Landroid/graphics/Typeface;
    :cond_4
    :try_start_1
    const-string/jumbo v6, "TypefaceUtil"

    const-string/jumbo v7, "load local font file failed, can\'t create font."

    invoke-static {v6, v7}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static loadTypeface(Lcom/taobao/weex/utils/FontDO;)V
    .locals 11
    .param p0, "fontDo"    # Lcom/taobao/weex/utils/FontDO;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 133
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    if-nez v7, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getState()I

    move-result v7

    if-eq v7, v9, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getState()I

    move-result v7

    if-nez v7, :cond_1

    .line 135
    :cond_0
    invoke-virtual {p0, v8}, Lcom/taobao/weex/utils/FontDO;->setState(I)V

    .line 136
    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getType()I

    move-result v7

    if-ne v7, v9, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 138
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/taobao/weex/utils/TypefaceUtil;->loadFromAsset(Lcom/taobao/weex/utils/FontDO;Ljava/lang/String;)V

    .line 159
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getType()I

    move-result v7

    if-ne v7, v8, :cond_4

    .line 140
    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 141
    .local v6, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getFontFamilyName()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "fontFamily":Ljava/lang/String;
    invoke-static {v6}, Lcom/taobao/weex/utils/WXFileUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/taobao/weex/utils/TypefaceUtil;->getFontCacheDir()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 148
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "fullPath":Ljava/lang/String;
    invoke-static {v3, v2, v10}, Lcom/taobao/weex/utils/TypefaceUtil;->loadLocalFontFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_1

    .line 150
    invoke-static {v6, v3, v2}, Lcom/taobao/weex/utils/TypefaceUtil;->downloadFontByNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "fontFamily":Ljava/lang/String;
    .end local v3    # "fullPath":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5

    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getType()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    .line 153
    :cond_5
    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getFontFamilyName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Lcom/taobao/weex/utils/TypefaceUtil;->loadLocalFontFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 154
    .local v4, "result":Z
    if-nez v4, :cond_1

    .line 155
    invoke-virtual {p0, v9}, Lcom/taobao/weex/utils/FontDO;->setState(I)V

    goto :goto_0
.end method

.method public static putFontDO(Lcom/taobao/weex/utils/FontDO;)V
    .locals 2
    .param p0, "fontDO"    # Lcom/taobao/weex/utils/FontDO;

    .prologue
    .line 51
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getFontFamilyName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/taobao/weex/utils/TypefaceUtil;->sCacheMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/taobao/weex/utils/FontDO;->getFontFamilyName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    return-void
.end method

.method public static registerNativeFont(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "fonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 58
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 59
    .local v0, "font":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    new-instance v1, Lcom/taobao/weex/utils/FontDO;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    invoke-direct {v1, v2, v3}, Lcom/taobao/weex/utils/FontDO;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 60
    .local v1, "fontDO":Lcom/taobao/weex/utils/FontDO;
    invoke-static {v1}, Lcom/taobao/weex/utils/TypefaceUtil;->putFontDO(Lcom/taobao/weex/utils/FontDO;)V

    .line 61
    const-string/jumbo v3, "TypefaceUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "register new typeface: "

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    .end local v0    # "font":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .end local v1    # "fontDO":Lcom/taobao/weex/utils/FontDO;
    :cond_0
    return-void
.end method

.method public static removeFontDO(Ljava/lang/String;)V
    .locals 3
    .param p0, "fontFamilyName"    # Ljava/lang/String;

    .prologue
    .line 71
    const-string/jumbo v0, "TypefaceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/taobao/weex/utils/TypefaceUtil;->sCacheMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method
