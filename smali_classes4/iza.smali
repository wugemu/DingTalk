.class public final Liza;
.super Ljava/lang/Object;
.source "FieldPair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FIRST:",
        "Ljava/lang/Object;",
        "SECOND:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFIRST;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSECOND;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFIRST;TSECOND;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p0, "this":Liza;, "Liza<TFIRST;TSECOND;>;"
    .local p1, "first":Ljava/lang/Object;, "TFIRST;"
    .local p2, "second":Ljava/lang/Object;, "TSECOND;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Liza;->a:Ljava/lang/Object;

    .line 12
    iput-object p2, p0, Liza;->b:Ljava/lang/Object;

    .line 13
    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 32
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Liza;, "Liza<TFIRST;TSECOND;>;"
    const/4 v1, 0x0

    .line 23
    instance-of v2, p1, Liza;

    if-nez v2, :cond_1

    .line 28
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 27
    check-cast v0, Liza;

    .line 28
    .local v0, "that":Liza;, "Liza<**>;"
    iget-object v2, p0, Liza;->a:Ljava/lang/Object;

    iget-object v3, v0, Liza;->a:Ljava/lang/Object;

    invoke-static {v2, v3}, Liza;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Liza;->b:Ljava/lang/Object;

    iget-object v3, v0, Liza;->b:Ljava/lang/Object;

    invoke-static {v2, v3}, Liza;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Liza;, "Liza<TFIRST;TSECOND;>;"
    const/4 v1, 0x0

    .line 17
    iget-object v0, p0, Liza;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Liza;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x11

    iget-object v2, p0, Liza;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v1, p0, Liza;->b:Ljava/lang/Object;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 17
    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 37
    .local p0, "this":Liza;, "Liza<TFIRST;TSECOND;>;"
    const-string/jumbo v0, "{%s,%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Liza;->a:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Liza;->b:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
