.class public final Lflp;
.super Ljava/lang/Object;
.source "BatchProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflp$a;,
        Lflp$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field public b:Ljava/util/concurrent/CountDownLatch;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TF;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "BatchProcessor"

    sput-object v0, Lflp;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lflp;, "Lflp<TT;TF;>;"
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lflp;->d:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lflp;->e:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lflp;->b:Ljava/util/concurrent/CountDownLatch;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lflp;->c:Ljava/util/List;

    .line 54
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lflp;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lflp;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lflp;

    .prologue
    .line 23
    iget-object v0, p0, Lflp;->b:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic a(Lflp;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0
    .param p0, "x0"    # Lflp;
    .param p1, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 23
    iput-object p1, p0, Lflp;->b:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic b(Lflp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lflp;

    .prologue
    .line 23
    iget-object v0, p0, Lflp;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lflp;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lflp;

    .prologue
    .line 23
    iget-object v0, p0, Lflp;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lflp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lflp;

    .prologue
    .line 23
    iget-object v0, p0, Lflp;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 91
    .local p0, "this":Lflp;, "Lflp<TT;TF;>;"
    iput-object p1, p0, Lflp;->d:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lflp;->e:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lflp;->b:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    iget-object v0, p0, Lflp;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 95
    iget-object v0, p0, Lflp;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method
