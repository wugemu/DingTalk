.class final Lcom/laiwang/protocol/android/bb$a;
.super Lcom/laiwang/protocol/android/bb;
.source "Decode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;IZ)V
    .locals 6
    .param p1, "startLine"    # Ljava/lang/String;
    .param p3, "len"    # I
    .param p4, "zip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/laiwang/protocol/android/bb;-><init>(Ljava/lang/String;Ljava/util/List;IZLcom/laiwang/protocol/android/bb$1;)V

    .line 105
    return-void
.end method


# virtual methods
.method public final a(Lcom/laiwang/protocol/android/bb$d;Ljava/util/List;)Lcom/laiwang/protocol/android/bb;
    .locals 4
    .param p1, "in"    # Lcom/laiwang/protocol/android/bb$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laiwang/protocol/android/bb$d;",
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/android/bd;",
            ">;)",
            "Lcom/laiwang/protocol/android/bb;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/android/bb$e;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/bd;>;"
    iget v1, p0, Lcom/laiwang/protocol/android/bb$a;->c:I

    invoke-interface {p1, v1}, Lcom/laiwang/protocol/android/bb$d;->a(I)[B

    move-result-object v0

    .line 110
    .local v0, "data":[B
    if-nez v0, :cond_0

    new-instance v1, Lcom/laiwang/protocol/android/bb$e;

    invoke-direct {v1}, Lcom/laiwang/protocol/android/bb$e;-><init>()V

    throw v1

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/bb$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/laiwang/protocol/android/bb$a;->b:Ljava/util/List;

    iget-boolean v3, p0, Lcom/laiwang/protocol/android/bb$a;->d:Z

    invoke-static {v1, v2, v3, v0}, Lcom/laiwang/protocol/android/bb$a;->a(Ljava/lang/String;Ljava/util/List;Z[B)Lcom/laiwang/protocol/android/bd;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Lcom/laiwang/protocol/android/bb$c;

    invoke-direct {v1}, Lcom/laiwang/protocol/android/bb$c;-><init>()V

    return-object v1
.end method
