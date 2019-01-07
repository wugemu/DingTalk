.class public final Llcc;
.super Lldo;
.source "ParagraphParser.java"


# instance fields
.field final a:Lldf;

.field b:Llbn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lldo;-><init>()V

    .line 13
    new-instance v0, Lldf;

    invoke-direct {v0}, Lldf;-><init>()V

    iput-object v0, p0, Llcc;->a:Lldf;

    .line 14
    new-instance v0, Llbn;

    invoke-direct {v0}, Llbn;-><init>()V

    iput-object v0, p0, Llcc;->b:Llbn;

    return-void
.end method


# virtual methods
.method public final a(Lldv;)Lldq;
    .locals 1
    .param p1, "state"    # Lldv;

    .prologue
    .line 23
    invoke-interface {p1}, Lldv;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-interface {p1}, Lldv;->b()I

    move-result v0

    invoke-static {v0}, Lldq;->a(I)Lldq;

    move-result-object v0

    .line 26
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "line"    # Ljava/lang/CharSequence;

    .prologue
    .line 32
    iget-object v0, p0, Llcc;->b:Llbn;

    invoke-virtual {v0, p1}, Llbn;->a(Ljava/lang/CharSequence;)V

    .line 33
    return-void
.end method

.method public final a(Lldl;)V
    .locals 2
    .param p1, "inlineParser"    # Lldl;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 60
    iget-object v0, p0, Llcc;->b:Llbn;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Llcc;->b:Llbn;

    .line 1026
    iget-object v0, v0, Llbn;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p0, Llcc;->a:Lldf;

    invoke-interface {p1, v0, v1}, Lldl;->a(Ljava/lang/String;Lldd;)V

    .line 63
    :cond_0
    return-void
.end method

.method public final b()Llcn;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Llcc;->a:Lldf;

    return-object v0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
