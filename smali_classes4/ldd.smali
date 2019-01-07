.class public abstract Lldd;
.super Ljava/lang/Object;
.source "Node.java"


# instance fields
.field public f:Lldd;

.field public g:Lldd;

.field public h:Lldd;

.field public i:Lldd;

.field public j:Lldd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lldd;->f:Lldd;

    .line 6
    iput-object v0, p0, Lldd;->g:Lldd;

    .line 7
    iput-object v0, p0, Lldd;->h:Lldd;

    .line 8
    iput-object v0, p0, Lldd;->i:Lldd;

    .line 9
    iput-object v0, p0, Lldd;->j:Lldd;

    return-void
.end method


# virtual methods
.method public a()Lldd;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lldd;->f:Lldd;

    return-object v0
.end method

.method protected a(Lldd;)V
    .locals 0
    .param p1, "parent"    # Lldd;

    .prologue
    .line 34
    iput-object p1, p0, Lldd;->f:Lldd;

    .line 35
    return-void
.end method

.method public abstract a(Lldk;)V
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final b(Lldd;)V
    .locals 1
    .param p1, "child"    # Lldd;

    .prologue
    .line 38
    invoke-virtual {p1}, Lldd;->c()V

    .line 39
    invoke-virtual {p1, p0}, Lldd;->a(Lldd;)V

    .line 40
    iget-object v0, p0, Lldd;->h:Lldd;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lldd;->h:Lldd;

    iput-object p1, v0, Lldd;->j:Lldd;

    .line 42
    iget-object v0, p0, Lldd;->h:Lldd;

    iput-object v0, p1, Lldd;->i:Lldd;

    .line 43
    iput-object p1, p0, Lldd;->h:Lldd;

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    iput-object p1, p0, Lldd;->g:Lldd;

    .line 46
    iput-object p1, p0, Lldd;->h:Lldd;

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Lldd;->i:Lldd;

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lldd;->i:Lldd;

    iget-object v1, p0, Lldd;->j:Lldd;

    iput-object v1, v0, Lldd;->j:Lldd;

    .line 69
    :cond_0
    :goto_0
    iget-object v0, p0, Lldd;->j:Lldd;

    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p0, Lldd;->j:Lldd;

    iget-object v1, p0, Lldd;->i:Lldd;

    iput-object v1, v0, Lldd;->i:Lldd;

    .line 74
    :cond_1
    :goto_1
    iput-object v2, p0, Lldd;->f:Lldd;

    .line 75
    iput-object v2, p0, Lldd;->j:Lldd;

    .line 76
    iput-object v2, p0, Lldd;->i:Lldd;

    .line 77
    return-void

    .line 66
    :cond_2
    iget-object v0, p0, Lldd;->f:Lldd;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lldd;->f:Lldd;

    iget-object v1, p0, Lldd;->j:Lldd;

    iput-object v1, v0, Lldd;->g:Lldd;

    goto :goto_0

    .line 71
    :cond_3
    iget-object v0, p0, Lldd;->f:Lldd;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lldd;->f:Lldd;

    iget-object v1, p0, Lldd;->i:Lldd;

    iput-object v1, v0, Lldd;->h:Lldd;

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lldd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
