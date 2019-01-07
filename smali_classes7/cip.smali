.class public Lcip;
.super Ljava/lang/Object;
.source "GoogleLocationProxy.java"


# static fields
.field public static a:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static volatile f:Lcip;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcim;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "default.single.client"

    sput-object v0, Lcip;->a:Ljava/lang/String;

    .line 19
    const-class v0, Lcip;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcip;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcip;->g:Lcim;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcip;->d:Ljava/util/Map;

    .line 38
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcip;->b:Landroid/content/Context;

    .line 41
    :cond_0
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 42
    new-instance v0, Lcip$1;

    invoke-direct {v0, p0}, Lcip$1;-><init>(Lcip;)V

    iput-object v0, p0, Lcip;->g:Lcim;

    .line 54
    :cond_1
    return-void
.end method

.method static synthetic a(Lcip;)Lcim;
    .locals 1
    .param p0, "x0"    # Lcip;

    .prologue
    .line 17
    iget-object v0, p0, Lcip;->g:Lcim;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcip;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const-class v1, Lcip;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcip;->f:Lcip;

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcip;->f:Lcip;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :goto_0
    monitor-exit v1

    return-object v0

    .line 32
    :cond_0
    :try_start_1
    new-instance v0, Lcip;

    invoke-direct {v0, p0}, Lcip;-><init>(Landroid/content/Context;)V

    .line 33
    sput-object v0, Lcip;->f:Lcip;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcip;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcip;->c:Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcip;->c:Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->c()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcip;->c:Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    .line 162
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcio;)Z
    .locals 4
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcio;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 92
    iget-object v2, p0, Lcip;->d:Ljava/util/Map;

    monitor-enter v2

    .line 94
    :try_start_0
    iget-object v1, p0, Lcip;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    monitor-exit v2

    .line 123
    :goto_0
    return v3

    .line 97
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    iget-object v1, p0, Lcip;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, "googleLocationClient":Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;
    new-instance v1, Lcip$3;

    invoke-direct {v1, p0, p2}, Lcip$3;-><init>(Lcip;Lcio;)V

    .line 1074
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->a:Lcin;

    .line 119
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->a()V

    .line 120
    iget-object v1, p0, Lcip;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->b()Z

    .line 122
    monitor-exit v2

    goto :goto_0

    .end local v0    # "googleLocationClient":Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcip;->c:Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcip;->c:Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->c()V

    .line 178
    :cond_0
    return-void
.end method
