.class final Lbtr$a;
.super Ljava/lang/Object;
.source "LiveRecordCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "searchType"    # I
    .param p2, "pageNum"    # I

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p1, p0, Lbtr$a;->a:I

    .line 105
    iput p2, p0, Lbtr$a;->b:I

    .line 106
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    if-ne p1, p0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 118
    :cond_1
    instance-of v3, p1, Lbtr$a;

    if-nez v3, :cond_2

    move v1, v2

    .line 119
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 122
    check-cast v0, Lbtr$a;

    .line 123
    .local v0, "key":Lbtr$a;
    iget v3, p0, Lbtr$a;->a:I

    iget v4, v0, Lbtr$a;->a:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lbtr$a;->b:I

    iget v4, v0, Lbtr$a;->b:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 110
    iget v0, p0, Lbtr$a;->b:I

    iget v1, p0, Lbtr$a;->a:I

    add-int/lit8 v1, v1, 0x8

    shl-int/2addr v0, v1

    return v0
.end method
