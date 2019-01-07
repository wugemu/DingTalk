.class final Lcom/laiwang/protocol/android/bb$c;
.super Lcom/laiwang/protocol/android/bb;
.source "Decode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/bb;-><init>(Lcom/laiwang/protocol/android/bb$1;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/laiwang/protocol/android/bb$d;Ljava/util/List;)Lcom/laiwang/protocol/android/bb;
    .locals 2
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

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/bd;>;"
    invoke-interface {p1}, Lcom/laiwang/protocol/android/bb$d;->a()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_0

    new-instance v1, Lcom/laiwang/protocol/android/bb$e;

    invoke-direct {v1}, Lcom/laiwang/protocol/android/bb$e;-><init>()V

    throw v1

    .line 61
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 62
    .end local p0    # "this":Lcom/laiwang/protocol/android/bb$c;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/laiwang/protocol/android/bb$c;
    :cond_1
    new-instance p0, Lcom/laiwang/protocol/android/bb$b;

    .end local p0    # "this":Lcom/laiwang/protocol/android/bb$c;
    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/bb$b;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
