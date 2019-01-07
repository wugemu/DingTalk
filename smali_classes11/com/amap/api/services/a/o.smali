.class public Lcom/amap/api/services/a/o;
.super Ljava/lang/Object;
.source "ManifestConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/a/o$a;
    }
.end annotation


# static fields
.field public static a:Lcom/amap/api/services/a/be;

.field private static b:Lcom/amap/api/services/a/o;

.field private static c:Landroid/content/Context;


# instance fields
.field private d:Lcom/amap/api/services/a/o$a;

.field private e:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/amap/api/services/a/o$1;

    const-string/jumbo v1, "manifestThread"

    invoke-direct {v0, p0, v1}, Lcom/amap/api/services/a/o$1;-><init>(Lcom/amap/api/services/a/o;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/services/a/o;->e:Landroid/os/HandlerThread;

    .line 27
    sput-object p1, Lcom/amap/api/services/a/o;->c:Landroid/content/Context;

    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/be;

    move-result-object v0

    sput-object v0, Lcom/amap/api/services/a/o;->a:Lcom/amap/api/services/a/be;

    .line 30
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/amap/api/services/a/o$a;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/services/a/o$a;-><init>(Lcom/amap/api/services/a/o;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/amap/api/services/a/o;->d:Lcom/amap/api/services/a/o$a;

    .line 32
    iget-object v0, p0, Lcom/amap/api/services/a/o;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const-string/jumbo v1, "ManifestConfig"

    const-string/jumbo v2, "ManifestConfig"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/amap/api/services/a/o;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/services/a/o;)Lcom/amap/api/services/a/o$a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/amap/api/services/a/o;->d:Lcom/amap/api/services/a/o$a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/amap/api/services/a/o;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/amap/api/services/a/o;->b:Lcom/amap/api/services/a/o;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/amap/api/services/a/o;

    invoke-direct {v0, p0}, Lcom/amap/api/services/a/o;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/services/a/o;->b:Lcom/amap/api/services/a/o;

    .line 42
    :cond_0
    sget-object v0, Lcom/amap/api/services/a/o;->b:Lcom/amap/api/services/a/o;

    return-object v0
.end method
