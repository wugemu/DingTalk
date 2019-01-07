.class public Ldyu;
.super Ljava/lang/Object;
.source "EfficientBrowserManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldyu$a;
    }
.end annotation


# static fields
.field private static volatile d:Ldyu;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldyu$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldyu;->c:J

    .line 31
    return-void
.end method

.method public static a()Ldyu;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Ldyu;->d:Ldyu;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Ldyu;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Ldyu;->d:Ldyu;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ldyu;

    invoke-direct {v0}, Ldyu;-><init>()V

    sput-object v0, Ldyu;->d:Ldyu;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Ldyu;->d:Ldyu;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 6
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1036
    const-string/jumbo v2, "pref_key_efficient_mode_open"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 47
    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    .line 48
    iget-object v2, p0, Ldyu;->a:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 49
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Ldyu;->a:Ljava/util/Map;

    .line 51
    :cond_0
    iget-object v2, p0, Ldyu;->b:Ljava/util/List;

    if-nez v2, :cond_1

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ldyu;->b:Ljava/util/List;

    .line 54
    :cond_1
    iget-object v2, p0, Ldyu;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 55
    iget-object v2, p0, Ldyu;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v2, p0, Ldyu;->b:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ldyu;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 57
    iget-object v2, p0, Ldyu;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 58
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ldyu$a;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldyu$a;

    .line 60
    .local v1, "listener":Ldyu$a;
    if-eqz v1, :cond_2

    .line 61
    invoke-interface {v1, p1}, Ldyu$a;->a(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 66
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ldyu$a;>;"
    .end local v1    # "listener":Ldyu$a;
    :cond_3
    iget-object v2, p0, Ldyu;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_4
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Ldyu;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Ldyu;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    iput-object v1, p0, Ldyu;->b:Ljava/util/List;

    .line 111
    :cond_0
    iget-object v0, p0, Ldyu;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Ldyu;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 113
    iput-object v1, p0, Ldyu;->a:Ljava/util/Map;

    .line 115
    :cond_1
    return-void
.end method
