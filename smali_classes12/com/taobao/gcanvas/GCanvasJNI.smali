.class public Lcom/taobao/gcanvas/GCanvasJNI;
.super Ljava/lang/Object;
.source "GCanvasJNI.java"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 28
    sput-boolean v0, Lcom/taobao/gcanvas/GCanvasJNI;->a:Z

    .line 30
    :try_start_0
    const-string/jumbo v0, "gcanvas"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    const-string/jumbo v0, "freetype"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/gcanvas/GCanvasJNI;->a:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    :goto_0
    :try_start_1
    const-string/jumbo v0, "gcPng"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 47
    :goto_1
    return-void

    .line 34
    :catch_0
    move-exception v0

    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "gcanvas is not found."

    invoke-static {v0, v1}, Ljmj;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :catch_1
    move-exception v0

    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "fail to load gcanvas."

    invoke-static {v0, v1}, Ljmj;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :catch_2
    move-exception v0

    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "png optimization is not found."

    invoke-static {v0, v1}, Ljmj;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 44
    :catch_3
    move-exception v0

    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "fail to load png optimization."

    invoke-static {v0, v1}, Ljmj;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 18

    .prologue
    .line 128
    new-instance v13, Ljmh;

    invoke-direct {v13}, Ljmh;-><init>()V

    .line 1066
    .local v13, "parser":Ljmh;
    new-instance v15, Ljava/io/File;

    const-string/jumbo v16, "/system/fonts/DroidSansFallbackBBK.ttf"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1067
    const-string/jumbo v1, "DroidSansFallbackBBK.ttf"

    .line 1084
    .local v1, "fallbackFont":Ljava/lang/String;
    :goto_0
    const-string/jumbo v14, "/system/fonts/"

    .line 131
    .local v14, "systemFontLocation":Ljava/lang/String;
    invoke-static {v1, v14}, Lcom/taobao/gcanvas/GCanvasJNI;->setFallbackFont(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    iget-object v4, v13, Ljmh;->a:Ljava/util/HashMap;

    .line 136
    .local v4, "fontFamilies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v4, :cond_5

    .line 137
    const-string/jumbo v15, "CANVAS"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "setFontFamilies() fontFamilies.size() "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Ljmj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :goto_1
    if-eqz v4, :cond_8

    .line 144
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 145
    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 146
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 147
    .local v10, "fontNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 148
    .local v9, "fontNameSize":I
    new-array v8, v9, [Ljava/lang/String;

    .line 149
    .local v8, "fontNameArray":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    if-ge v11, v9, :cond_6

    .line 150
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    aput-object v15, v8, v11

    .line 149
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1068
    .end local v1    # "fallbackFont":Ljava/lang/String;
    .end local v4    # "fontFamilies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v8    # "fontNameArray":[Ljava/lang/String;
    .end local v9    # "fontNameSize":I
    .end local v10    # "fontNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v14    # "systemFontLocation":Ljava/lang/String;
    :cond_0
    new-instance v15, Ljava/io/File;

    const-string/jumbo v16, "/system/fonts/NotoSansHans-Regular.otf"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1070
    const-string/jumbo v1, "NotoSansHans-Regular.otf"

    goto :goto_0

    .line 1071
    :cond_1
    new-instance v15, Ljava/io/File;

    const-string/jumbo v16, "/system/fonts/NotoSansSC-Regular.otf"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1072
    const-string/jumbo v1, "NotoSansSC-Regular.otf"

    goto :goto_0

    .line 1073
    :cond_2
    new-instance v15, Ljava/io/File;

    const-string/jumbo v16, "/system/fonts/NotoSansCJK-Regular.ttc"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1074
    const-string/jumbo v1, "NotoSansCJK-Regular.ttc"

    goto/16 :goto_0

    .line 1075
    :cond_3
    new-instance v15, Ljava/io/File;

    const-string/jumbo v16, "/system/fonts/DroidSansFallback.ttf"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1076
    const-string/jumbo v1, "DroidSansFallback.ttf"

    goto/16 :goto_0

    .line 1078
    :cond_4
    const-string/jumbo v1, "DroidSans.ttf"

    goto/16 :goto_0

    .line 139
    .restart local v1    # "fallbackFont":Ljava/lang/String;
    .restart local v4    # "fontFamilies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v14    # "systemFontLocation":Ljava/lang/String;
    :cond_5
    const-string/jumbo v15, "CANVAS"

    const-string/jumbo v16, "setFontFamilies() error! fontFamilies is empty"

    invoke-static/range {v15 .. v16}, Ljmj;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 153
    .restart local v8    # "fontNameArray":[Ljava/lang/String;
    .restart local v9    # "fontNameSize":I
    .restart local v10    # "fontNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "i":I
    .restart local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_6
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 154
    .local v7, "fontFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 155
    .local v6, "fontFileSize":I
    new-array v5, v6, [Ljava/lang/String;

    .line 156
    .local v5, "fontFileArray":[Ljava/lang/String;
    const/4 v11, 0x0

    :goto_4
    if-ge v11, v6, :cond_7

    .line 157
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    aput-object v15, v5, v11

    .line 156
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 160
    :cond_7
    invoke-static {v8, v5}, Lcom/taobao/gcanvas/GCanvasJNI;->addFontFamily([Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2061
    .end local v5    # "fontFileArray":[Ljava/lang/String;
    .end local v6    # "fontFileSize":I
    .end local v7    # "fontFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "fontNameArray":[Ljava/lang/String;
    .end local v9    # "fontNameSize":I
    .end local v10    # "fontNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_8
    iget-object v3, v13, Ljmh;->b:Ljava/util/List;

    .line 166
    .local v3, "fallbackfontFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_9

    .line 177
    :goto_5
    return-void

    .line 170
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 171
    .local v2, "fallbackfontFileSize":I
    new-array v0, v2, [Ljava/lang/String;

    .line 172
    .local v0, "FallbackFileArray":[Ljava/lang/String;
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_6
    if-ge v11, v2, :cond_a

    .line 173
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    aput-object v15, v0, v11

    .line 172
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 176
    :cond_a
    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvasJNI;->addFallbackFontFamily([Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "libraryPath":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/libweexcore.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "start to load gcanvas library,path="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljmj;->b(Ljava/lang/String;)V

    .line 101
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GCanvasJNI;->registerCallback(Ljava/lang/String;I)V

    .line 102
    return-void
.end method

.method public static native addFallbackFontFamily([Ljava/lang/String;)V
.end method

.method public static native addFontFamily([Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public static native bindTexture(Ljava/lang/String;Landroid/graphics/Bitmap;IIIIII)V
.end method

.method public static native contextLost(Ljava/lang/String;)V
.end method

.method public static native destroyWVGRef()J
.end method

.method public static native getImageData(Ljava/lang/String;IIII)Ljava/lang/String;
.end method

.method public static native getNativeFps(Ljava/lang/String;)I
.end method

.method public static native getWindvaneNativeFuncPtr()J
.end method

.method public static native isFboSupport(Ljava/lang/String;)Z
.end method

.method public static native isNeonSupport()Z
.end method

.method public static native registerCallback(Ljava/lang/String;I)V
.end method

.method public static native release()V
.end method

.method public static native render(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native sendEvent(Ljava/lang/String;)Z
.end method

.method public static native setBackgroundColor(Ljava/lang/String;III)V
.end method

.method public static native setClearColor(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setConfig(Ljava/lang/String;I)V
.end method

.method public static native setContextType(Ljava/lang/String;I)V
.end method

.method public static native setDevicePixelRatio(Ljava/lang/String;D)V
.end method

.method public static native setFallbackFont(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setHiQuality(Ljava/lang/String;Z)V
.end method

.method public static native setLogLevel(Ljava/lang/String;)V
.end method

.method public static native setOrtho(Ljava/lang/String;II)V
.end method

.method public static native setPreCompilePath(Ljava/lang/String;)V
.end method

.method public static native setTyOffsetFlag(Ljava/lang/String;Z)V
.end method

.method public static native texSubImage2D(Ljava/lang/String;Landroid/graphics/Bitmap;IIIIIII)V
.end method
