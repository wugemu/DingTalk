.class public final Lidt;
.super Ljava/lang/Object;
.source "UserEventPoster.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/UserListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/UserExListenerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lidt;->a:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lidt;->b:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lidt;->b:Ljava/util/List;

    return-object v0
.end method

.method public static a(Lcom/alibaba/wukong/im/User;)V
    .locals 2
    .param p0, "user"    # Lcom/alibaba/wukong/im/User;

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-static {p0}, Lidt;->d(Lcom/alibaba/wukong/im/User;)Ljava/util/ArrayList;

    move-result-object v0

    .line 68
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/User;>;"
    new-instance v1, Lidt$2;

    invoke-direct {v1, v0}, Lidt$2;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/alibaba/wukong/im/UserExListenerAdapter;)V
    .locals 2
    .param p0, "listener"    # Lcom/alibaba/wukong/im/UserExListenerAdapter;

    .prologue
    .line 42
    const-class v1, Lidt;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 45
    :goto_0
    monitor-exit v1

    return-void

    .line 44
    :cond_0
    :try_start_0
    sget-object v0, Lidt;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Lcom/alibaba/wukong/im/UserListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/alibaba/wukong/im/UserListener;

    .prologue
    .line 30
    const-class v1, Lidt;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 33
    :goto_0
    monitor-exit v1

    return-void

    .line 32
    :cond_0
    :try_start_0
    sget-object v0, Lidt;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/User;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v0, Lidt$3;

    invoke-direct {v0, p0}, Lidt$3;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/OpenIdExObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/OpenIdExObject;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    new-instance v0, Lidt$1;

    invoke-direct {v0, p0}, Lidt$1;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lidt;->a:Ljava/util/List;

    return-object v0
.end method

.method public static b(Lcom/alibaba/wukong/im/User;)V
    .locals 2
    .param p0, "user"    # Lcom/alibaba/wukong/im/User;

    .prologue
    .line 116
    if-nez p0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {p0}, Lidt;->d(Lcom/alibaba/wukong/im/User;)Ljava/util/ArrayList;

    move-result-object v0

    .line 118
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/User;>;"
    new-instance v1, Lidt$4;

    invoke-direct {v1, v0}, Lidt$4;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static declared-synchronized b(Lcom/alibaba/wukong/im/UserExListenerAdapter;)V
    .locals 2
    .param p0, "listener"    # Lcom/alibaba/wukong/im/UserExListenerAdapter;

    .prologue
    .line 48
    const-class v1, Lidt;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 51
    :goto_0
    monitor-exit v1

    return-void

    .line 50
    :cond_0
    :try_start_0
    sget-object v0, Lidt;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Lcom/alibaba/wukong/im/UserListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/alibaba/wukong/im/UserListener;

    .prologue
    .line 36
    const-class v1, Lidt;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 39
    :goto_0
    monitor-exit v1

    return-void

    .line 38
    :cond_0
    :try_start_0
    sget-object v0, Lidt;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/User;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 130
    :cond_0
    new-instance v0, Lidt$5;

    invoke-direct {v0, p0}, Lidt$5;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static c(Lcom/alibaba/wukong/im/User;)V
    .locals 2
    .param p0, "user"    # Lcom/alibaba/wukong/im/User;

    .prologue
    .line 141
    if-nez p0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-static {p0}, Lidt;->d(Lcom/alibaba/wukong/im/User;)Ljava/util/ArrayList;

    move-result-object v0

    .line 143
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/User;>;"
    new-instance v1, Lidt$6;

    invoke-direct {v1, v0}, Lidt$6;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static c(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/User;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 158
    :cond_0
    new-instance v0, Lidt$7;

    invoke-direct {v0, p0}, Lidt$7;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static d(Lcom/alibaba/wukong/im/User;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "user"    # Lcom/alibaba/wukong/im/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/User;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/User;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    return-object v0
.end method
