.class public abstract Lkue;
.super Lkty;


# instance fields
.field protected a:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkty;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lkue;->a:Ljava/util/Vector;

    return-void
.end method

.method public static a(Lkuh;Z)Lkue;
    .locals 3

    .prologue
    .line 0
    .line 1000
    iget-boolean v0, p0, Lkuh;->c:Z

    .line 0
    if-eqz v0, :cond_0

    new-instance v0, Lkvu;

    invoke-virtual {p0}, Lkuh;->e()Lkvm;

    move-result-object v1

    invoke-direct {v0, v1}, Lkvu;-><init>(Lkva;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lkuh;->e()Lkvm;

    move-result-object v0

    instance-of v0, v0, Lkue;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkuh;->e()Lkvm;

    move-result-object v0

    check-cast v0, Lkue;

    goto :goto_0

    :cond_1
    new-instance v1, Lktv;

    invoke-direct {v1}, Lktv;-><init>()V

    invoke-virtual {p0}, Lkuh;->e()Lkvm;

    move-result-object v0

    instance-of v0, v0, Lkuc;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lkuh;->e()Lkvm;

    move-result-object v0

    check-cast v0, Lkuc;

    invoke-virtual {v0}, Lkuc;->e()Ljava/util/Enumeration;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkva;

    invoke-virtual {v1, v0}, Lktv;->a(Lkva;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lkvu;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkvu;-><init>(Lkvb;Z)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unknown object in getInstance: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Lkva;)[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lkub;

    invoke-direct {v1, v0}, Lkub;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v1, p0}, Lkub;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "cannot encode object added to SET"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(I)Lkva;
    .locals 1

    iget-object v0, p0, Lkue;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkva;

    return-object v0
.end method

.method protected a(Lkva;)V
    .locals 1

    iget-object v0, p0, Lkue;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method abstract a(Lkvq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final a(Lkvm;)Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 0
    instance-of v0, p1, Lkue;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lkue;

    .line 4000
    iget-object v0, p0, Lkue;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 5000
    iget-object v2, p1, Lkue;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    .line 0
    if-eq v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 6000
    :cond_1
    iget-object v0, p0, Lkue;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 7000
    iget-object v0, p1, Lkue;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 0
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkva;

    invoke-interface {v0}, Lkva;->c()Lkvm;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkva;

    invoke-interface {v0}, Lkva;->c()Lkvm;

    move-result-object v0

    if-eq v4, v0, :cond_2

    if-eqz v4, :cond_3

    invoke-virtual {v4, v0}, Lkvm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final e()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lkue;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lkue;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method protected final g()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 0
    iget-object v0, p0, Lkue;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v7, :cond_7

    iget-object v0, p0, Lkue;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    move v8, v4

    move v6, v7

    :goto_0
    if-eqz v6, :cond_7

    iget-object v0, p0, Lkue;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkva;

    invoke-static {v0}, Lkue;->b(Lkva;)[B

    move-result-object v3

    move v4, v1

    move v5, v1

    move v6, v1

    :goto_1
    if-eq v5, v8, :cond_6

    iget-object v0, p0, Lkue;->a:Ljava/util/Vector;

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkva;

    invoke-static {v0}, Lkue;->b(Lkva;)[B

    move-result-object v2

    .line 8000
    array-length v0, v3

    array-length v9, v2

    if-gt v0, v9, :cond_2

    move v0, v1

    :goto_2
    array-length v9, v3

    if-eq v0, v9, :cond_1

    aget-byte v9, v3, v0

    and-int/lit16 v9, v9, 0xff

    aget-byte v10, v2, v0

    and-int/lit16 v10, v10, 0xff

    if-le v10, v9, :cond_0

    move v0, v7

    .line 0
    :goto_3
    if-eqz v0, :cond_5

    move-object v0, v2

    move v3, v6

    move v2, v4

    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v4, v2

    move v6, v3

    move-object v3, v0

    goto :goto_1

    .line 8000
    :cond_0
    if-gt v9, v10, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v0, v7

    goto :goto_3

    :cond_2
    move v0, v1

    :goto_5
    array-length v9, v2

    if-eq v0, v9, :cond_4

    aget-byte v9, v3, v0

    and-int/lit16 v9, v9, 0xff

    aget-byte v10, v2, v0

    and-int/lit16 v10, v10, 0xff

    if-le v10, v9, :cond_3

    move v0, v7

    goto :goto_3

    :cond_3
    if-gt v9, v10, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    move v0, v1

    goto :goto_3

    .line 0
    :cond_5
    iget-object v0, p0, Lkue;->a:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lkue;->a:Ljava/util/Vector;

    iget-object v4, p0, Lkue;->a:Ljava/util/Vector;

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    iget-object v2, p0, Lkue;->a:Ljava/util/Vector;

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v2, v0, v4}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move-object v0, v3

    move v2, v5

    move v3, v7

    goto :goto_4

    :cond_6
    move v8, v4

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    .line 2000
    iget-object v0, p0, Lkue;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 3000
    iget-object v0, p0, Lkue;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 0
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x11

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkue;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
