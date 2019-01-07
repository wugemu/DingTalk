.class public Lbbw;
.super Ljava/lang/Object;
.source "EMiniManager.java"


# static fields
.field private static volatile b:Lbbw;


# instance fields
.field public a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbbw;->a:Ljava/util/Set;

    .line 26
    return-void
.end method

.method public static a()Lbbw;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lbbw;->b:Lbbw;

    if-nez v0, :cond_1

    .line 30
    const-class v1, Lbbw;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lbbw;->b:Lbbw;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lbbw;

    invoke-direct {v0}, Lbbw;-><init>()V

    sput-object v0, Lbbw;->b:Lbbw;

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    sget-object v0, Lbbw;->b:Lbbw;

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lbbw;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lbbw;

    .prologue
    .line 19
    iget-object v0, p0, Lbbw;->a:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[EMiniManager]tryPreload, appId:"

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v1, p0, Lbbw;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "[EMiniManager]tryPreload, already preloaded"

    aput-object v2, v1, v3

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    new-instance v2, Lbbw$1;

    invoke-direct {v2, p0, p1}, Lbbw$1;-><init>(Lbbw;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->prepareTargetEApp(Landroid/os/Bundle;Lhlo;)V

    goto :goto_0
.end method
