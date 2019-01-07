.class public Lcom/laiwang/protocol/android/ai;
.super Lcom/laiwang/protocol/android/ak;
.source "HelloResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/ai$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/ak$b;Lcom/laiwang/protocol/android/ak$a;)V
    .locals 0
    .param p1, "header"    # Lcom/laiwang/protocol/android/ak$b;
    .param p2, "body"    # Lcom/laiwang/protocol/android/ak$a;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/laiwang/protocol/android/ak;-><init>(Lcom/laiwang/protocol/android/ak$b;Lcom/laiwang/protocol/android/ak$a;)V

    .line 10
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 13
    iget-object v0, p0, Lcom/laiwang/protocol/android/ai;->b:Lcom/laiwang/protocol/android/ak$a;

    sget-object v1, Lcom/laiwang/protocol/android/ai$a;->a:Lcom/laiwang/protocol/android/ai$a;

    invoke-static {v1}, Lcom/laiwang/protocol/android/ai$a;->a(Lcom/laiwang/protocol/android/ai$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/ak$a;->b(I)[B

    move-result-object v0

    return-object v0
.end method

.method public b()[B
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 17
    iget-object v0, p0, Lcom/laiwang/protocol/android/ai;->b:Lcom/laiwang/protocol/android/ak$a;

    sget-object v1, Lcom/laiwang/protocol/android/ai$a;->b:Lcom/laiwang/protocol/android/ai$a;

    invoke-static {v1}, Lcom/laiwang/protocol/android/ai$a;->a(Lcom/laiwang/protocol/android/ai$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/ak$a;->b(I)[B

    move-result-object v0

    return-object v0
.end method

.method public c()[B
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 21
    iget-object v0, p0, Lcom/laiwang/protocol/android/ai;->b:Lcom/laiwang/protocol/android/ak$a;

    sget-object v1, Lcom/laiwang/protocol/android/ai$a;->e:Lcom/laiwang/protocol/android/ai$a;

    invoke-static {v1}, Lcom/laiwang/protocol/android/ai$a;->a(Lcom/laiwang/protocol/android/ai$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/ak$a;->b(I)[B

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 25
    iget-object v0, p0, Lcom/laiwang/protocol/android/ai;->b:Lcom/laiwang/protocol/android/ak$a;

    sget-object v1, Lcom/laiwang/protocol/android/ai$a;->c:Lcom/laiwang/protocol/android/ai$a;

    invoke-static {v1}, Lcom/laiwang/protocol/android/ai$a;->a(Lcom/laiwang/protocol/android/ai$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/ak$a;->a(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public e()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    iget-object v0, p0, Lcom/laiwang/protocol/android/ai;->b:Lcom/laiwang/protocol/android/ak$a;

    sget-object v1, Lcom/laiwang/protocol/android/ai$a;->d:Lcom/laiwang/protocol/android/ai$a;

    invoke-static {v1}, Lcom/laiwang/protocol/android/ai$a;->a(Lcom/laiwang/protocol/android/ai$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/ak$a;->a(I)J

    move-result-wide v0

    return-wide v0
.end method
