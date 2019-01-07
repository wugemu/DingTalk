.class public final Llel;
.super Llej;
.source "XmlDeclaration.java"


# instance fields
.field private final a:Z


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "#declaration"

    return-object v0
.end method

.method final a(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 4
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 56
    const-string/jumbo v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Llel;->a:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "!"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1032
    iget-object v0, p0, Llel;->f:Lled;

    const-string/jumbo v2, "declaration"

    invoke-virtual {v0, v2}, Lled;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1034
    const-string/jumbo v2, "xml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Llel;->f:Lled;

    invoke-virtual {v2}, Lled;->a()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 1035
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1036
    iget-object v0, p0, Llel;->f:Lled;

    const-string/jumbo v3, "version"

    invoke-virtual {v0, v3}, Lled;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1038
    if-eqz v0, :cond_0

    .line 1039
    const-string/jumbo v3, " version=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    :cond_0
    iget-object v0, p0, Llel;->f:Lled;

    const-string/jumbo v3, "encoding"

    invoke-virtual {v0, v3}, Lled;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1044
    if-eqz v0, :cond_1

    .line 1045
    const-string/jumbo v3, " encoding=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    return-void

    .line 56
    :cond_2
    const-string/jumbo v0, "?"

    goto :goto_0

    .line 1051
    :cond_3
    iget-object v0, p0, Llel;->f:Lled;

    const-string/jumbo v2, "declaration"

    invoke-virtual {v0, v2}, Lled;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method final b(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$OutputSettings;

    .prologue
    .line 63
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Llel;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
