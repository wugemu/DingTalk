.class public final Lhal;
.super Ljava/lang/Object;
.source "ConvertedObject.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Landroid/graphics/Bitmap$CompressFormat;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 84
    if-ne p0, p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v2

    .line 88
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_3

    :cond_2
    move v2, v3

    .line 89
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 92
    check-cast v0, Lhal;

    .line 94
    .local v0, "object":Lhal;
    iget-object v4, p0, Lhal;->a:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lhal;->a:Ljava/lang/String;

    iget-object v5, v0, Lhal;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_4
    move v1, v3

    .line 96
    .local v1, "originUrlSame":Z
    :goto_1
    if-eqz v1, :cond_5

    iget-object v4, p0, Lhal;->e:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v5, v0, Lhal;->e:Landroid/graphics/Bitmap$CompressFormat;

    if-eq v4, v5, :cond_0

    :cond_5
    move v2, v3

    goto :goto_0

    .line 94
    .end local v1    # "originUrlSame":Z
    :cond_6
    iget-object v4, v0, Lhal;->a:Ljava/lang/String;

    if-nez v4, :cond_4

    :cond_7
    move v1, v2

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v1, p0, Lhal;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit8 v0, v1, 0x1f

    .line 104
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lhal;->e:Landroid/graphics/Bitmap$CompressFormat;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 106
    return v0

    .line 103
    .end local v0    # "result":I
    :cond_0
    iget-object v1, p0, Lhal;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 104
    .restart local v0    # "result":I
    :cond_1
    iget-object v2, p0, Lhal;->e:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->hashCode()I

    move-result v2

    goto :goto_1
.end method
