.class final Lanet/channel/strategy/ConnStrategyList$IDCStrategyList$1;
.super Ljava/lang/Object;
.source "ConnStrategyList.java"

# interfaces
.implements Lanet/channel/strategy/ConnStrategyList$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->update(Lke$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lanet/channel/strategy/ConnStrategyList$a",
        "<",
        "Lanet/channel/strategy/RawConnStrategy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lke$a;

.field final synthetic b:Lanet/channel/entity/ConnType;

.field final synthetic c:Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;


# direct methods
.method constructor <init>(Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;Lke$a;Lanet/channel/entity/ConnType;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList$1;->c:Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;

    iput-object p2, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList$1;->a:Lke$a;

    iput-object p3, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList$1;->b:Lanet/channel/entity/ConnType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 171
    check-cast p1, Lanet/channel/strategy/RawConnStrategy;

    .line 1174
    .end local p1    # "x0":Ljava/lang/Object;
    iget v0, p1, Lanet/channel/strategy/RawConnStrategy;->port:I

    iget-object v1, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList$1;->a:Lke$a;

    iget v1, v1, Lke$a;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lanet/channel/strategy/RawConnStrategy;->connType:Lanet/channel/entity/ConnType;

    iget-object v1, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList$1;->b:Lanet/channel/entity/ConnType;

    invoke-virtual {v0, v1}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 171
    goto :goto_0
.end method
