.class public final Lkut;
.super Lkvy;


# direct methods
.method public constructor <init>(ILkva;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lkvy;-><init>(ILkva;)V

    return-void
.end method

.method public constructor <init>(ZILkva;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkvy;-><init>(ZILkva;)V

    return-void
.end method


# virtual methods
.method final a(Lkvq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v2, 0x0

    instance-of v0, p1, Lkub;

    if-nez v0, :cond_0

    instance-of v0, p1, Lkuo;

    if-eqz v0, :cond_7

    :cond_0
    const/16 v0, 0xa0

    iget v1, p0, Lkut;->a:I

    invoke-virtual {p1, v0, v1}, Lkvq;->a(II)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lkvq;->write(I)V

    iget-boolean v0, p0, Lkut;->c:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lkut;->d:Lkva;

    instance-of v0, v0, Lktz;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkut;->d:Lkva;

    instance-of v0, v0, Lkul;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkut;->d:Lkva;

    check-cast v0, Lkul;

    invoke-virtual {v0}, Lkul;->g()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkvq;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lkut;->d:Lkva;

    check-cast v0, Lktz;

    new-instance v1, Lkul;

    invoke-virtual {v0}, Lktz;->f()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lkul;-><init>([B)V

    invoke-virtual {v1}, Lkul;->g()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lkut;->d:Lkva;

    instance-of v0, v0, Lkuc;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkut;->d:Lkva;

    check-cast v0, Lkuc;

    invoke-virtual {v0}, Lkuc;->e()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lkut;->d:Lkva;

    instance-of v0, v0, Lkue;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkut;->d:Lkva;

    check-cast v0, Lkue;

    invoke-virtual {v0}, Lkue;->e()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "not implemented: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lkut;->d:Lkva;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lkut;->d:Lkva;

    invoke-virtual {p1, v0}, Lkvq;->a(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p1, v2}, Lkvq;->write(I)V

    invoke-virtual {p1, v2}, Lkvq;->write(I)V

    :goto_1
    return-void

    :cond_7
    invoke-super {p0, p1}, Lkvy;->a(Lkvq;)V

    goto :goto_1
.end method
