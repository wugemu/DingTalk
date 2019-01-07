.class public Lcom/uc/webview/export/internal/setup/UCMPackageInfo;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;
    }
.end annotation


# static fields
.field public static final ARCHS:[Ljava/lang/String;

.field public static final BROWSER_IF_DEX_FILE_USING_SO_SUFFIX:Ljava/lang/String; = "libbrowser_if_jar_kj_uc.so"

.field public static final BROWSER_IF_FOR_EXPORT_FILE_USING_SO_SUFFIX:Ljava/lang/String; = "libbrowser_if_for_export_jar_kj_uc.so"

.field public static final CORE_CLASS_LOADER_IMPL_CLASS:Ljava/lang/String; = "com.uc.webkit.sdk.CoreClassPreLoaderImpl"

.field public static final CORE_FACTORY_IMPL_CLASS:Ljava/lang/String; = "com.uc.webkit.sdk.CoreFactoryImpl"

.field public static final CORE_IMPL_DEX_FILE_USING_SO_SUFFIX:Ljava/lang/String; = "libcore_jar_kj_uc.so"

.field public static final RES_PAKS_DIR_NAME:Ljava/lang/String; = "paks"

.field public static final SDK_SHELL_DEX_FILE_USING_SO_SUFFIX:Ljava/lang/String; = "libsdk_shell_jar_kj_uc.so"

.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field public static final compareVersion:I = 0x272b

.field public static final deleteTempDecFiles:I = 0x2737

.field public static final deleteUCMSDKDir:I = 0x273c

.field public static final expectCreateDirFile2P:I = 0x2733

.field public static final expectDirFile1F:I = 0x2730

.field public static final expectDirFile1S:I = 0x2731

.field public static final getDataDirHash:I = 0x271c

.field public static final getDecompressRoot:I = 0x2713

.field public static final getDir:I = 0x2711

.field public static final getFlagRoot:I = 0x2715

.field public static final getKernalJarCpyRoot:I = 0x2719

.field public static final getKernalJarLnkRoot:I = 0x2717

.field public static final getKernalResCpyRoot:I = 0x271a

.field public static final getKernalResLnkRoot:I = 0x2718

.field public static final getKernalShareJarCpyRoot:I = 0x273f

.field public static final getKernalShareJarLnkRoot:I = 0x273e

.field public static final getKernelFileIfMultiCoreFromDir:I = 0x272c

.field public static final getKernelFiles:I = 0x2726

.field public static final getKernelResFiles:I = 0x2728

.field public static final getLibFilter:I = 0x2727

.field public static final getOdexRoot:I = 0x2714

.field public static final getRepairApolloRoot:I = 0x273d

.field public static final getRepairRoot:I = 0x2716

.field public static final getUnExistsFilePath:I = 0x2725

.field public static final getUpdateRoot:I = 0x2712

.field public static final getVersion:I = 0x2738

.field public static final hadInstallUCMobile:I = 0x272a

.field public static final initUCMBuildInfo:I = 0x2739

.field public static final isDirShouldBeDeleted:I = 0x273b

.field public static final isThickSDK:I = 0x271b

.field public static final makeDirDeleteFlg:I = 0x273a

.field public static final sortByLastModified:I = 0x2729


# instance fields
.field public final browserIFModule:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field public final coreCode:Ljava/lang/String;

.field public final coreImplModule:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final dataDir:Ljava/lang/String;

.field public final disabledFilePath:Ljava/lang/String;

.field public final isSpecified:Z

.field public mCoreClassLoader:Ljava/lang/ClassLoader;

.field public mSdkShellClassLoader:Ljava/lang/ClassLoader;

.field public final mainLibrary:Ljava/lang/String;

.field public final pkgName:Ljava/lang/String;

.field public final resDirPath:Ljava/lang/String;

.field public final sdkShellModule:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final soDirPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 199
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "webviewuc"

    aput-object v1, v0, v2

    sput-object v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a:[Ljava/lang/String;

    .line 204
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "imagehelper"

    aput-object v1, v0, v2

    sput-object v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->b:[Ljava/lang/String;

    .line 208
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "armeabi-v7a"

    aput-object v1, v0, v2

    const-string/jumbo v1, "armeabi"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "x86"

    aput-object v2, v0, v1

    sput-object v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->ARCHS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->mSdkShellClassLoader:Ljava/lang/ClassLoader;

    .line 216
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->mCoreClassLoader:Ljava/lang/ClassLoader;

    .line 242
    invoke-static/range {p3 .. p3}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 243
    invoke-static/range {p4 .. p4}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-static/range {p5 .. p5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 245
    invoke-static/range {p7 .. p7}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 246
    invoke-static/range {p8 .. p8}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 247
    invoke-static/range {p9 .. p9}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 248
    invoke-static/range {p10 .. p10}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 250
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iput-object v9, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->c:Landroid/content/Context;

    .line 251
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->pkgName:Ljava/lang/String;

    .line 252
    iput-object v7, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    .line 253
    if-eqz p11, :cond_0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    :cond_0
    if-nez v2, :cond_5

    const/4 v2, 0x0

    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->resDirPath:Ljava/lang/String;

    .line 255
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->isSpecified:Z

    .line 257
    if-eqz v3, :cond_a

    .line 258
    const/16 v9, 0x2733

    const/4 v2, 0x2

    new-array v10, v2, [Ljava/lang/Object;

    const/4 v11, 0x0

    if-nez v8, :cond_6

    const/16 v2, 0x2714

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v8, v12

    .line 259
    invoke-static {v2, v8}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    :goto_1
    aput-object v2, v10, v11

    const/4 v8, 0x1

    const/16 v11, 0x271c

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 260
    if-eqz p1, :cond_7

    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v3, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_2
    aput-object v2, v12, v13

    invoke-static {v11, v12}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v10, v8

    .line 258
    invoke-static {v9, v10}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 261
    iput-object v3, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    .line 262
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/e1df430e25e9dacb26ead508abb3413f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->disabledFilePath:Ljava/lang/String;

    .line 264
    new-instance v8, Landroid/util/Pair;

    if-eqz p11, :cond_2

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v4, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v8, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    .line 265
    new-instance v8, Landroid/util/Pair;

    if-eqz p11, :cond_8

    move-object/from16 v0, p1

    invoke-static {v0, v3, v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v8, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    .line 266
    new-instance v4, Landroid/util/Pair;

    if-eqz p11, :cond_9

    move-object/from16 v0, p1

    invoke-static {v0, v3, v6}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    .line 275
    :goto_5
    invoke-static {v7}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    :goto_6
    const/4 v4, 0x0

    .line 277
    sget-object v6, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a:[Ljava/lang/String;

    array-length v8, v6

    const/4 v3, 0x0

    move v5, v3

    move-object v3, v4

    :goto_7
    if-ge v5, v8, :cond_c

    aget-object v4, v6, v5

    .line 279
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "lib"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".so"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_4

    :cond_3
    move-object v3, v4

    .line 278
    :cond_4
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_7

    .line 254
    :cond_5
    const-string/jumbo v9, "/"

    invoke-virtual {v2, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v9, "/"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 259
    :cond_6
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    move-object v2, v3

    .line 260
    goto/16 :goto_2

    :cond_8
    move-object v4, v5

    .line 265
    goto/16 :goto_3

    :cond_9
    move-object v3, v6

    .line 266
    goto/16 :goto_4

    .line 268
    :cond_a
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    .line 269
    const/16 v2, 0x2725

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->disabledFilePath:Ljava/lang/String;

    .line 270
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    .line 271
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    .line 272
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    goto/16 :goto_5

    :cond_b
    move-object v2, v7

    .line 275
    goto/16 :goto_6

    .line 286
    :cond_c
    if-nez v3, :cond_d

    invoke-static {v7}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 287
    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v3, 0xbb9

    const-string/jumbo v4, "Main so file U4 [%s] not exists."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "webviewuc"

    aput-object v7, v5, v6

    .line 288
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 291
    :cond_d
    iput-object v3, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->mainLibrary:Ljava/lang/String;

    .line 293
    const-string/jumbo v3, "webviewuc"

    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->mainLibrary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string/jumbo v3, "u4"

    :goto_8
    iput-object v3, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreCode:Ljava/lang/String;

    .line 299
    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreCode:Ljava/lang/String;

    const-string/jumbo v4, "u4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 300
    sget-object v4, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->b:[Ljava/lang/String;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v5, :cond_12

    aget-object v6, v4, v3

    .line 301
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "lib"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".so"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "lib"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, ".so"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 304
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    .line 306
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v6, v12, v10

    if-gez v6, :cond_f

    .line 307
    :cond_e
    const/4 v6, 0x0

    invoke-static {v7, v8, v8, v6}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)Ljava/io/File;

    .line 300
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 293
    :cond_10
    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->mainLibrary:Ljava/lang/String;

    if-nez v3, :cond_11

    const-string/jumbo v3, "null"

    goto :goto_8

    :cond_11
    const-string/jumbo v3, "error"

    goto/16 :goto_8

    .line 312
    :cond_12
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/UCMPackageInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .prologue
    .line 1251
    invoke-static {p2}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v1

    .line 1252
    invoke-static {p3}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v2

    .line 1253
    invoke-static/range {p4 .. p4}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v3

    .line 1256
    if-eqz v1, :cond_1

    const/16 v0, 0x271b

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1257
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 1259
    const/4 v0, 0x0

    .line 1294
    :goto_0
    return-object v0

    .line 1262
    :cond_0
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xbba

    const-string/jumbo v2, "No ucm dex file specified."

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1270
    :cond_1
    if-nez v1, :cond_2

    .line 1271
    const/16 v0, 0x2731

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1273
    const-string/jumbo v1, "core.jar"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 1276
    :try_start_0
    const-string/jumbo v1, "sdk_shell.jar"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1282
    :goto_1
    :try_start_1
    const-string/jumbo v1, "browser_if.jar"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 1294
    :goto_2
    new-instance v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    if-nez p1, :cond_3

    const-string/jumbo v2, "specified"

    :goto_3
    const/4 v6, 0x1

    const/4 v11, 0x0

    move-object v1, p0

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, p2

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1278
    :catch_0
    move-exception v1

    const/4 v7, 0x0

    goto :goto_1

    .line 1284
    :catch_1
    move-exception v0

    const/4 v8, 0x0

    .line 1287
    goto :goto_2

    .line 1288
    :cond_2
    const/4 v7, 0x0

    .line 1289
    const/4 v8, 0x0

    .line 1290
    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    move-object v2, p1

    .line 1294
    goto :goto_3
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 22

    .prologue
    .line 1093
    invoke-static/range {p2 .. p2}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1094
    const/4 v4, 0x0

    .line 1143
    :goto_0
    return-object v4

    .line 1096
    :cond_0
    const/16 v4, 0x2731

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 1098
    const/16 v5, 0x2728

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 1099
    if-eqz v5, :cond_1

    array-length v6, v5

    if-nez v6, :cond_2

    .line 1100
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1103
    :cond_2
    const/16 v6, 0x271c

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1104
    const/16 v8, 0x2733

    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v7, 0x2718

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p0, v11, v12

    invoke-static {v7, v11}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    aput-object v7, v9, v10

    const/4 v7, 0x1

    aput-object v6, v9, v7

    invoke-static {v8, v9}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 1105
    const/16 v9, 0x2733

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v8, 0x271a

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p0, v12, v13

    invoke-static {v8, v12}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    aput-object v8, v10, v11

    const/4 v8, 0x1

    aput-object v6, v10, v8

    invoke-static {v9, v10}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 1107
    const/16 v8, 0x2733

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "paks"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 1108
    const/16 v9, 0x2733

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "paks"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    .line 1110
    array-length v10, v5

    new-array v13, v10, [Ljava/io/File;

    .line 1111
    array-length v10, v5

    new-array v14, v10, [Ljava/io/File;

    .line 1112
    array-length v10, v5

    new-array v15, v10, [Ljava/io/File;

    .line 1113
    const/4 v12, 0x1

    .line 1115
    new-instance v16, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct/range {v16 .. v16}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 1116
    const/4 v10, 0x0

    :goto_1
    array-length v11, v5

    if-ge v10, v11, :cond_5

    .line 1117
    aget-object v11, v5, v10

    .line 1118
    const-string/jumbo v17, "_pak_kr_uc.so"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    .line 1120
    const/16 v18, 0x3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x9

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 1121
    const/16 v19, 0x5f

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v19

    .line 1122
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x2e

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1124
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1125
    new-instance v20, Ljava/io/File;

    if-eqz v17, :cond_3

    move-object v11, v8

    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1126
    new-instance v21, Ljava/io/File;

    if-eqz v17, :cond_4

    move-object v11, v9

    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1128
    aput-object v19, v13, v10

    .line 1129
    aput-object v20, v14, v10

    .line 1130
    aput-object v21, v15, v10

    .line 1116
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    move-object v11, v7

    .line 1125
    goto :goto_2

    :cond_4
    move-object v11, v6

    .line 1126
    goto :goto_3

    .line 1133
    :cond_5
    invoke-static {v13, v14, v15}, Lcom/uc/webview/export/internal/utility/j;->a([Ljava/io/File;[Ljava/io/File;[Ljava/io/File;)[Ljava/io/File;

    move-result-object v4

    .line 1134
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "getLnkOrCpyResDirFromSO: file count:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " time:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1135
    invoke-virtual/range {v16 .. v16}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1136
    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-object v5, v14, v5

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    .line 1137
    :goto_4
    if-nez v4, :cond_8

    .line 1138
    const/4 v4, 0x0

    .line 1140
    :goto_5
    if-nez v4, :cond_7

    .line 1141
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1136
    :cond_6
    const/4 v4, 0x0

    goto :goto_4

    .line 1143
    :cond_7
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_8
    move v4, v12

    goto :goto_5
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 225
    :cond_0
    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Lcom/uc/webview/export/internal/setup/UCMPackageInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/uc/webview/export/internal/setup/UCMPackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v11, 0x0

    .line 1316
    if-eqz p2, :cond_5

    .line 1318
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1319
    new-instance v7, Ljava/io/File;

    const-string/jumbo v0, "sdk_shell.jar"

    invoke-direct {v7, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1320
    new-instance v8, Ljava/io/File;

    const-string/jumbo v0, "browser_if.jar"

    invoke-direct {v8, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1321
    new-instance v9, Ljava/io/File;

    const-string/jumbo v0, "core.jar"

    invoke-direct {v9, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1322
    new-instance v1, Ljava/io/File;

    const-string/jumbo v0, "lib"

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1325
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->n:Z

    if-eqz v0, :cond_0

    .line 1326
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->n:Z

    if-eqz v0, :cond_1

    .line 1327
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1328
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    move v3, v6

    .line 1330
    :goto_1
    if-eqz v3, :cond_3

    .line 1331
    sget-object v4, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->ARCHS:[Ljava/lang/String;

    array-length v5, v4

    move v2, v11

    :goto_2
    if-ge v2, v5, :cond_2

    aget-object v10, v4, v2

    .line 1332
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1333
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v1, v0

    .line 1340
    :cond_2
    new-instance v4, Ljava/io/File;

    const-string/jumbo v0, "assets"

    invoke-direct {v4, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1343
    if-eqz v3, :cond_3

    .line 1344
    new-instance v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    const-string/jumbo v2, "specified"

    .line 1346
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1347
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1348
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 1350
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 1351
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 1352
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1344
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1360
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1361
    if-eqz v0, :cond_8

    .line 1362
    array-length v1, v0

    :goto_3
    if-ge v11, v1, :cond_8

    aget-object v2, v0, v11

    .line 1363
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1364
    invoke-static {p0, v2, p2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    .line 1362
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1316
    :cond_5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0

    :cond_6
    move v3, v11

    .line 1328
    goto :goto_1

    .line 1331
    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 1370
    :cond_8
    return-object p2
.end method

.method static declared-synchronized a(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/uc/webview/export/internal/setup/UCMPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    const-class v7, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    monitor-enter v7

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 416
    const-string/jumbo v0, "dexFilePath"

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 417
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 418
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v6}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 422
    :cond_0
    const-string/jumbo v0, "set_odex_path"

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 423
    if-nez v0, :cond_5

    .line 424
    const/16 v0, 0x2714

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 426
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 429
    const/4 v1, 0x0

    const-string/jumbo v0, "dexFilePath"

    .line 431
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v0, "soFilePath"

    .line 432
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v0, "resFilePath"

    .line 433
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, p0

    .line 429
    invoke-static/range {v0 .. v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    move-result-object v0

    .line 435
    if-eqz v0, :cond_1

    .line 436
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_1
    const/16 v0, 0x271b

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v6

    .line 469
    :goto_1
    monitor-exit v7

    return-object v0

    .line 447
    :cond_2
    :try_start_1
    const-string/jumbo v0, "ucmKrlDir"

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 448
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 449
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v6}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 455
    :cond_3
    const-string/jumbo v0, "ucmLibDir"

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 456
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 457
    invoke-static {p0, v0, v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    move-result-object v0

    .line 459
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_4
    const/16 v0, 0x2729

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_5
    move-object v5, v0

    goto/16 :goto_0
.end method

.method private static a(J)V
    .locals 4

    .prologue
    .line 1580
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v1, "sc_lsuk"

    new-instance v2, Lcom/uc/webview/export/internal/setup/cc;

    invoke-direct {v2, p0, p1}, Lcom/uc/webview/export/internal/setup/cc;-><init>(J)V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->statAKV(Landroid/util/Pair;)V

    .line 1585
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x2733

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1148
    invoke-static {p2}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1149
    const/4 p2, 0x0

    .line 1167
    :cond_0
    :goto_0
    return-object p2

    .line 1151
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1153
    const-string/jumbo v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "_jar_kj_uc.so"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0xd

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1160
    const/16 v0, 0x271c

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p1, v1, v7

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1161
    new-array v2, v6, [Ljava/lang/Object;

    const/16 v1, 0x2717

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v7

    invoke-static {v1, v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    aput-object v1, v2, v7

    aput-object v0, v2, v8

    invoke-static {v9, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1162
    new-array v5, v6, [Ljava/lang/Object;

    const/16 v2, 0x2719

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p0, v6, v7

    invoke-static {v2, v6}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    aput-object v2, v5, v7

    aput-object v0, v5, v8

    invoke-static {v9, v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1164
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1165
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1167
    invoke-static {v3, v2, v1, v7}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/UCMPackageInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .prologue
    .line 1203
    move-object v1, p0

    :goto_0
    const/16 v0, 0x2731

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/io/File;

    .line 1205
    const/4 v7, 0x0

    .line 1206
    const/4 v8, 0x0

    .line 1207
    :try_start_0
    const-string/jumbo v0, "libcore_jar_kj_uc.so"

    invoke-static {v5, v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1226
    :try_start_1
    const-string/jumbo v0, "libsdk_shell_jar_kj_uc.so"

    invoke-static {v5, v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    .line 1230
    :goto_1
    :try_start_2
    const-string/jumbo v0, "libbrowser_if_jar_kj_uc.so"

    invoke-static {v5, v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v8

    .line 1233
    :goto_2
    new-instance v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    const-string/jumbo v2, "specified"

    .line 1235
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1236
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1237
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v11, 0x1

    move-object v10, p2

    invoke-direct/range {v0 .. v11}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1233
    return-object v0

    .line 1211
    :catch_0
    move-exception v0

    .line 1212
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 1213
    if-eqz v4, :cond_2

    .line 1214
    sget-object v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->ARCHS:[Ljava/lang/String;

    array-length v6, v5

    const/4 v2, 0x0

    move v3, v2

    :goto_3
    if-ge v3, v6, :cond_2

    aget-object v7, v5, v3

    .line 1215
    array-length v8, v4

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v8, :cond_1

    aget-object v9, v4, v2

    .line 1216
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1217
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1215
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1214
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 1222
    :cond_2
    throw v0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static checkNeedDecompress(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1374
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1375
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1384
    :goto_0
    return v0

    .line 1377
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1378
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1379
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    .line 1380
    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    invoke-static {p0, v0, p2}, Lcom/uc/webview/export/internal/setup/br;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1381
    goto :goto_0

    .line 1384
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static varargs invoke(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    const/16 v1, 0x2711

    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 524
    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 908
    :cond_0
    :goto_1
    :pswitch_0
    return-object v4

    .line 526
    :pswitch_1
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 527
    array-length v1, p1

    if-lt v1, v8, :cond_1

    aget-object v1, p1, v5

    check-cast v1, Ljava/lang/String;

    .line 529
    :goto_2
    const-string/jumbo v2, "ucmsdk"

    invoke-virtual {v0, v2, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 530
    if-eqz v1, :cond_0

    .line 533
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v1, v4

    .line 527
    goto :goto_2

    .line 537
    :pswitch_2
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 538
    aget-object v1, p1, v5

    check-cast v1, Ljava/io/File;

    .line 539
    aget-object v2, p1, v8

    check-cast v2, Ljava/io/File;

    .line 543
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v4

    move v7, v5

    .line 552
    :goto_3
    if-eqz v7, :cond_0

    .line 553
    invoke-static {v1, v6, v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    .line 554
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v3, :cond_0

    .line 555
    const/16 v1, 0x273a

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v6

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 545
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 546
    const/16 v3, 0x273b

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v0, v7, v6

    aput-object v1, v7, v5

    invoke-static {v3, v7}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 547
    if-eqz v3, :cond_e

    move v7, v5

    .line 548
    goto :goto_3

    .line 563
    :pswitch_3
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 564
    aget-object v1, p1, v5

    check-cast v1, Ljava/io/File;

    .line 565
    const/16 v2, 0x2715

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 568
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "setup_delete"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 570
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 571
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    move-object v4, v0

    .line 576
    goto/16 :goto_1

    .line 580
    :pswitch_4
    aget-object v0, p1, v5

    check-cast v0, Ljava/io/File;

    .line 582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 584
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v0

    .line 585
    if-nez v0, :cond_0

    .line 586
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "createNewFile return false"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :catch_0
    move-exception v0

    .line 588
    new-instance v1, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v2, 0x3ee

    invoke-direct {v1, v2, v0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 595
    :pswitch_5
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 597
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string/jumbo v0, "updates"

    aput-object v0, p1, v5

    move p0, v1

    goto/16 :goto_0

    .line 601
    :pswitch_6
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 603
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string/jumbo v0, "decompresses2"

    aput-object v0, p1, v5

    move p0, v1

    goto/16 :goto_0

    .line 607
    :pswitch_7
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 608
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string/jumbo v0, "odexs"

    aput-object v0, p1, v5

    move p0, v1

    goto/16 :goto_0

    .line 612
    :pswitch_8
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 614
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string/jumbo v0, "flags"

    aput-object v0, p1, v5

    move p0, v1

    goto/16 :goto_0

    .line 618
    :pswitch_9
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 620
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string/jumbo v0, "repairs"

    aput-object v0, p1, v5

    move p0, v1

    goto/16 :goto_0

    .line 624
    :pswitch_a
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 626
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string/jumbo v0, "kjlinks"

    aput-object v0, p1, v5

    move p0, v1

    goto/16 :goto_0

    .line 630
    :pswitch_b
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 631
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string/jumbo v0, "share/kjlinks"

    aput-object v0, p1, v5

    move p0, v1

    goto/16 :goto_0

    .line 635
    :pswitch_c
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 637
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string/jumbo v0, "krlinks"

    aput-object v0, p1, v5

    move p0, v1

    goto/16 :goto_0

    .line 641
    :pswitch_d
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 643
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string/jumbo v0, "kjcopies"

    aput-object v0, p1, v5

    move p0, v1

    goto/16 :goto_0

    .line 647
    :pswitch_e
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 649
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string/jumbo v0, "share/kjcopies"

    aput-object v0, p1, v5

    move p0, v1

    goto/16 :goto_0

    .line 653
    :pswitch_f
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 655
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string/jumbo v0, "krcopies"

    aput-object v0, p1, v5

    move p0, v1

    goto/16 :goto_0

    .line 659
    :pswitch_10
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 661
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string/jumbo v0, "rep_apollo"

    aput-object v0, p1, v5

    move p0, v1

    goto/16 :goto_0

    .line 666
    :pswitch_11
    :try_start_1
    const-string/jumbo v0, "com.uc.webkit.sdk.CoreFactoryImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 667
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto/16 :goto_1

    .line 669
    :catch_1
    move-exception v0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_1

    .line 674
    :pswitch_12
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 676
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 680
    :pswitch_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/unexists/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 684
    :pswitch_14
    aget-object v0, p1, v6

    check-cast v0, Ljava/io/File;

    .line 686
    new-instance v1, Lcom/uc/webview/export/internal/setup/bw;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/bw;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    goto/16 :goto_1

    .line 695
    :pswitch_15
    new-instance v4, Lcom/uc/webview/export/internal/setup/bx;

    invoke-direct {v4}, Lcom/uc/webview/export/internal/setup/bx;-><init>()V

    goto/16 :goto_1

    .line 709
    :pswitch_16
    aget-object v0, p1, v6

    check-cast v0, Ljava/io/File;

    .line 711
    new-instance v1, Lcom/uc/webview/export/internal/setup/by;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/by;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 720
    :pswitch_17
    aget-object v0, p1, v6

    check-cast v0, Ljava/util/List;

    .line 722
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_3

    .line 723
    new-instance v1, Lcom/uc/webview/export/internal/setup/bz;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/bz;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    move-object v4, v0

    .line 730
    goto/16 :goto_1

    .line 734
    :pswitch_18
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 737
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    .line 738
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 741
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 742
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "com.UCMobile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_4

    move v0, v5

    .line 748
    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_1

    .line 752
    :pswitch_19
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 753
    aget-object v1, p1, v5

    check-cast v1, Ljava/lang/String;

    .line 754
    aget-object v2, p1, v8

    check-cast v2, Ljava/lang/String;

    .line 756
    const-string/jumbo v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 757
    const-string/jumbo v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 758
    aget-object v3, v0, v6

    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/j;->c(Ljava/lang/String;)I

    move-result v3

    aget-object v4, v1, v6

    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/j;->c(Ljava/lang/String;)I

    move-result v4

    if-lt v3, v4, :cond_5

    aget-object v3, v0, v5

    .line 759
    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/j;->c(Ljava/lang/String;)I

    move-result v3

    aget-object v4, v1, v5

    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/j;->c(Ljava/lang/String;)I

    move-result v4

    if-lt v3, v4, :cond_5

    aget-object v0, v0, v8

    .line 760
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->c(Ljava/lang/String;)I

    move-result v0

    aget-object v1, v1, v8

    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/j;->c(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 761
    :cond_5
    const-string/jumbo v0, "UCMPackageInfo"

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_1

    .line 764
    :cond_6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_1

    .line 768
    :pswitch_1a
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 769
    sget v1, Lcom/uc/webview/export/Build;->PACK_TYPE:I

    const/16 v2, 0x22

    if-eq v1, v2, :cond_7

    sget v1, Lcom/uc/webview/export/Build;->PACK_TYPE:I

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 774
    :cond_7
    const/16 v1, 0x2731

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 777
    const/16 v1, 0x2726

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    .line 778
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 779
    aget-object v4, v0, v6

    goto/16 :goto_1

    .line 785
    :pswitch_1b
    aget-object v0, p1, v6

    check-cast v0, Ljava/io/File;

    .line 787
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    .line 788
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0x3ea

    const-string/jumbo v3, "Directory [%s] not exists."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_8
    move-object v4, v0

    .line 789
    goto/16 :goto_1

    .line 793
    :pswitch_1c
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 795
    const/16 v1, 0x2730

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    move-object v4, v0

    goto/16 :goto_1

    .line 799
    :pswitch_1d
    aget-object v0, p1, v6

    check-cast v0, Ljava/io/File;

    .line 800
    aget-object v1, p1, v5

    check-cast v1, Ljava/lang/String;

    .line 802
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    goto/16 :goto_1

    .line 806
    :pswitch_1e
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 808
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "curver"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    :try_start_2
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 814
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 815
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 816
    if-eqz v0, :cond_b

    .line 817
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 818
    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 819
    :goto_5
    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v3

    if-eqz v3, :cond_a

    .line 826
    :goto_6
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 830
    :goto_7
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    :goto_8
    move-object v4, v0

    .line 820
    goto/16 :goto_1

    .line 818
    :cond_9
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "/"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 819
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v0

    goto :goto_6

    .line 826
    :cond_b
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 830
    :goto_9
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    .line 833
    :catch_2
    move-exception v0

    goto/16 :goto_1

    .line 822
    :catch_3
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    .line 823
    :goto_a
    :try_start_a
    const-string/jumbo v3, "tag_test_log"

    const-string/jumbo v5, "getVersion"

    invoke-static {v3, v5, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 826
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 830
    :goto_b
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_1

    .line 833
    :catch_4
    move-exception v0

    goto/16 :goto_1

    .line 825
    :catchall_0
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    .line 826
    :goto_c
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 830
    :goto_d
    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 832
    :goto_e
    throw v0

    .line 839
    :pswitch_1f
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/ClassLoader;

    .line 841
    if-nez v0, :cond_c

    .line 846
    :try_start_f
    const-string/jumbo v1, "com.uc.webview.browser.shell.Build$Version"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 851
    :goto_f
    const-string/jumbo v2, "NAME"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 852
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 854
    const-string/jumbo v3, "SUPPORT_SDK_MIN"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 855
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 857
    sput-object v2, Lcom/uc/webview/export/Build;->UCM_VERSION:Ljava/lang/String;

    .line 858
    sput-object v3, Lcom/uc/webview/export/Build;->UCM_SUPPORT_SDK_MIN:Ljava/lang/String;

    .line 860
    const-string/jumbo v2, "API_LEVEL"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 861
    const/4 v2, 0x0

    .line 862
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/uc/webview/export/Build$Version;->API_LEVEL:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    .line 869
    :goto_10
    :try_start_10
    const-string/jumbo v1, "com.uc.webview.browser.shell.Build"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 870
    const-string/jumbo v1, "CORE_VERSION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 871
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/uc/webview/export/Build;->CORE_VERSION:Ljava/lang/String;

    .line 873
    const-string/jumbo v1, "TIME"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 874
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build;->CORE_TIME:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    .line 876
    :goto_11
    const/16 v0, 0x2744

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    new-instance v0, Lcom/uc/webview/export/internal/setup/ca;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/ca;-><init>()V

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 848
    :cond_c
    :try_start_11
    const-string/jumbo v1, "com.uc.webview.browser.shell.Build$Version"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    move-result-object v1

    goto/16 :goto_f

    .line 863
    :catch_5
    move-exception v1

    .line 864
    const-string/jumbo v2, "UCMPackageInfo"

    const-string/jumbo v3, "exception"

    invoke-static {v2, v3, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 865
    sput v5, Lcom/uc/webview/export/Build$Version;->API_LEVEL:I

    goto :goto_10

    .line 891
    :pswitch_20
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 893
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/uc/webview/export/internal/setup/cb;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/cb;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 900
    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    .line 901
    array-length v2, v1

    move v0, v6

    :goto_12
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 902
    invoke-static {v3, v6, v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :catch_6
    move-exception v1

    goto/16 :goto_7

    :catch_7
    move-exception v1

    goto/16 :goto_8

    :catch_8
    move-exception v0

    goto/16 :goto_9

    :catch_9
    move-exception v0

    goto/16 :goto_b

    :catch_a
    move-exception v1

    goto/16 :goto_d

    :catch_b
    move-exception v1

    goto/16 :goto_e

    :catch_c
    move-exception v0

    goto :goto_11

    .line 825
    :catchall_1
    move-exception v0

    move-object v1, v4

    goto/16 :goto_c

    :catchall_2
    move-exception v0

    goto/16 :goto_c

    .line 822
    :catch_d
    move-exception v0

    move-object v1, v4

    goto/16 :goto_a

    :catch_e
    move-exception v0

    goto/16 :goto_a

    :cond_d
    move v0, v6

    goto/16 :goto_4

    :cond_e
    move v7, v6

    goto/16 :goto_3

    :cond_f
    move-object v3, v4

    move v7, v6

    goto/16 :goto_3

    .line 524
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_20
        :pswitch_1e
        :pswitch_1f
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_10
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static listFromSharedApps(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/uc/webview/export/internal/setup/UCMPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1588
    const-wide/16 v2, 0x1

    .line 1590
    const-string/jumbo v4, "sc_pkgl"

    invoke-static {v4}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1591
    const-string/jumbo v4, "sc_plist"

    invoke-static {v4}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1592
    invoke-static {v8}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1593
    const-wide/16 v2, 0x4001

    .line 1595
    :cond_0
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1596
    const-wide/32 v6, 0x8000

    or-long/2addr v2, v6

    .line 1598
    :cond_1
    invoke-static {v8}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1600
    :goto_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1602
    :try_start_0
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v5

    if-eqz v5, :cond_3

    .line 1603
    const-wide/16 v4, 0x4

    .line 1604
    :try_start_1
    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v3, 0x7dd

    const-string/jumbo v6, "Please set sc_pkgl or sc_plist parameter!"

    invoke-direct {v2, v3, v6}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1679
    :catch_0
    move-exception v2

    .line 1680
    :goto_1
    :try_start_2
    const-string/jumbo v3, "UCMPackageInfo"

    const-string/jumbo v6, "getAppUCMPackageInfo"

    invoke-static {v3, v6, v2}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1683
    invoke-static {v4, v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(J)V

    .line 1684
    const-string/jumbo v2, "UCMPackageInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "listFromSharedApps.run listShareStat: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    :goto_2
    return-object v13

    :cond_2
    move-object v4, v8

    .line 1598
    goto :goto_0

    .line 1607
    :cond_3
    :try_start_3
    const-string/jumbo v5, "\\^\\^"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1609
    array-length v15, v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v4, 0x0

    move v12, v4

    move-wide v4, v2

    :goto_3
    if-ge v12, v15, :cond_f

    :try_start_4
    aget-object v9, v14, v12

    .line 1610
    invoke-static {v9}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1611
    invoke-static {v8}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1615
    const-wide/16 v2, 0x2000

    or-long/2addr v4, v2

    .line 1609
    :cond_4
    :goto_4
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_3

    .line 1620
    :cond_5
    invoke-static {v8}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1621
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/app_ucmsdk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1624
    :goto_5
    new-instance v3, Ljava/io/File;

    const-string/jumbo v6, "config.json"

    invoke-direct {v3, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    invoke-static {v3}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    .line 1626
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 1627
    const-wide/16 v2, 0x8

    or-long/2addr v4, v2

    .line 1628
    goto :goto_4

    .line 1630
    :cond_6
    new-instance v16, Ljava/io/File;

    const-string/jumbo v3, "/data/data/"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1631
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;

    .line 1632
    iget-object v3, v2, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1633
    new-instance v6, Ljava/io/File;

    iget-object v3, v2, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->c:Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1634
    new-instance v7, Ljava/io/File;

    iget-object v3, v2, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->d:Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1635
    new-instance v18, Ljava/io/File;

    iget-object v3, v2, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->e:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1636
    iget-object v3, v2, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->a:Ljava/lang/String;

    .line 1637
    iget-object v10, v2, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->b:Ljava/lang/String;

    .line 1639
    const/16 v2, 0x272b

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v3, v11, v19

    const/16 v19, 0x1

    sget-object v20, Lcom/uc/webview/export/Build$Version;->SUPPORT_U4_MIN:Ljava/lang/String;

    aput-object v20, v11, v19

    const/16 v19, 0x2

    const-string/jumbo v20, "\u6700\u5c0fu4\u5185\u6838\u7248\u672c\u4e0d\u901a\u8fc7"

    aput-object v20, v11, v19

    invoke-static {v2, v11}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 1640
    const/16 v2, 0x272b

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v10, v19, v20

    const/16 v20, 0x2

    const-string/jumbo v21, "\u6700\u5c0fSDK\u7248\u672c\u4e0d\u901a\u8fc7"

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1641
    if-eqz v11, :cond_7

    if-eqz v2, :cond_7

    .line 1642
    const-string/jumbo v2, "UCMPackageInfo"

    const-string/jumbo v3, "\u7248\u672c\u6821\u9a8c\u901a\u8fc7!!!"

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-eqz v2, :cond_c

    .line 1649
    const-wide/16 v2, 0x10

    or-long v10, v4, v2

    .line 1650
    :try_start_5
    move-object/from16 v0, v16

    invoke-static {v6, v0}, Lcom/uc/webview/export/internal/setup/az;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1651
    const-string/jumbo v2, "UCMPackageInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "checkDexFilePermissions "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failure!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1652
    const-wide/16 v2, 0x20

    or-long v4, v10, v2

    .line 1653
    goto/16 :goto_6

    .line 1644
    :cond_7
    :try_start_6
    const-string/jumbo v2, "UCMPackageInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u7248\u672c\u6821\u9a8c\u4e0d\u901a\u8fc7>>config ucmVersion:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ",SUPPORT_U4_MIN="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lcom/uc/webview/export/Build$Version;->SUPPORT_U4_MIN:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    const-string/jumbo v2, "UCMPackageInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u7248\u672c\u6821\u9a8c\u4e0d\u901a\u8fc7>>config ucmSuportSDKMin:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ",NAME="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_6

    .line 1683
    :catchall_0
    move-exception v2

    :goto_7
    invoke-static {v4, v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(J)V

    .line 1684
    const-string/jumbo v3, "UCMPackageInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "listFromSharedApps.run listShareStat: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1655
    :cond_8
    :try_start_7
    move-object/from16 v0, v16

    invoke-static {v7, v0}, Lcom/uc/webview/export/internal/setup/az;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1656
    const-string/jumbo v2, "UCMPackageInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "checkSoFilePermissions "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failure!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    const-wide/16 v2, 0x40

    or-long v4, v10, v2

    .line 1658
    goto/16 :goto_6

    .line 1660
    :cond_9
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/az;->c(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1661
    const-string/jumbo v2, "UCMPackageInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "checkFilePermissions "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failure!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    const-wide/16 v2, 0x80

    or-long v4, v10, v2

    .line 1663
    goto/16 :goto_6

    .line 1665
    :cond_a
    invoke-static {v8}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object v3, v9

    .line 1666
    :goto_8
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 1665
    invoke-static/range {v2 .. v7}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    move-result-object v2

    .line 1667
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1668
    const-wide/16 v2, 0x100

    or-long v4, v10, v2

    .line 1669
    goto/16 :goto_6

    .line 1665
    :cond_b
    const/4 v3, 0x0

    goto :goto_8

    .line 1670
    :cond_c
    :try_start_8
    const-string/jumbo v2, "UCMPackageInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v10, " or "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v10, " or "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v10, " not exist"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_d

    const-wide/16 v2, 0x1200

    or-long/2addr v4, v2

    .line 1672
    :cond_d
    invoke-virtual {v7}, Ljava/io/File;->exists()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v2

    if-nez v2, :cond_10

    const-wide/16 v2, 0x1400

    or-long/2addr v2, v4

    .line 1673
    :goto_9
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v4

    if-nez v4, :cond_e

    const-wide/16 v4, 0x1800

    or-long/2addr v2, v4

    :cond_e
    :goto_a
    move-wide v4, v2

    .line 1676
    goto/16 :goto_6

    .line 1683
    :cond_f
    invoke-static {v4, v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(J)V

    .line 1684
    const-string/jumbo v2, "UCMPackageInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "listFromSharedApps.run listShareStat: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1683
    :catchall_1
    move-exception v4

    move-object/from16 v22, v4

    move-wide v4, v2

    move-object/from16 v2, v22

    goto/16 :goto_7

    :catchall_2
    move-exception v2

    move-wide v4, v10

    goto/16 :goto_7

    .line 1679
    :catch_1
    move-exception v4

    move-object/from16 v22, v4

    move-wide v4, v2

    move-object/from16 v2, v22

    goto/16 :goto_1

    :catch_2
    move-exception v2

    move-wide v4, v10

    goto/16 :goto_1

    :cond_10
    move-wide v2, v4

    goto :goto_9

    :cond_11
    move-wide v2, v4

    goto :goto_a

    :cond_12
    move-object v2, v9

    goto/16 :goto_5
.end method


# virtual methods
.method public getDirAlias(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 316
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 317
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 318
    if-eqz v0, :cond_5

    .line 319
    const/16 v1, 0x2713

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    const-string/jumbo v0, "dec"

    .line 336
    :goto_0
    return-object v0

    .line 322
    :cond_0
    const/16 v1, 0x2712

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    const-string/jumbo v0, "upd"

    goto :goto_0

    .line 324
    :cond_1
    const/16 v1, 0x2717

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 325
    const-string/jumbo v0, "kjl"

    goto :goto_0

    .line 326
    :cond_2
    const/16 v1, 0x2719

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 327
    const-string/jumbo v0, "kjc"

    goto :goto_0

    .line 328
    :cond_3
    const/16 v1, 0x2716

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 329
    const-string/jumbo v0, "rep"

    goto :goto_0

    .line 331
    :cond_4
    const-string/jumbo v0, "oth"

    goto :goto_0

    .line 334
    :cond_5
    const-string/jumbo v0, "nul"

    goto :goto_0
.end method

.method public getFileHashs()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 340
    new-instance v2, Ljava/util/HashMap;

    const/16 v0, 0x10

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 342
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 343
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;->MD5:Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;

    invoke-static {v3, v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->hashFileContents(Ljava/io/File;Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :goto_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 349
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;->MD5:Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;

    invoke-static {v3, v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->hashFileContents(Ljava/io/File;Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    :goto_1
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 355
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;->MD5:Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;

    invoke-static {v3, v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->hashFileContents(Ljava/io/File;Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :goto_2
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    .line 361
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 362
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 365
    :cond_0
    if-eqz v0, :cond_9

    .line 366
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->mSdkShellClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_7

    .line 374
    const-string/jumbo v0, "com.uc.webview.browser.shell.NativeLibraries"

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->mSdkShellClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_5

    .line 376
    const-string/jumbo v4, "LIBRARIES"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 377
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 378
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    .line 379
    if-eqz v0, :cond_6

    .line 380
    array-length v4, v0

    :goto_3
    if-ge v1, v4, :cond_5

    aget-object v5, v0, v1

    .line 381
    const/4 v6, 0x0

    aget-object v6, v5, v6

    .line 382
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Lcom/uc/webview/export/internal/utility/j;->d(Ljava/lang/String;)J

    .line 383
    const/4 v7, 0x2

    aget-object v5, v5, v7

    .line 384
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 385
    sget-object v8, Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;->MD5:Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;

    invoke-static {v7, v8}, Lcom/uc/webview/export/cyclone/UCCyclone;->hashFileContents(Ljava/io/File;Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;)Ljava/lang/String;

    move-result-object v7

    .line 386
    invoke-static {v5}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 387
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 346
    :cond_1
    const-string/jumbo v0, "core"

    const-string/jumbo v3, "null"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 352
    :cond_2
    const-string/jumbo v0, "browser_if"

    const-string/jumbo v3, "null"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 358
    :cond_3
    const-string/jumbo v0, "sdk_shell"

    const-string/jumbo v3, "null"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 389
    :cond_4
    :try_start_1
    const-string/jumbo v5, "ok"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 400
    :catch_0
    move-exception v0

    const-string/jumbo v0, "NativeLibraries"

    const-string/jumbo v1, "exception"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :cond_5
    :goto_5
    return-object v2

    .line 393
    :cond_6
    :try_start_2
    const-string/jumbo v0, "NativeLibraries"

    const-string/jumbo v1, "null"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 397
    :cond_7
    const-string/jumbo v0, "sdk_shell_cl"

    const-string/jumbo v1, "null"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 403
    :cond_8
    const-string/jumbo v0, "so_dir"

    const-string/jumbo v1, "null"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 406
    :cond_9
    const-string/jumbo v0, "so_path"

    const-string/jumbo v1, "null"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method
