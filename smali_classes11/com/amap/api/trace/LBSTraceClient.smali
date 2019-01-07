.class public Lcom/amap/api/trace/LBSTraceClient;
.super Ljava/lang/Object;
.source "LBSTraceClient.java"

# interfaces
.implements Liut;


# static fields
.field private static a:Liut;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1068
    if-eqz p1, :cond_0

    .line 1070
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/en;->e()Lcom/amap/api/mapcore/util/fm;

    move-result-object v1

    .line 1073
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "com.amap.api.wrapper.LBSTraceClientWrapper"

    const-class v3, Lcom/amap/api/mapcore/util/fb;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1076
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1072
    invoke-static/range {v0 .. v5}, Lcom/amap/api/mapcore/util/go;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fm;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liut;

    sput-object v0, Lcom/amap/api/trace/LBSTraceClient;->a:Liut;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1079
    :cond_0
    :goto_0
    return-void

    .line 1078
    :catch_0
    move-exception v0

    new-instance v0, Lcom/amap/api/mapcore/util/fb;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/trace/LBSTraceClient;->a:Liut;

    goto :goto_0
.end method
