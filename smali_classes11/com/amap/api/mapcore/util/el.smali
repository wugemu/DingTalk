.class public Lcom/amap/api/mapcore/util/el;
.super Ljava/lang/Object;
.source "ResourcesUtil.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/mapcore/util/el;->a:Z

    .line 15
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/framework/amap.jar"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/amap/api/mapcore/util/el;->a:Z

    .line 17
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/res/AssetManager;
    .locals 6

    .prologue
    .line 20
    if-nez p0, :cond_1

    .line 21
    const/4 v0, 0x0

    .line 33
    :cond_0
    :goto_0
    return-object v0

    .line 23
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 24
    sget-boolean v1, Lcom/amap/api/mapcore/util/el;->a:Z

    if-eqz v1, :cond_0

    .line 26
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "addAssetPath"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 28
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "/system/framework/amap.jar"

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    const-string/jumbo v2, "ResourcesUtil"

    const-string/jumbo v3, "getSelfAssets"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
