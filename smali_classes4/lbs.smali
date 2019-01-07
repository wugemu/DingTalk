.class final Llbs;
.super Ljava/lang/Object;
.source "Delimiter.java"

# interfaces
.implements Lldx;


# instance fields
.field final a:Lldi;

.field final b:C

.field final c:Z

.field final d:Z

.field e:Llbs;

.field f:Llbs;

.field g:I


# direct methods
.method constructor <init>(Lldi;CZZLlbs;)V
    .locals 1
    .param p1, "node"    # Lldi;
    .param p2, "delimiterChar"    # C
    .param p3, "canOpen"    # Z
    .param p4, "canClose"    # Z
    .param p5, "previous"    # Llbs;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Llbs;->g:I

    .line 30
    iput-object p1, p0, Llbs;->a:Lldi;

    .line 31
    iput-char p2, p0, Llbs;->b:C

    .line 32
    iput-boolean p3, p0, Llbs;->c:Z

    .line 33
    iput-boolean p4, p0, Llbs;->d:Z

    .line 34
    iput-object p5, p0, Llbs;->e:Llbs;

    .line 35
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Llbs;->c:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Llbs;->d:Z

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Llbs;->g:I

    return v0
.end method
