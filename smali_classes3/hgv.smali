.class public final Lhgv;
.super Ljava/lang/Object;
.source "UniChannelManager.java"


# static fields
.field private static final a:Lhgv;


# instance fields
.field private b:Lhgu;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhgu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lhgv;

    invoke-direct {v0}, Lhgv;-><init>()V

    sput-object v0, Lhgv;->a:Lhgv;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhgv;->c:Ljava/util/Map;

    .line 22
    const-string/jumbo v1, "__global__"

    .line 1035
    iget-object v0, p0, Lhgv;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1036
    new-instance v0, Lhgu;

    invoke-direct {v0, v1}, Lhgu;-><init>(Ljava/lang/String;)V

    .line 1037
    iget-object v2, p0, Lhgv;->c:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :goto_0
    iput-object v0, p0, Lhgv;->b:Lhgu;

    .line 23
    return-void

    .line 1041
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Lhgv;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lhgv;->a:Lhgv;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lhgu;
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 46
    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p0, Lhgv;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhgu;

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
