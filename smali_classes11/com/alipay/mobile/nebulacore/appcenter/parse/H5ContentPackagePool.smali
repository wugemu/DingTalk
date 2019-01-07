.class public Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackagePool;
.super Ljava/lang/Object;
.source "H5ContentPackagePool.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ContentPackagePool"

.field private static packagePool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackagePool;->packagePool:Ljava/util/Map;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearPackage(Ljava/lang/String;)V
    .locals 3
    .param p0, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 44
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackagePool;->packagePool:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const-string/jumbo v0, "H5ContentPackagePool"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "clearPackage packagePool not contain "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string/jumbo v0, "H5ContentPackagePool"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "consumePackage "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackagePool;->packagePool:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getPackage(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .locals 3
    .param p0, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackagePool;->packagePool:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const-string/jumbo v0, "H5ContentPackagePool"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getPackage packagePool not contain "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    .line 57
    :cond_0
    const-string/jumbo v0, "H5ContentPackagePool"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getPackage "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackagePool;->packagePool:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    goto :goto_0
.end method

.method public static preparePackage(Landroid/os/Bundle;Z)V
    .locals 5
    .param p0, "params"    # Landroid/os/Bundle;
    .param p1, "needLock"    # Z

    .prologue
    .line 31
    const-string/jumbo v2, "sessionId"

    invoke-static {p0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "sessionId":Ljava/lang/String;
    const-string/jumbo v2, "H5ContentPackagePool"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "prepare package "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v2, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackagePool;->packagePool:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    const-string/jumbo v2, "H5ContentPackagePool"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "package "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " already exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_0
    return-void

    .line 38
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;-><init>(Landroid/os/Bundle;Z)V

    .line 39
    .local v0, "contentPackage":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    sget-object v2, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackagePool;->packagePool:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->prepareContent(Z)V

    goto :goto_0
.end method
