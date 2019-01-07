.class final Lxs;
.super Ljava/lang/Object;
.source "InternalEventCenter.java"

# interfaces
.implements Lya;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxs$a;,
        Lxs$b;
    }
.end annotation


# static fields
.field private static a:Lxs;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lyb;",
            "Lxs$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lxs;->a:Lxs;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lxs;->b:Landroid/os/Handler;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lxs;->c:Ljava/util/Map;

    .line 56
    return-void
.end method

.method static synthetic a(Lxs;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lxs;

    .prologue
    .line 23
    iget-object v0, p0, Lxs;->c:Ljava/util/Map;

    return-object v0
.end method

.method public static a()Lxs;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lxs;->a:Lxs;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lxs;

    invoke-direct {v0}, Lxs;-><init>()V

    sput-object v0, Lxs;->a:Lxs;

    .line 31
    :cond_0
    sget-object v0, Lxs;->a:Lxs;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "messageType"    # Ljava/lang/String;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "status"    # I

    .prologue
    .line 90
    new-instance v0, Lyc;

    invoke-direct {v0, p1, p2, p3}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lxs;->a(Lyc;)V

    .line 91
    return-void
.end method

.method public final a(Lyb;)V
    .locals 1
    .param p1, "listener"    # Lyb;

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lxs;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final varargs a(Lyb;[Ljava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lyb;
    .param p2, "messageActions"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v1, p0, Lxs;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lxs;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxs$b;

    .line 77
    .local v0, "index":Lxs$b;
    :goto_1
    invoke-virtual {v0, p2}, Lxs$b;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v0    # "index":Lxs$b;
    :cond_1
    new-instance v0, Lxs$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lxs$b;-><init>(B)V

    .line 75
    .restart local v0    # "index":Lxs$b;
    iget-object v1, p0, Lxs;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public final a(Lyc;)V
    .locals 2
    .param p1, "eventMessage"    # Lyc;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 95
    if-nez p1, :cond_1

    .line 97
    const-string/jumbo v0, "Post a null event message, ignored!!!"

    invoke-static {v0}, Lyx;->d(Ljava/lang/String;)I

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 1108
    :cond_1
    iget-object v0, p0, Lxs;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 100
    if-lez v0, :cond_0

    .line 2060
    iget-object v0, p0, Lxs;->b:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 2061
    invoke-static {}, Lxn;->a()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lxs;->b:Landroid/os/Handler;

    .line 102
    :cond_2
    iget-object v0, p0, Lxs;->b:Landroid/os/Handler;

    new-instance v1, Lxs$a;

    invoke-direct {v1, p0, p1}, Lxs$a;-><init>(Lxs;Lyc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
