.class public final Lhuc;
.super Ljava/lang/Object;
.source "UTKeyArraySorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuc$a;,
        Lhuc$b;
    }
.end annotation


# static fields
.field private static a:Lhuc;


# instance fields
.field private b:Lhuc$b;

.field private c:Lhuc$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lhuc;->a:Lhuc;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lhuc$b;

    invoke-direct {v0, p0, v1}, Lhuc$b;-><init>(Lhuc;B)V

    iput-object v0, p0, Lhuc;->b:Lhuc$b;

    .line 17
    new-instance v0, Lhuc$a;

    invoke-direct {v0, p0, v1}, Lhuc$a;-><init>(Lhuc;B)V

    iput-object v0, p0, Lhuc;->c:Lhuc$a;

    .line 21
    return-void
.end method

.method public static declared-synchronized a()Lhuc;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lhuc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhuc;->a:Lhuc;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lhuc;

    invoke-direct {v0}, Lhuc;-><init>()V

    sput-object v0, Lhuc;->a:Lhuc;

    .line 27
    :cond_0
    sget-object v0, Lhuc;->a:Lhuc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a([Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 2
    .param p1, "resources"    # [Ljava/lang/String;
    .param p2, "aUseASC"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 34
    iget-object v0, p0, Lhuc;->c:Lhuc$a;

    .line 38
    .local v0, "lCompare":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 39
    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 42
    .end local p1    # "resources":[Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "resources":[Ljava/lang/String;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method
