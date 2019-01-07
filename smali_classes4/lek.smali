.class public final Llek;
.super Llej;
.source "TextNode.java"


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Llej;-><init>()V

    .line 27
    iput-object p2, p0, Llek;->g:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Llek;->a:Ljava/lang/String;

    .line 29
    return-void
.end method

.method static b(Ljava/lang/StringBuilder;)Z
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 134
    iget-object v0, p0, Llek;->f:Lled;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lled;

    invoke-direct {v0}, Lled;-><init>()V

    iput-object v0, p0, Llek;->f:Lled;

    .line 136
    iget-object v0, p0, Llek;->f:Lled;

    const-string/jumbo v1, "text"

    iget-object v2, p0, Llek;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lled;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "#text"

    return-object v0
.end method

.method final a(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 6
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 93
    .line 1468
    iget-boolean v0, p3, Lorg/jsoup/nodes/Document$OutputSettings;->c:Z

    .line 93
    if-eqz v0, :cond_0

    .line 1529
    iget v0, p0, Llej;->h:I

    .line 93
    if-nez v0, :cond_0

    iget-object v0, p0, Llek;->d:Llej;

    instance-of v0, v0, Lleh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llek;->d:Llej;

    check-cast v0, Lleh;

    .line 2087
    iget-object v0, v0, Lleh;->c:Lleq;

    .line 3083
    iget-boolean v0, v0, Lleq;->d:Z

    .line 93
    if-eqz v0, :cond_0

    .line 4069
    invoke-virtual {p0}, Llek;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llea;->a(Ljava/lang/String;)Z

    move-result v0

    .line 93
    if-eqz v0, :cond_1

    .line 6468
    :cond_0
    :goto_0
    iget-boolean v0, p3, Lorg/jsoup/nodes/Document$OutputSettings;->c:Z

    .line 96
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Llek;->q()Llej;

    move-result-object v0

    instance-of v0, v0, Lleh;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Llek;->q()Llej;

    move-result-object v0

    invoke-static {v0}, Lleh;->c(Llej;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v4, 0x1

    .line 98
    .local v4, "normaliseWhite":Z
    :goto_1
    invoke-virtual {p0}, Llek;->b()Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    move-object v2, p3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lorg/jsoup/nodes/Entities;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZ)V

    .line 99
    return-void

    .line 94
    .end local v4    # "normaliseWhite":Z
    :cond_1
    invoke-static {p1, p2, p3}, Llek;->c(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V

    goto :goto_0

    :cond_2
    move v4, v3

    .line 96
    goto :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 61
    iget-object v0, p0, Llek;->f:Lled;

    if-nez v0, :cond_0

    iget-object v0, p0, Llek;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llek;->f:Lled;

    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Lled;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Llej;
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-direct {p0}, Llek;->d()V

    .line 155
    invoke-super {p0, p1, p2}, Llej;->b(Ljava/lang/String;Ljava/lang/String;)Llej;

    move-result-object v0

    return-object v0
.end method

.method final b(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$OutputSettings;

    .prologue
    .line 101
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    if-ne p0, p1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v1

    .line 179
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    .line 180
    :cond_3
    invoke-super {p0, p1}, Llej;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 182
    check-cast v0, Llek;

    .line 184
    .local v0, "textNode":Llek;
    iget-object v3, p0, Llek;->a:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Llek;->a:Ljava/lang/String;

    iget-object v4, v0, Llek;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, v0, Llek;->a:Ljava/lang/String;

    if-nez v3, :cond_5

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 189
    invoke-super {p0}, Llej;->hashCode()I

    move-result v0

    .line 190
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Llek;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Llek;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 191
    return v0

    .line 190
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final n(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-direct {p0}, Llek;->d()V

    .line 143
    invoke-super {p0, p1}, Llej;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o(Ljava/lang/String;)Z
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-direct {p0}, Llek;->d()V

    .line 161
    invoke-super {p0, p1}, Llej;->o(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final p(Ljava/lang/String;)Llej;
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-direct {p0}, Llek;->d()V

    .line 167
    invoke-super {p0, p1}, Llej;->p(Ljava/lang/String;)Llej;

    move-result-object v0

    return-object v0
.end method

.method public final q(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-direct {p0}, Llek;->d()V

    .line 173
    invoke-super {p0, p1}, Llej;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r()Lled;
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Llek;->d()V

    .line 149
    invoke-super {p0}, Llej;->r()Lled;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Llek;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
