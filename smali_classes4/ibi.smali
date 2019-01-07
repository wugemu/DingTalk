.class public Libi;
.super Ljava/lang/Object;
.source "GroupNickFetchTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Libi$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Libi$a;

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Libi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Libi;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "notify"    # Z

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Libi$a;

    invoke-direct {v0, p0, v1}, Libi$a;-><init>(Libi;B)V

    iput-object v0, p0, Libi;->c:Libi$a;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Libi;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    iput-boolean v1, p0, Libi;->e:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Libi;->e:Z

    .line 53
    return-void
.end method

.method static synthetic a(Libi;)Libi$a;
    .locals 1
    .param p0, "x0"    # Libi;

    .prologue
    .line 40
    iget-object v0, p0, Libi;->c:Libi$a;

    return-object v0
.end method

.method static synthetic a(Libi;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .param p0, "x0"    # Libi;
    .param p1, "x1"    # Ljava/util/concurrent/ConcurrentHashMap;

    .prologue
    .line 40
    iput-object p1, p0, Libi;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p1
.end method

.method static synthetic a(Libi;Ljava/lang/String;J)V
    .locals 2
    .param p0, "x0"    # Libi;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 40
    .line 1073
    iget-object v0, p0, Libi;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1074
    iget-object v0, p0, Libi;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    :cond_0
    iget-object v0, p0, Libi;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method static synthetic b(Libi;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Libi;

    .prologue
    .line 40
    iget-object v0, p0, Libi;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Libi;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Libi;

    .prologue
    .line 40
    iget-object v0, p0, Libi;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic d(Libi;)Z
    .locals 1
    .param p0, "x0"    # Libi;

    .prologue
    .line 40
    iget-boolean v0, p0, Libi;->e:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)V
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "uid"    # J

    .prologue
    .line 56
    iget-object v0, p0, Libi;->b:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 57
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 60
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Libi;->b:Landroid/os/Handler;

    .line 62
    :cond_1
    iget-object v0, p0, Libi;->b:Landroid/os/Handler;

    new-instance v1, Libi$1;

    invoke-direct {v1, p0, p1, p2, p3}, Libi$1;-><init>(Libi;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method
