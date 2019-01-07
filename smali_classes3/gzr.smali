.class public final Lgzr;
.super Ljava/lang/Object;
.source "PhotokitFactory.java"


# static fields
.field private static b:Lgzr;


# instance fields
.field private final a:Lgzq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lgzr;->b:Lgzr;

    return-void
.end method

.method private constructor <init>(Lgzq;)V
    .locals 1
    .param p1, "config"    # Lgzq;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgzq;

    iput-object v0, p0, Lgzr;->a:Lgzq;

    .line 52
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 39
    .line 1043
    new-instance v0, Lgzq$a;

    invoke-direct {v0, p0, v2}, Lgzq$a;-><init>(Landroid/content/Context;B)V

    .line 41
    .local v0, "builder":Lgzq$a;
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v1

    .line 1056
    iput-object v1, v0, Lgzq$a;->a:Lcom/alibaba/doraemon/image/memory/PoolFactory;

    .line 1060
    new-instance v1, Lgzq;

    invoke-direct {v1, v0, v2}, Lgzq;-><init>(Lgzq$a;B)V

    .line 2047
    new-instance v2, Lgzr;

    invoke-direct {v2, v1}, Lgzr;-><init>(Lgzq;)V

    sput-object v2, Lgzr;->b:Lgzr;

    .line 43
    return-void
.end method
