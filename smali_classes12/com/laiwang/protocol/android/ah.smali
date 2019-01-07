.class public Lcom/laiwang/protocol/android/ah;
.super Lcom/laiwang/protocol/android/ak;
.source "HelloRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/ah$a;
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "version"    # I

    .prologue
    .line 13
    sget-object v0, Lcom/laiwang/protocol/android/ak$c;->b:Lcom/laiwang/protocol/android/ak$c;

    invoke-direct {p0, p1, v0}, Lcom/laiwang/protocol/android/ak;-><init>(ILcom/laiwang/protocol/android/ak$c;)V

    .line 14
    iget-object v0, p0, Lcom/laiwang/protocol/android/ah;->a:Lcom/laiwang/protocol/android/ak$b;

    const/4 v1, 0x1

    iput v1, v0, Lcom/laiwang/protocol/android/ak$b;->e:I

    .line 15
    return-void
.end method


# virtual methods
.method public a(B)V
    .locals 2
    .param p1, "cipherIndex"    # B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    iget-object v0, p0, Lcom/laiwang/protocol/android/ah;->b:Lcom/laiwang/protocol/android/ak$a;

    sget-object v1, Lcom/laiwang/protocol/android/ah$a;->b:Lcom/laiwang/protocol/android/ah$a;

    iget v1, v1, Lcom/laiwang/protocol/android/ah$a;->j:I

    invoke-virtual {v0, v1, p1}, Lcom/laiwang/protocol/android/ak$a;->a(IB)V

    .line 44
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 18
    iget-object v0, p0, Lcom/laiwang/protocol/android/ah;->b:Lcom/laiwang/protocol/android/ak$a;

    sget-object v1, Lcom/laiwang/protocol/android/ah$a;->i:Lcom/laiwang/protocol/android/ah$a;

    iget v1, v1, Lcom/laiwang/protocol/android/ah$a;->j:I

    invoke-virtual {v0, v1, p1}, Lcom/laiwang/protocol/android/ak$a;->a(ILjava/lang/String;)V

    .line 19
    return-void
.end method

.method public a([B)V
    .locals 2
    .param p1, "sid"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 23
    iget-object v0, p0, Lcom/laiwang/protocol/android/ah;->b:Lcom/laiwang/protocol/android/ak$a;

    sget-object v1, Lcom/laiwang/protocol/android/ah$a;->a:Lcom/laiwang/protocol/android/ah$a;

    iget v1, v1, Lcom/laiwang/protocol/android/ah$a;->j:I

    invoke-virtual {v0, v1, p1}, Lcom/laiwang/protocol/android/ak$a;->a(I[B)V

    .line 24
    return-void
.end method

.method public a()[B
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    iget-object v0, p0, Lcom/laiwang/protocol/android/ah;->b:Lcom/laiwang/protocol/android/ak$a;

    sget-object v1, Lcom/laiwang/protocol/android/ah$a;->a:Lcom/laiwang/protocol/android/ah$a;

    iget v1, v1, Lcom/laiwang/protocol/android/ah$a;->j:I

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/ak$a;->b(I)[B

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .param p1, "via"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    iget-object v0, p0, Lcom/laiwang/protocol/android/ah;->b:Lcom/laiwang/protocol/android/ak$a;

    sget-object v1, Lcom/laiwang/protocol/android/ah$a;->g:Lcom/laiwang/protocol/android/ah$a;

    iget v1, v1, Lcom/laiwang/protocol/android/ah$a;->j:I

    invoke-virtual {v0, v1, p1}, Lcom/laiwang/protocol/android/ak$a;->a(ILjava/lang/String;)V

    .line 36
    return-void
.end method

.method public b([B)V
    .locals 2
    .param p1, "value"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    iget-object v0, p0, Lcom/laiwang/protocol/android/ah;->b:Lcom/laiwang/protocol/android/ak$a;

    sget-object v1, Lcom/laiwang/protocol/android/ah$a;->d:Lcom/laiwang/protocol/android/ah$a;

    iget v1, v1, Lcom/laiwang/protocol/android/ah$a;->j:I

    invoke-virtual {v0, v1, p1}, Lcom/laiwang/protocol/android/ak$a;->a(I[B)V

    .line 32
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2
    .param p1, "sni"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    iget-object v0, p0, Lcom/laiwang/protocol/android/ah;->b:Lcom/laiwang/protocol/android/ak$a;

    sget-object v1, Lcom/laiwang/protocol/android/ah$a;->c:Lcom/laiwang/protocol/android/ah$a;

    iget v1, v1, Lcom/laiwang/protocol/android/ah$a;->j:I

    invoke-virtual {v0, v1, p1}, Lcom/laiwang/protocol/android/ak$a;->a(ILjava/lang/String;)V

    .line 52
    return-void
.end method

.method public c([B)V
    .locals 2
    .param p1, "appNonce"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    iget-object v0, p0, Lcom/laiwang/protocol/android/ah;->b:Lcom/laiwang/protocol/android/ak$a;

    sget-object v1, Lcom/laiwang/protocol/android/ah$a;->e:Lcom/laiwang/protocol/android/ah$a;

    iget v1, v1, Lcom/laiwang/protocol/android/ah$a;->j:I

    invoke-virtual {v0, v1, p1}, Lcom/laiwang/protocol/android/ak$a;->a(I[B)V

    .line 57
    return-void
.end method

.method public d([B)V
    .locals 2
    .param p1, "serNonce"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    iget-object v0, p0, Lcom/laiwang/protocol/android/ah;->b:Lcom/laiwang/protocol/android/ak$a;

    sget-object v1, Lcom/laiwang/protocol/android/ah$a;->f:Lcom/laiwang/protocol/android/ah$a;

    iget v1, v1, Lcom/laiwang/protocol/android/ah$a;->j:I

    invoke-virtual {v0, v1, p1}, Lcom/laiwang/protocol/android/ak$a;->a(I[B)V

    .line 61
    return-void
.end method
