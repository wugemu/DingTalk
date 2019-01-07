.class public Lcom/taobao/weex/utils/FontDO;
.super Ljava/lang/Object;
.source "FontDO.java"


# static fields
.field public static final STATE_FAILED:I = 0x3

.field public static final STATE_INIT:I = 0x0

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_LOADING:I = 0x1

.field public static final STATE_SUCCESS:I = 0x2

.field public static final TYPE_BASE64:I = 0x5

.field public static final TYPE_FILE:I = 0x2

.field public static final TYPE_LOCAL:I = 0x3

.field public static final TYPE_NATIVE:I = 0x4

.field public static final TYPE_NETWORK:I = 0x1

.field public static final TYPE_UNKNOWN:I


# instance fields
.field private final mFontFamilyName:Ljava/lang/String;

.field private mState:I

.field private mType:I

.field private mTypeface:Landroid/graphics/Typeface;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "fontFamilyName"    # Ljava/lang/String;
    .param p2, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/weex/utils/FontDO;->mUrl:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/taobao/weex/utils/FontDO;->mType:I

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/weex/utils/FontDO;->mState:I

    .line 58
    iput-object p1, p0, Lcom/taobao/weex/utils/FontDO;->mFontFamilyName:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/taobao/weex/utils/FontDO;->mTypeface:Landroid/graphics/Typeface;

    .line 60
    const/4 v0, 0x4

    iput v0, p0, Lcom/taobao/weex/utils/FontDO;->mType:I

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lcom/taobao/weex/utils/FontDO;->mState:I

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/WXSDKInstance;)V
    .locals 1
    .param p1, "fontFamilyName"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "instance"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/weex/utils/FontDO;->mUrl:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/taobao/weex/utils/FontDO;->mType:I

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/weex/utils/FontDO;->mState:I

    .line 53
    iput-object p1, p0, Lcom/taobao/weex/utils/FontDO;->mFontFamilyName:Ljava/lang/String;

    .line 54
    invoke-direct {p0, p2, p3}, Lcom/taobao/weex/utils/FontDO;->parseSrc(Ljava/lang/String;Lcom/taobao/weex/WXSDKInstance;)V

    .line 55
    return-void
.end method

.method private parseSrc(Ljava/lang/String;Lcom/taobao/weex/WXSDKInstance;)V
    .locals 18
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "instance"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 69
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 70
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 71
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/taobao/weex/utils/FontDO;->mState:I

    .line 72
    const-string/jumbo v14, "TypefaceUtil"

    const-string/jumbo v15, "font src is empty."

    invoke-static {v14, v15}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    :goto_1
    return-void

    .line 69
    :cond_1
    const-string/jumbo p1, ""

    goto :goto_0

    .line 76
    :cond_2
    const-string/jumbo v14, "^url\\(\'.*\'\\)$"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 77
    const/4 v14, 0x5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 78
    .local v13, "url":Ljava/lang/String;
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 79
    .local v12, "uri":Landroid/net/Uri;
    if-eqz p2, :cond_3

    .line 80
    const-string/jumbo v14, "font"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 82
    :cond_3
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/taobao/weex/utils/FontDO;->mUrl:Ljava/lang/String;

    .line 84
    :try_start_0
    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, "scheme":Ljava/lang/String;
    const-string/jumbo v14, "http"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string/jumbo v14, "https"

    .line 86
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 87
    :cond_4
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/taobao/weex/utils/FontDO;->mType:I

    .line 123
    :cond_5
    :goto_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/taobao/weex/utils/FontDO;->mState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v8    # "scheme":Ljava/lang/String;
    .end local v12    # "uri":Landroid/net/Uri;
    .end local v13    # "url":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 134
    const-string/jumbo v14, "TypefaceUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "src:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", mUrl:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/utils/FontDO;->mUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", mType:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/taobao/weex/utils/FontDO;->mType:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 88
    .restart local v8    # "scheme":Ljava/lang/String;
    .restart local v12    # "uri":Landroid/net/Uri;
    .restart local v13    # "url":Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string/jumbo v14, "file"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 89
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/taobao/weex/utils/FontDO;->mType:I

    .line 90
    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/taobao/weex/utils/FontDO;->mUrl:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 124
    .end local v8    # "scheme":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 125
    .local v5, "e":Ljava/lang/Exception;
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/taobao/weex/utils/FontDO;->mType:I

    .line 126
    const-string/jumbo v14, "TypefaceUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "URI.create(mUrl) failed mUrl: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/utils/FontDO;->mUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v5}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 91
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v8    # "scheme":Ljava/lang/String;
    :cond_7
    :try_start_2
    const-string/jumbo v14, "local"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 92
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/taobao/weex/utils/FontDO;->mType:I

    goto/16 :goto_2

    .line 93
    :cond_8
    const-string/jumbo v14, "data"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 95
    .local v10, "start":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/weex/utils/FontDO;->mUrl:Ljava/lang/String;

    const-string/jumbo v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "data":[Ljava/lang/String;
    if-eqz v4, :cond_5

    array-length v14, v4

    const/4 v15, 0x2

    if-ne v14, v15, :cond_5

    .line 97
    const/4 v14, 0x0

    aget-object v6, v4, v14

    .line 98
    .local v6, "identify":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string/jumbo v14, "base64"

    invoke-virtual {v6, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 100
    const/4 v14, 0x1

    aget-object v2, v4, v14

    .line 101
    .local v2, "base64Data":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 102
    invoke-static {v2}, Lcom/taobao/weex/utils/WXFileUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 103
    .local v7, "md5":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v14

    const-string/jumbo v15, "font-family"

    invoke-direct {v3, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    .local v3, "cacheDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_9

    .line 106
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 108
    :cond_9
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .local v9, "tmpFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_a

    .line 110
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 111
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v2, v15}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v15

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/taobao/weex/utils/WXFileUtils;->saveFile(Ljava/lang/String;[BLandroid/content/Context;)Z

    .line 113
    :cond_a
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/taobao/weex/utils/FontDO;->mUrl:Ljava/lang/String;

    .line 114
    const/4 v14, 0x5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/taobao/weex/utils/FontDO;->mType:I

    .line 115
    const-string/jumbo v14, "TypefaceUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "Parse base64 font cost "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v10

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 120
    .end local v2    # "base64Data":Ljava/lang/String;
    .end local v3    # "cacheDir":Ljava/io/File;
    .end local v4    # "data":[Ljava/lang/String;
    .end local v6    # "identify":Ljava/lang/String;
    .end local v7    # "md5":Ljava/lang/String;
    .end local v9    # "tmpFile":Ljava/io/File;
    .end local v10    # "start":J
    :cond_b
    const-string/jumbo v14, "TypefaceUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "Unknown scheme for font url: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/utils/FontDO;->mUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/taobao/weex/utils/FontDO;->mType:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 129
    .end local v8    # "scheme":Ljava/lang/String;
    .end local v12    # "uri":Landroid/net/Uri;
    .end local v13    # "url":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/taobao/weex/utils/FontDO;->mUrl:Ljava/lang/String;

    .line 130
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/taobao/weex/utils/FontDO;->mState:I

    goto/16 :goto_3
.end method


# virtual methods
.method public getFontFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/taobao/weex/utils/FontDO;->mFontFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/taobao/weex/utils/FontDO;->mState:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/taobao/weex/utils/FontDO;->mType:I

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/taobao/weex/utils/FontDO;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/taobao/weex/utils/FontDO;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/taobao/weex/utils/FontDO;->mState:I

    .line 160
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/taobao/weex/utils/FontDO;->mTypeface:Landroid/graphics/Typeface;

    .line 152
    return-void
.end method
