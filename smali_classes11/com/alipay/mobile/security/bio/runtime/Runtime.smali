.class public Lcom/alipay/mobile/security/bio/runtime/Runtime;
.super Ljava/lang/Object;
.source "Runtime.java"


# static fields
.field public static final BUNDLE_NAME_BIOMETRIC:Ljava/lang/String; = "android-phone-securitycommon-biometric"

.field public static final BUNDLE_NAME_EYEMETRIC:Ljava/lang/String; = "android-phone-securitycommon-eyemetric"

.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/Object;

.field private static e:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v10, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 70
    const/4 v4, 0x5

    new-array v4, v4, [Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;

    new-instance v5, Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;

    const-string/jumbo v6, "android-phone-securitycommon-biometric"

    const-string/jumbo v7, "com.alipay.zoloz.toyger.bean.ToygerMetaInfo"

    new-array v8, v11, [Ljava/lang/Integer;

    sget-object v9, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_TOYGER:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    .line 71
    invoke-virtual {v9}, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->getProductID()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-direct {v5, v6, v7, v8}, Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;)V

    aput-object v5, v4, v12

    new-instance v5, Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;

    const-string/jumbo v6, "android-phone-securitycommon-biometric"

    const-string/jumbo v7, "com.alipay.mobile.security.bio.bean.FaceMetaInfo"

    new-array v8, v10, [Ljava/lang/Integer;

    sget-object v9, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_FACE_CHERRY:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    .line 72
    invoke-virtual {v9}, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->getProductID()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    sget-object v9, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_FACE_DUCKEGG:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    invoke-virtual {v9}, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->getProductID()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8}, Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;)V

    aput-object v5, v4, v11

    new-instance v5, Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;

    const-string/jumbo v6, "android-phone-securitycommon-eyemetric"

    const-string/jumbo v7, "com.alipay.mobile.security.bio.bean.FaceEyeMetaInfo"

    new-array v8, v11, [Ljava/lang/Integer;

    sget-object v9, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_FACE_EYE_CHERRY:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    .line 73
    invoke-virtual {v9}, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->getProductID()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-direct {v5, v6, v7, v8}, Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;)V

    aput-object v5, v4, v10

    const/4 v5, 0x3

    new-instance v6, Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;

    const-string/jumbo v7, "android-phone-securitycommon-biometric"

    const-string/jumbo v8, "com.alipay.android.phone.falcon.bean.FalconMetaInfo"

    new-array v9, v11, [Ljava/lang/Integer;

    sget-object v10, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_ID_CARD:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    .line 74
    invoke-virtual {v10}, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->getProductID()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-direct {v6, v7, v8, v9}, Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;

    const-string/jumbo v7, "android-phone-securitycommon-biometric"

    const-string/jumbo v8, "com.alipay.mobile.security.bio.bean.HandWritingMetaInfo"

    new-array v9, v11, [Ljava/lang/Integer;

    sget-object v10, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_HAND_WRITING:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    .line 75
    invoke-virtual {v10}, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->getProductID()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-direct {v6, v7, v8, v9}, Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;)V

    aput-object v6, v4, v5

    .line 70
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/alipay/mobile/security/bio/runtime/Runtime;->a:Ljava/util/List;

    .line 83
    sput-object v13, Lcom/alipay/mobile/security/bio/runtime/Runtime;->d:Ljava/lang/Object;

    .line 86
    :try_start_0
    const-string/jumbo v4, "com.alipay.mobile.framework.b"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 88
    .local v3, "launcherApplicationAgentClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "getmBundleContext"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 89
    .local v2, "getBundleContextMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 91
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 93
    sput-object v4, Lcom/alipay/mobile/security/bio/runtime/Runtime;->d:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 95
    .local v0, "bundleContextClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "getResourcesByBundle"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 96
    sput-object v4, Lcom/alipay/mobile/security/bio/runtime/Runtime;->b:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 98
    const-string/jumbo v4, "findClassLoaderByBundleName"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 99
    sput-object v4, Lcom/alipay/mobile/security/bio/runtime/Runtime;->c:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v0    # "bundleContextClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getBundleContextMethod":Ljava/lang/reflect/Method;
    :goto_0
    sput-object v13, Lcom/alipay/mobile/security/bio/runtime/Runtime;->e:Ljava/lang/Boolean;

    return-void

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Failed to reflect Quinox\'s Bundle APIs : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;)Lcom/alipay/mobile/security/bio/service/BioMetaInfo;
    .locals 4
    .param p0, "item"    # Ljava/lang/Class;

    .prologue
    .line 313
    const/4 v2, 0x0

    .line 315
    .local v2, "metaInfo":Lcom/alipay/mobile/security/bio/service/BioMetaInfo;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/alipay/mobile/security/bio/service/BioMetaInfo;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 321
    :goto_0
    return-object v2

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 318
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOnQuinox"    # Z

    .prologue
    .line 255
    const/4 v8, 0x0

    .line 261
    .local v8, "runtime":I
    const/4 v4, 0x0

    .line 262
    .local v4, "downloadStateKey":Ljava/lang/String;
    const-string/jumbo v10, "com.alipay.mobile.security.bio.eye.Config"

    const-string/jumbo v11, "android-phone-securitycommon-eyemetric"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v10, v11}, Lcom/alipay/mobile/security/bio/runtime/Runtime;->loadClass(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 263
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_0

    .line 269
    :try_start_0
    const-string/jumbo v10, "getDownLoadStateKey"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v3, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 270
    .local v7, "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 271
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v7, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 279
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;

    move-result-object v2

    .line 280
    .local v2, "bioStoreService":Lcom/alipay/mobile/security/bio/service/BioStoreService;
    invoke-virtual {v2, v4}, Lcom/alipay/mobile/security/bio/service/BioStoreService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 281
    .local v9, "value":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 286
    :cond_1
    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    sget-object v14, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->ASSETS_READY:Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    invoke-virtual {v14}, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->getProductID()I

    move-result v14

    int-to-double v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-int v8, v10

    .line 290
    .end local v2    # "bioStoreService":Lcom/alipay/mobile/security/bio/service/BioStoreService;
    .end local v9    # "value":Ljava/lang/String;
    :cond_2
    new-instance v10, Lcom/alipay/mobile/security/bio/service/local/language/LanguageService;

    invoke-direct {v10}, Lcom/alipay/mobile/security/bio/service/local/language/LanguageService;-><init>()V

    invoke-virtual {v10}, Lcom/alipay/mobile/security/bio/service/local/language/LanguageService;->getCurrentLanguage()I

    move-result v6

    .line 291
    .local v6, "lan":I
    mul-int/lit8 v10, v6, 0x4

    add-int/2addr v8, v10

    .line 293
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 272
    .end local v6    # "lan":I
    :catch_0
    move-exception v5

    .line 273
    .local v5, "e":Ljava/lang/Throwable;
    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 7
    .param p0, "bundleName"    # Ljava/lang/String;

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 138
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    :try_start_0
    sget-object v3, Lcom/alipay/mobile/security/bio/runtime/Runtime;->c:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/alipay/mobile/security/bio/runtime/Runtime;->d:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/ClassLoader;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-object v1

    .line 139
    :catch_0
    move-exception v2

    .line 140
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMetaInfos(Landroid/content/Context;)Ljava/lang/String;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    if-nez p0, :cond_0

    .line 213
    new-instance v7, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;

    const-string/jumbo v8, "Context is null"

    invoke-direct {v7, v8}, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 216
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/security/bio/runtime/Runtime;->isRunningOnQuinox(Landroid/content/Context;)Z

    move-result v2

    .line 218
    .local v2, "isOnQuinox":Z
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor;->getFrameworkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 1233
    .local v6, "sdkVersion":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1234
    sget-object v8, Lcom/alipay/mobile/security/bio/runtime/Runtime;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v8, v7

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;

    .line 1235
    iget-object v10, v7, Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;->c:Ljava/util/List;

    if-eqz v10, :cond_1

    iget-object v10, v7, Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1239
    iget-object v10, v7, Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;->b:Ljava/lang/String;

    iget-object v11, v7, Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v10, v11}, Lcom/alipay/mobile/security/bio/runtime/Runtime;->loadClass(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 1240
    if-eqz v10, :cond_2

    .line 1241
    invoke-static {v10}, Lcom/alipay/mobile/security/bio/runtime/Runtime;->a(Ljava/lang/Class;)Lcom/alipay/mobile/security/bio/service/BioMetaInfo;

    move-result-object v10

    .line 1242
    if-eqz v10, :cond_2

    .line 1243
    iget-object v7, v7, Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1244
    int-to-double v12, v8

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v0, v7

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    double-to-int v8, v12

    .line 1245
    goto :goto_1

    :cond_2
    move v7, v8

    move v8, v7

    .line 1248
    goto :goto_0

    .line 1250
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, "sdkModule":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/alipay/mobile/security/bio/runtime/Runtime;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "runtimeInfo":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "metaInfos":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "MetaInfo:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 228
    return-object v3
.end method

.method public static getResourcesByBundleName(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 7
    .param p0, "bundleName"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v2, 0x0

    .line 154
    .local v2, "resources":Landroid/content/res/Resources;
    :try_start_0
    sget-object v3, Lcom/alipay/mobile/security/bio/runtime/Runtime;->b:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/alipay/mobile/security/bio/runtime/Runtime;->d:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/content/res/Resources;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-object v2

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isRunningOnQuinox(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    sget-object v0, Lcom/alipay/mobile/security/bio/runtime/Runtime;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 118
    const-string/jumbo v1, "com.alipay.mobile.quinox.LauncherApplication"

    monitor-enter v1

    .line 119
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/security/bio/runtime/Runtime;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 120
    const-string/jumbo v0, "com.alipay.mobile.quinox.LauncherApplication"

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/security/bio/runtime/Runtime;->e:Ljava/lang/Boolean;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Runtime : isOnQuinox="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/security/bio/runtime/Runtime;->e:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;)V

    .line 124
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_1
    sget-object v0, Lcom/alipay/mobile/security/bio/runtime/Runtime;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 124
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static loadClass(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOnQuinox"    # Z
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "bundleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 185
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    .line 186
    invoke-static {p3}, Lcom/alipay/mobile/security/bio/runtime/Runtime;->getClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 187
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 189
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 197
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 199
    if-nez p0, :cond_2

    .line 200
    :try_start_1
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 208
    :cond_1
    :goto_1
    return-object v1

    .line 190
    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v2

    .line 191
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_1

    .line 204
    :catch_1
    move-exception v2

    .line 205
    .restart local v2    # "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static loadMetaInfoClass(Landroid/content/Context;Lcom/alipay/mobile/security/bio/service/BioServiceManager;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bioServiceManager"    # Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alipay/mobile/security/bio/service/BioServiceManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {p0}, Lcom/alipay/mobile/security/bio/runtime/Runtime;->isRunningOnQuinox(Landroid/content/Context;)Z

    move-result v1

    .line 164
    .local v1, "isOnQuinox":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v4, "targetClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class;>;"
    sget-object v5, Lcom/alipay/mobile/security/bio/runtime/Runtime;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;

    .line 166
    .local v2, "module":Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;
    iget-object v6, v2, Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;->b:Ljava/lang/String;

    iget-object v7, v2, Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;->a:Ljava/lang/String;

    invoke-static {p0, v1, v6, v7}, Lcom/alipay/mobile/security/bio/runtime/Runtime;->loadClass(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 167
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 168
    const-class v6, Lcom/alipay/mobile/security/bio/service/local/dynamicrelease/DynamicReleaseService;

    invoke-virtual {p1, v6}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/security/bio/service/local/dynamicrelease/DynamicReleaseService;

    .line 169
    .local v3, "service":Lcom/alipay/mobile/security/bio/service/local/dynamicrelease/DynamicReleaseService;
    if-nez v3, :cond_0

    .line 170
    const-string/jumbo v6, "Failed to get DynamicReleaseService."

    invoke-static {v6}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v6, v2, Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;->a:Ljava/lang/String;

    invoke-virtual {v3, p0, v6}, Lcom/alipay/mobile/security/bio/service/local/dynamicrelease/DynamicReleaseService;->trigDynamicRelease(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    .end local v3    # "service":Lcom/alipay/mobile/security/bio/service/local/dynamicrelease/DynamicReleaseService;
    :cond_1
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "module":Lcom/alipay/mobile/security/bio/runtime/ModuleInfo;
    :cond_2
    return-object v4
.end method

.method public static startActivity(Landroid/content/Intent;)Z
    .locals 15
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 334
    .local v0, "bRet":Z
    :try_start_0
    const-string/jumbo v10, "com.alipay.mobile.framework.b"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 337
    .local v6, "launcherApplicationAgentClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v10, "getInstance"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v6, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 338
    .local v2, "getInstanceMethod":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 340
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 342
    .local v5, "launcherApplicationAgent":Ljava/lang/Object;
    const-string/jumbo v10, "getMicroApplicationContext"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v6, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 343
    .local v3, "getMicroApplicationContextMethod":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 345
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 347
    .local v7, "microApplicationContext":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string/jumbo v11, "getTopApplication"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 348
    .local v4, "getTopApplicationMethod":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 350
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 352
    .local v9, "topApplication":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string/jumbo v11, "startExtActivity"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-string/jumbo v14, "inn"

    .line 353
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-class v14, Landroid/content/Intent;

    aput-object v14, v12, v13

    .line 352
    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 354
    .local v8, "startActivityMethod":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 356
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    const/4 v11, 0x1

    aput-object p0, v10, v11

    invoke-virtual {v8, v7, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    const/4 v0, 0x1

    .line 362
    .end local v2    # "getInstanceMethod":Ljava/lang/reflect/Method;
    .end local v3    # "getMicroApplicationContextMethod":Ljava/lang/reflect/Method;
    .end local v4    # "getTopApplicationMethod":Ljava/lang/reflect/Method;
    .end local v5    # "launcherApplicationAgent":Ljava/lang/Object;
    .end local v6    # "launcherApplicationAgentClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "microApplicationContext":Ljava/lang/Object;
    .end local v8    # "startActivityMethod":Ljava/lang/reflect/Method;
    .end local v9    # "topApplication":Ljava/lang/Object;
    :goto_0
    return v0

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
