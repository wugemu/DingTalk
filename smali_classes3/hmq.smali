.class public final Lhmq;
.super Ljava/lang/Object;
.source "MiniAppInstanceManager.java"


# static fields
.field private static b:Ljava/lang/String;

.field private static c:Lhmq;

.field private static d:I


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhls;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "MiniAppInstanceManager"

    sput-object v0, Lhmq;->b:Ljava/lang/String;

    .line 38
    const/16 v0, 0x2710

    sput v0, Lhmq;->d:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhmq;->a:Ljava/util/Map;

    .line 58
    return-void
.end method

.method public static declared-synchronized a()Lhmq;
    .locals 2

    .prologue
    .line 46
    const-class v1, Lhmq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhmq;->c:Lhmq;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lhmq;

    invoke-direct {v0}, Lhmq;-><init>()V

    sput-object v0, Lhmq;->c:Lhmq;

    .line 50
    :cond_0
    sget-object v0, Lhmq;->c:Lhmq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()I
    .locals 2

    .prologue
    .line 208
    sget v0, Lhmq;->d:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lhmq;->d:I

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lhls;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-object v0

    .line 146
    :cond_1
    iget-object v1, p0, Lhmq;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v0, p0, Lhmq;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhls;

    goto :goto_0
.end method
