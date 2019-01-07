.class public final Ljht;
.super Ljava/lang/Object;
.source "ParameterSpec.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljhl;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljhv;


# virtual methods
.method final a(Ljhp;Z)V
    .locals 5
    .param p1, "codeWriter"    # Ljhp;
    .param p2, "varargs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 52
    iget-object v0, p0, Ljht;->b:Ljava/util/List;

    invoke-virtual {p1, v0, v3}, Ljhp;->a(Ljava/util/List;Z)V

    .line 53
    iget-object v0, p0, Ljht;->c:Ljava/util/Set;

    .line 1180
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljhp;->a(Ljava/util/Set;Ljava/util/Set;)V

    .line 54
    if-eqz p2, :cond_0

    .line 55
    const-string/jumbo v0, "$T... $L"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Ljht;->d:Ljhv;

    invoke-static {v2}, Ljhv;->b(Ljhv;)Ljhv;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Ljht;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Ljhp;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljhp;

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    const-string/jumbo v0, "$T $L"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Ljht;->d:Ljhv;

    aput-object v2, v1, v4

    iget-object v2, p0, Ljht;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Ljhp;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljhp;

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 62
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 65
    invoke-virtual {p0}, Ljht;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Ljht;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 73
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 75
    .local v1, "out":Ljava/io/StringWriter;
    :try_start_0
    new-instance v0, Ljhp;

    invoke-direct {v0, v1}, Ljhp;-><init>(Ljava/lang/Appendable;)V

    .line 76
    .local v0, "codeWriter":Ljhp;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Ljht;->a(Ljhp;Z)V

    .line 77
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 79
    .end local v0    # "codeWriter":Ljhp;
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method
