.class public final Llgq;
.super Ljava/lang/Object;
.source "Completable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llgq$b;,
        Llgq$a;
    }
.end annotation


# static fields
.field static final a:Llgq;

.field static final b:Llgq;


# instance fields
.field private final c:Llgq$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    new-instance v0, Llgq;

    new-instance v1, Llgq$1;

    invoke-direct {v1}, Llgq$1;-><init>()V

    invoke-direct {v0, v1, v2}, Llgq;-><init>(Llgq$a;Z)V

    sput-object v0, Llgq;->a:Llgq;

    .line 77
    new-instance v0, Llgq;

    new-instance v1, Llgq$2;

    invoke-direct {v1}, Llgq$2;-><init>()V

    invoke-direct {v0, v1, v2}, Llgq;-><init>(Llgq$a;Z)V

    sput-object v0, Llgq;->b:Llgq;

    return-void
.end method

.method private constructor <init>(Llgq$a;)V
    .locals 1
    .param p1, "onSubscribe"    # Llgq$a;

    .prologue
    .line 998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 999
    invoke-static {p1}, Llkm;->a(Llgq$a;)Llgq$a;

    move-result-object v0

    iput-object v0, p0, Llgq;->c:Llgq$a;

    .line 1000
    return-void
.end method

.method private constructor <init>(Llgq$a;Z)V
    .locals 0
    .param p1, "onSubscribe"    # Llgq$a;
    .param p2, "useHook"    # Z

    .prologue
    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1010
    iput-object p1, p0, Llgq;->c:Llgq$a;

    .line 1011
    return-void
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;
    .locals 2
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 826
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 827
    .local v0, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v0, p0}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 828
    return-object v0
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 770
    .local p0, "o":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 771
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 773
    :cond_0
    return-object p0
.end method

.method public static a(Llgq$a;)Llgq;
    .locals 2
    .param p0, "onSubscribe"    # Llgq$a;

    .prologue
    .line 361
    invoke-static {p0}, Llgq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :try_start_0
    new-instance v1, Llgq;

    invoke-direct {v1, p0}, Llgq;-><init>(Llgq$a;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0

    .line 366
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 367
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Llkm;->a(Ljava/lang/Throwable;)V

    .line 368
    invoke-static {v0}, Llgq;->a(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public final a(Llgr;)V
    .locals 3
    .param p1, "s"    # Llgr;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 2031
    invoke-static {p1}, Llgq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2033
    :try_start_0
    iget-object v2, p0, Llgq;->c:Llgq$a;

    invoke-static {p0, v2}, Llkm;->a(Llgq;Llgq$a;)Llgq$a;

    move-result-object v1

    .line 2035
    .local v1, "onSubscribeDecorated":Llgq$a;
    invoke-interface {v1, p1}, Llgq$a;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 2043
    return-void

    .line 2036
    .end local v1    # "onSubscribeDecorated":Llgq$a;
    :catch_0
    move-exception v0

    .line 2037
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0

    .line 2038
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2039
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 2040
    invoke-static {v0}, Llkm;->d(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 2041
    invoke-static {v0}, Llkm;->a(Ljava/lang/Throwable;)V

    .line 2042
    invoke-static {v0}, Llgq;->a(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v2

    throw v2
.end method
