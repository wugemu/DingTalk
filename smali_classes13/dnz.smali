.class public final Ldnz;
.super Ljava/lang/Object;
.source "DtImagePostProcessor.java"

# interfaces
.implements Lldn;


# instance fields
.field a:Ldne;

.field private b:Llch;

.field private c:Ldoa;


# direct methods
.method public constructor <init>(Ldne;)V
    .locals 2
    .param p1, "cacher"    # Ldne;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Ldnz;->a:Ldne;

    .line 26
    iget-object v0, p0, Ldnz;->a:Ldne;

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Llch;

    invoke-direct {v0}, Llch;-><init>()V

    iput-object v0, p0, Ldnz;->b:Llch;

    .line 28
    new-instance v0, Ldoa;

    new-instance v1, Ldnz$1;

    invoke-direct {v1, p0}, Ldnz$1;-><init>(Ldnz;)V

    invoke-direct {v0, v1}, Ldoa;-><init>(Ldob;)V

    iput-object v0, p0, Ldnz;->c:Ldoa;

    .line 39
    iget-object v0, p0, Ldnz;->b:Llch;

    iget-object v1, p0, Ldnz;->c:Ldoa;

    invoke-virtual {v0, v1}, Llch;->a(Lldy;)V

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lldd;)Lldd;
    .locals 1
    .param p1, "node"    # Lldd;

    .prologue
    .line 46
    iget-object v0, p0, Ldnz;->b:Llch;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Ldnz;->b:Llch;

    invoke-virtual {v0, p1}, Llch;->a(Lldd;)V

    .line 49
    :cond_0
    return-object p1
.end method
