.class public Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;
.super Ljava/lang/Object;
.source "PlatformUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils$EnvModeConfig;,
        Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils$TrivialInvocationHandler;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getApdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->initSecuritySdk(Landroid/content/Context;)V

    .line 31
    const-string/jumbo v0, "com.alipay.apmobilesecuritysdk.face.APSecuritySdk"

    const-string/jumbo v1, "getInstance"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    const-string/jumbo v0, ""

    .line 40
    :goto_0
    return-object v0

    .line 36
    :cond_0
    const-string/jumbo v1, "getTokenResult"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    const-string/jumbo v0, ""

    goto :goto_0

    .line 40
    :cond_1
    const-string/jumbo v1, "apdid"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static getApdidToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->initSecuritySdk(Landroid/content/Context;)V

    .line 63
    const-string/jumbo v0, "com.alipay.apmobilesecuritysdk.face.APSecuritySdk"

    const-string/jumbo v1, "getInstance"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    const-string/jumbo v0, ""

    .line 72
    :goto_0
    return-object v0

    .line 68
    :cond_0
    const-string/jumbo v1, "getApdidToken"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    if-nez v0, :cond_1

    .line 70
    const-string/jumbo v0, ""

    goto :goto_0

    .line 72
    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static getTokenResult(Landroid/content/Context;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 44
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->initSecuritySdk(Landroid/content/Context;)V

    .line 45
    const-string/jumbo v0, "com.alipay.apmobilesecuritysdk.face.APSecuritySdk"

    const-string/jumbo v1, "getInstance"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "getTokenResult"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUmidToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->getTokenResult(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    const-string/jumbo v0, ""

    .line 58
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "umidToken"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static initSecuritySdk(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 80
    const-string/jumbo v2, "com.alipay.apmobilesecuritysdk.face.APSecuritySdk"

    const-string/jumbo v3, "getInstance"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p0, v5, v0

    invoke-static {v2, v3, v4, v5}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 82
    if-nez v2, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    :try_start_0
    const-string/jumbo v3, "com.alipay.apmobilesecuritysdk.face.APSecuritySdk"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 87
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v3

    .line 89
    array-length v4, v3

    move v9, v0

    move-object v0, v1

    move v1, v9

    :goto_1
    if-ge v1, v4, :cond_4

    aget-object v5, v3, v1

    .line 90
    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 91
    const-string/jumbo v6, "com.alipay.apmobilesecuritysdk.face.APSecuritySdk$InitResultListener"

    .line 92
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1122
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    new-instance v7, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils$TrivialInvocationHandler;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils$TrivialInvocationHandler;-><init>(Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils$1;)V

    .line 1121
    invoke-static {v0, v6, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    :cond_2
    sget-object v6, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "get an [inner interface] : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 98
    :cond_3
    sget-object v6, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "get a [inner class] : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 114
    :catch_0
    move-exception v0

    .line 115
    sget-object v1, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 101
    :cond_4
    if-eqz v0, :cond_0

    .line 104
    :try_start_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 105
    const-string/jumbo v1, "tid"

    const-string/jumbo v4, ""

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string/jumbo v1, "utdid"

    const-string/jumbo v4, ""

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v1, "userId"

    const-string/jumbo v4, ""

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->a:Ljava/lang/String;

    const-string/jumbo v4, "It\'s ready to init SecuritySDK now!"

    invoke-static {v1, v4}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string/jumbo v4, "initToken"

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-class v6, Ljava/util/Map;

    aput-object v6, v5, v1

    const/4 v1, 0x2

    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 1146
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->isDebug(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1147
    sget v1, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils$EnvModeConfig;->ENVIRONMENT_DAILY:I

    .line 113
    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v3, v6, v1

    const/4 v1, 0x2

    aput-object v0, v6, v1

    .line 110
    invoke-static {v2, v4, v5, v6}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1149
    :cond_5
    sget v1, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils$EnvModeConfig;->ENVIRONMENT_ONLINE:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public static isAlipay(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 172
    sget-object v1, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5f53\u524d\u5ba2\u6237\u7aef\u7684\u5305\u540d\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.eg.android.AlipayGphoneRC"

    .line 174
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 173
    goto :goto_0
.end method

.method public static isDebug(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 158
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 160
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    sget-object v1, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->a:Ljava/lang/String;

    const-string/jumbo v2, "get isDebug exception: "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
