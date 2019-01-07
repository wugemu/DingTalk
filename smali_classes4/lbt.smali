.class public final Llbt;
.super Lldo;
.source "DocumentBlockParser.java"


# instance fields
.field public final a:Llcr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lldo;-><init>()V

    .line 11
    new-instance v0, Llcr;

    invoke-direct {v0}, Llcr;-><init>()V

    iput-object v0, p0, Llbt;->a:Llcr;

    return-void
.end method


# virtual methods
.method public final a(Lldv;)Lldq;
    .locals 1
    .param p1, "state"    # Lldv;

    .prologue
    .line 30
    invoke-interface {p1}, Lldv;->b()I

    move-result v0

    invoke-static {v0}, Lldq;->a(I)Lldq;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "line"    # Ljava/lang/CharSequence;

    .prologue
    .line 35
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Llcn;)Z
    .locals 1
    .param p1, "block"    # Llcn;

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic b()Llcn;
    .locals 1

    .prologue
    .line 9
    .line 1025
    iget-object v0, p0, Llbt;->a:Llcr;

    .line 9
    return-object v0
.end method
