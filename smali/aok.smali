.class public final Laok;
.super Ljava/lang/Object;
.source "ExpressionPair.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "transformed"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Laok;->a:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Laok;->b:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Laok;
    .locals 1
    .param p0, "origin"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "transformed"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 44
    new-instance v0, Laok;

    invoke-direct {v0, p0, p1}, Laok;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Laok;)Z
    .locals 2
    .param p0, "pair"    # Laok;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    if-eqz p0, :cond_0

    iget-object v0, p0, Laok;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "{}"

    iget-object v1, p0, Laok;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    if-ne p0, p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v1

    .line 54
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

    :cond_3
    move-object v0, p1

    .line 56
    check-cast v0, Laok;

    .line 58
    .local v0, "that":Laok;
    iget-object v3, p0, Laok;->a:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Laok;->a:Ljava/lang/String;

    iget-object v4, v0, Laok;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Laok;->a:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 59
    :cond_6
    iget-object v3, p0, Laok;->b:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v1, p0, Laok;->b:Ljava/lang/String;

    iget-object v2, v0, Laok;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_7
    iget-object v3, v0, Laok;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v2, p0, Laok;->a:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Laok;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 66
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Laok;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Laok;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 67
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 65
    goto :goto_0
.end method
