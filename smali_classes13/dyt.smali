.class public Ldyt;
.super Ljava/lang/Object;
.source "DingStatusChangeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldyt$a;
    }
.end annotation


# static fields
.field private static volatile d:Ldyt;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:Ldyt$a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ldyt;->a:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ldyt;->b:Ljava/util/Map;

    .line 42
    return-void
.end method

.method public static a()Ldyt;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Ldyt;->d:Ldyt;

    if-nez v0, :cond_1

    .line 30
    const-class v1, Ldyt;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Ldyt;->d:Ldyt;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ldyt;

    invoke-direct {v0}, Ldyt;-><init>()V

    sput-object v0, Ldyt;->d:Ldyt;

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    sget-object v0, Ldyt;->d:Ldyt;

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

.method static synthetic a(Ldyt;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 3
    .param p0, "x0"    # Ldyt;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 19
    .line 1086
    if-eqz p1, :cond_2

    .line 1089
    iget-object v0, p0, Ldyt;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Ldyt;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 1091
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldyt;->c:Ldyt$a;

    if-eqz v1, :cond_0

    .line 1092
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    const-string/jumbo v2, "dingId"

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1093
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1094
    iget-object v1, p0, Ldyt;->c:Ldyt$a;

    invoke-interface {v1, v0}, Ldyt$a;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 2072
    :cond_0
    if-eqz p1, :cond_2

    .line 2076
    iget-object v0, p0, Ldyt;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2077
    iget-object v0, p0, Ldyt;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2079
    :cond_1
    iget-object v0, p0, Ldyt;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2080
    iget-object v0, p0, Ldyt;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckm$a;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->t(Lckm$a;)V

    .line 2081
    iget-object v0, p0, Ldyt;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_2
    return-void
.end method
