.class public Lcom/alipay/mobile/security/bio/api/BioDetectorBuilder;
.super Ljava/lang/Object;
.source "BioDetectorBuilder.java"


# static fields
.field public static TYPE_FACE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/security/bio/api/BioDetectorBuilder;->TYPE_FACE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/security/bio/module/MicroModule;)Ljava/lang/Object;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "microModule"    # Lcom/alipay/mobile/security/bio/module/MicroModule;

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, "clsObj":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 50
    .local v5, "svcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-class v7, Lcom/alipay/mobile/security/bio/module/MicroModule;

    aput-object v7, v4, v6

    .line 51
    .local v4, "paramType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v5, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 52
    .local v1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v6, 0x2

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v2, v6

    const/4 v6, 0x1

    aput-object p2, v2, v6

    .line 53
    .local v2, "ctx":[Ljava/lang/Object;
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    .end local v0    # "clsObj":Ljava/lang/Object;
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "ctx":[Ljava/lang/Object;
    .end local v4    # "paramType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v5    # "svcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v0

    .line 54
    .restart local v0    # "clsObj":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 55
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "BIOLOGY"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Failed to call getInstance("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;Lcom/alipay/mobile/security/bio/module/MicroModule;)Lcom/alipay/mobile/security/bio/api/BioDetector;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "microModule"    # Lcom/alipay/mobile/security/bio/module/MicroModule;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "context Can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_0
    const-string/jumbo v1, "com.alipay.mobile.security.bio.workspace.BioTransfer"

    invoke-static {p0, v1, p1}, Lcom/alipay/mobile/security/bio/api/BioDetectorBuilder;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/security/bio/module/MicroModule;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/api/BioDetector;

    .line 33
    .local v0, "authenticator":Lcom/alipay/mobile/security/bio/api/BioDetector;
    return-object v0
.end method

.method public static getMetaInfos(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v3, 0x0

    .line 66
    .local v3, "metaInfos":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v5, "com.alipay.mobile.security.bio.runtime.Runtime"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 68
    .local v4, "runtimeClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "getMetaInfos"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 69
    .local v2, "getMetaInfosMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 71
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v2    # "getMetaInfosMethod":Ljava/lang/reflect/Method;
    .end local v4    # "runtimeClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v3

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "BIOLOGY"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Failed to call getMetaInfos("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
