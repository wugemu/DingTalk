.class public final Ljhm;
.super Ljhv;
.source "ArrayTypeName.java"


# instance fields
.field public final a:Ljhv;


# direct methods
.method private constructor <init>(Ljhv;)V
    .locals 1
    .param p1, "componentType"    # Ljhv;

    .prologue
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Ljhm;-><init>(Ljhv;Ljava/util/List;)V

    .line 35
    return-void
.end method

.method private constructor <init>(Ljhv;Ljava/util/List;)V
    .locals 2
    .param p1, "componentType"    # Ljhv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljhv;",
            "Ljava/util/List",
            "<",
            "Ljhl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "annotations":Ljava/util/List;, "Ljava/util/List<Ljhl;>;"
    invoke-direct {p0, p2}, Ljhv;-><init>(Ljava/util/List;)V

    .line 39
    const-string/jumbo v0, "rawType == null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Ljhx;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljhv;

    iput-object v0, p0, Ljhm;->a:Ljhv;

    .line 40
    return-void
.end method

.method public static a(Ljhv;)Ljhm;
    .locals 1
    .param p0, "componentType"    # Ljhv;

    .prologue
    .line 56
    new-instance v0, Ljhm;

    invoke-direct {v0, p0}, Ljhm;-><init>(Ljhv;)V

    return-object v0
.end method


# virtual methods
.method final a(Ljhp;)Ljhp;
    .locals 4
    .param p1, "out"    # Ljhp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 51
    const-string/jumbo v0, "$T[]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Ljhm;->a:Ljhv;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljhp;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljhp;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljhv;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 47
    new-instance v0, Ljhm;

    iget-object v1, p0, Ljhm;->a:Ljhv;

    invoke-direct {v0, v1}, Ljhm;-><init>(Ljhv;)V

    return-object v0
.end method
