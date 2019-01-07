.class final Lanet/channel/strategy/RawConnStrategy$1;
.super Ljava/lang/Object;
.source "RawConnStrategy.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/RawConnStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lanet/channel/strategy/RawConnStrategy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 115
    check-cast p1, Lanet/channel/strategy/RawConnStrategy;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lanet/channel/strategy/RawConnStrategy;

    .line 1118
    .end local p2    # "x1":Ljava/lang/Object;
    invoke-static {p1}, Lanet/channel/strategy/RawConnStrategy;->access$000(Lanet/channel/strategy/RawConnStrategy;)I

    move-result v0

    invoke-static {p2}, Lanet/channel/strategy/RawConnStrategy;->access$000(Lanet/channel/strategy/RawConnStrategy;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1119
    invoke-static {p1}, Lanet/channel/strategy/RawConnStrategy;->access$000(Lanet/channel/strategy/RawConnStrategy;)I

    move-result v0

    invoke-static {p2}, Lanet/channel/strategy/RawConnStrategy;->access$000(Lanet/channel/strategy/RawConnStrategy;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1123
    :cond_0
    :goto_0
    return v0

    .line 1121
    :cond_1
    iget-object v0, p1, Lanet/channel/strategy/RawConnStrategy;->connType:Lanet/channel/entity/ConnType;

    iget-object v1, p2, Lanet/channel/strategy/RawConnStrategy;->connType:Lanet/channel/entity/ConnType;

    invoke-static {v0, v1}, Lanet/channel/entity/ConnType;->compare(Lanet/channel/entity/ConnType;Lanet/channel/entity/ConnType;)I

    move-result v0

    .line 1122
    if-nez v0, :cond_0

    .line 1125
    invoke-static {p1}, Lanet/channel/strategy/RawConnStrategy;->access$100(Lanet/channel/strategy/RawConnStrategy;)J

    move-result-wide v0

    invoke-static {p2}, Lanet/channel/strategy/RawConnStrategy;->access$100(Lanet/channel/strategy/RawConnStrategy;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 115
    goto :goto_0
.end method
