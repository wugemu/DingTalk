.class public final Llcb;
.super Lldo;
.source "ListItemParser.java"


# instance fields
.field private final a:Lldc;

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "contentIndent"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Lldo;-><init>()V

    .line 11
    new-instance v0, Lldc;

    invoke-direct {v0}, Lldc;-><init>()V

    iput-object v0, p0, Llcb;->a:Lldc;

    .line 20
    iput p1, p0, Llcb;->b:I

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lldv;)Lldq;
    .locals 3
    .param p1, "state"    # Lldv;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-interface {p1}, Lldv;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    iget-object v1, p0, Llcb;->a:Lldc;

    .line 1022
    iget-object v1, v1, Lldd;->g:Lldd;

    .line 41
    if-nez v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-object v0

    .line 45
    :cond_1
    invoke-interface {p1}, Lldv;->c()I

    move-result v0

    invoke-static {v0}, Lldq;->a(I)Lldq;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_2
    invoke-interface {p1}, Lldv;->e()I

    move-result v1

    iget v2, p0, Llcb;->b:I

    if-lt v1, v2, :cond_0

    .line 50
    invoke-interface {p1}, Lldv;->d()I

    move-result v0

    iget v1, p0, Llcb;->b:I

    add-int/2addr v0, v1

    invoke-static {v0}, Lldq;->b(I)Lldq;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Llcn;)Z
    .locals 1
    .param p1, "block"    # Llcn;

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Llcn;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Llcb;->a:Lldc;

    return-object v0
.end method
