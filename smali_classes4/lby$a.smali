.class public final Llby$a;
.super Lldp;
.source "IndentedCodeBlockParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llby;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lldp;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lldv;Lldu;)Lldt;
    .locals 3
    .param p1, "state"    # Lldv;
    .param p2, "matchedBlockParser"    # Lldu;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 53
    invoke-interface {p1}, Lldv;->e()I

    move-result v0

    sget v1, Llck;->a:I

    if-lt v0, v1, :cond_0

    invoke-interface {p1}, Lldv;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lldv;->g()Lldr;

    move-result-object v0

    invoke-interface {v0}, Lldr;->b()Llcn;

    move-result-object v0

    instance-of v0, v0, Lldf;

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [Lldr;

    const/4 v1, 0x0

    new-instance v2, Llby;

    invoke-direct {v2}, Llby;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Lldt;->a([Lldr;)Lldt;

    move-result-object v0

    invoke-interface {p1}, Lldv;->d()I

    move-result v1

    sget v2, Llck;->a:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lldt;->b(I)Lldt;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
