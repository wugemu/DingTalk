.class final Llbr;
.super Ljava/lang/Object;
.source "Bracket.java"


# instance fields
.field final a:Lldi;

.field final b:I

.field final c:Z

.field final d:Llbr;

.field final e:Llbs;

.field f:Z

.field g:Z


# direct methods
.method constructor <init>(Lldi;ILlbr;Llbs;Z)V
    .locals 1
    .param p1, "node"    # Lldi;
    .param p2, "index"    # I
    .param p3, "previous"    # Llbr;
    .param p4, "previousDelimiter"    # Llbs;
    .param p5, "image"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Llbr;->f:Z

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Llbr;->g:Z

    .line 43
    iput-object p1, p0, Llbr;->a:Lldi;

    .line 44
    iput p2, p0, Llbr;->b:I

    .line 45
    iput-boolean p5, p0, Llbr;->c:Z

    .line 46
    iput-object p3, p0, Llbr;->d:Llbr;

    .line 47
    iput-object p4, p0, Llbr;->e:Llbs;

    .line 48
    return-void
.end method
