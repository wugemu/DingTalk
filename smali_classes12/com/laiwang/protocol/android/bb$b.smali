.class final Lcom/laiwang/protocol/android/bb$b;
.super Lcom/laiwang/protocol/android/bb;
.source "Decode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "startLine"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/laiwang/protocol/android/bb$b;-><init>(Ljava/lang/String;Ljava/util/List;IZ)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;IZ)V
    .locals 6
    .param p1, "startLine"    # Ljava/lang/String;
    .param p3, "len"    # I
    .param p4, "zip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/laiwang/protocol/android/bb;-><init>(Ljava/lang/String;Ljava/util/List;IZLcom/laiwang/protocol/android/bb$1;)V

    .line 74
    return-void
.end method


# virtual methods
.method public final a(Lcom/laiwang/protocol/android/bb$d;Ljava/util/List;)Lcom/laiwang/protocol/android/bb;
    .locals 8
    .param p1, "in"    # Lcom/laiwang/protocol/android/bb$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laiwang/protocol/android/bb$d;",
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/android/bd;",
            ">;)",
            "Lcom/laiwang/protocol/android/bb;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/android/bb$e;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/bd;>;"
    const/4 v2, 0x0

    const/4 v4, 0x4

    .line 78
    invoke-interface {p1}, Lcom/laiwang/protocol/android/bb$d;->a()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_0

    new-instance v3, Lcom/laiwang/protocol/android/bb$e;

    invoke-direct {v3}, Lcom/laiwang/protocol/android/bb$e;-><init>()V

    throw v3

    .line 81
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 82
    iget v3, p0, Lcom/laiwang/protocol/android/bb$b;->c:I

    if-nez v3, :cond_1

    .line 83
    iget-object v3, p0, Lcom/laiwang/protocol/android/bb$b;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/laiwang/protocol/android/bb$b;->b:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/laiwang/protocol/android/bb$b;->a(Ljava/lang/String;Ljava/util/List;)Lcom/laiwang/protocol/android/bd;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v3, Lcom/laiwang/protocol/android/bb$c;

    invoke-direct {v3}, Lcom/laiwang/protocol/android/bb$c;-><init>()V

    .line 96
    :goto_0
    return-object v3

    .line 86
    :cond_1
    new-instance v3, Lcom/laiwang/protocol/android/bb$a;

    iget-object v4, p0, Lcom/laiwang/protocol/android/bb$b;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/laiwang/protocol/android/bb$b;->b:Ljava/util/List;

    iget v6, p0, Lcom/laiwang/protocol/android/bb$b;->c:I

    iget-boolean v7, p0, Lcom/laiwang/protocol/android/bb$b;->d:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/laiwang/protocol/android/bb$a;-><init>(Ljava/lang/String;Ljava/util/List;IZ)V

    goto :goto_0

    .line 90
    :cond_2
    const-string/jumbo v3, "len:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 91
    .local v0, "l":Ljava/lang/Integer;
    :goto_1
    if-eqz v0, :cond_4

    new-instance v3, Lcom/laiwang/protocol/android/bb$b;

    iget-object v4, p0, Lcom/laiwang/protocol/android/bb$b;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/laiwang/protocol/android/bb$b;->b:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-boolean v7, p0, Lcom/laiwang/protocol/android/bb$b;->d:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/laiwang/protocol/android/bb$b;-><init>(Ljava/lang/String;Ljava/util/List;IZ)V

    goto :goto_0

    .end local v0    # "l":Ljava/lang/Integer;
    :cond_3
    move-object v0, v2

    .line 90
    goto :goto_1

    .line 92
    .restart local v0    # "l":Ljava/lang/Integer;
    :cond_4
    const-string/jumbo v3, "zip:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 93
    .local v2, "z":Ljava/lang/Boolean;
    :cond_5
    if-eqz v2, :cond_6

    new-instance v3, Lcom/laiwang/protocol/android/bb$b;

    iget-object v4, p0, Lcom/laiwang/protocol/android/bb$b;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/laiwang/protocol/android/bb$b;->b:Ljava/util/List;

    iget v6, p0, Lcom/laiwang/protocol/android/bb$b;->c:I

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/laiwang/protocol/android/bb$b;-><init>(Ljava/lang/String;Ljava/util/List;IZ)V

    goto :goto_0

    .line 95
    :cond_6
    iget-object v3, p0, Lcom/laiwang/protocol/android/bb$b;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v3, Lcom/laiwang/protocol/android/bb$b;

    iget-object v4, p0, Lcom/laiwang/protocol/android/bb$b;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/laiwang/protocol/android/bb$b;->b:Ljava/util/List;

    iget v6, p0, Lcom/laiwang/protocol/android/bb$b;->c:I

    iget-boolean v7, p0, Lcom/laiwang/protocol/android/bb$b;->d:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/laiwang/protocol/android/bb$b;-><init>(Ljava/lang/String;Ljava/util/List;IZ)V

    goto :goto_0
.end method
