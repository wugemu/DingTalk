.class public final Lflm;
.super Ljava/lang/Object;
.source "ConcernCache.java"


# static fields
.field private static a:Lflm;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lflm;->a:Lflm;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lflm;->b:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized a()Lflm;
    .locals 2

    .prologue
    .line 38
    const-class v1, Lflm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lflm;->a:Lflm;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lflm;

    invoke-direct {v0}, Lflm;-><init>()V

    sput-object v0, Lflm;->a:Lflm;

    .line 42
    :cond_0
    sget-object v0, Lflm;->a:Lflm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(J)Ljava/lang/String;
    .locals 4
    .param p0, "uid"    # J

    .prologue
    .line 56
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 57
    .local v0, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    .line 58
    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 59
    invoke-virtual {v1, p0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 61
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final a(JZ)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "isConcerned"    # Z

    .prologue
    .line 51
    iget-object v0, p0, Lflm;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Lflm;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public final a(J)Z
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 47
    iget-object v0, p0, Lflm;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Lflm;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1022
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 47
    return v0
.end method
