.class public Lcjm;
.super Ljava/lang/Object;
.source "DynamicSoDownloadService.java"


# static fields
.field private static b:Lcjm;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcjm;->a:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized a()Lcjm;
    .locals 2

    .prologue
    .line 34
    const-class v1, Lcjm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcjm;->b:Lcjm;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcjm;

    invoke-direct {v0}, Lcjm;-><init>()V

    sput-object v0, Lcjm;->b:Lcjm;

    .line 37
    :cond_0
    sget-object v0, Lcjm;->b:Lcjm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcjm;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcjm;

    .prologue
    .line 29
    iget-object v0, p0, Lcjm;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcjm;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcjm;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    .line 2171
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcjm$2;

    invoke-direct {v1, p0, p1}, Lcjm$2;-><init>(Lcjm;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 29
    return-void
.end method

.method static synthetic a(Lcjm;Ljava/lang/String;I)V
    .locals 2
    .param p0, "x0"    # Lcjm;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 29
    .line 2203
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcjm$4;

    invoke-direct {v1, p0, p1, p2}, Lcjm$4;-><init>(Lcjm;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 29
    return-void
.end method

.method static synthetic a(Lcjm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcjm;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 1187
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcjm$3;

    invoke-direct {v2, p0, p1, v0, p3}, Lcjm$3;-><init>(Lcjm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 29
    return-void
.end method
