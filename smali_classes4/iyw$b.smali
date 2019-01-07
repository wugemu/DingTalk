.class final Liyw$b;
.super Ljava/lang/Object;
.source "RpcCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liyw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Liyw$a;

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Liyw$b;->b:Ljava/lang/String;

    .line 170
    iput-object p2, p0, Liyw$b;->c:[Ljava/lang/Object;

    .line 171
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 183
    const/4 v1, 0x0

    .local v1, "isEqual":Z
    move-object v2, p1

    .line 184
    check-cast v2, Liyw$b;

    .line 185
    .local v2, "that":Liyw$b;
    iget-object v3, p0, Liyw$b;->b:Ljava/lang/String;

    iget-object v4, v2, Liyw$b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    iget-object v3, p0, Liyw$b;->c:[Ljava/lang/Object;

    if-eqz v3, :cond_4

    iget-object v3, v2, Liyw$b;->c:[Ljava/lang/Object;

    if-eqz v3, :cond_4

    iget-object v3, p0, Liyw$b;->c:[Ljava/lang/Object;

    array-length v3, v3

    iget-object v4, v2, Liyw$b;->c:[Ljava/lang/Object;

    array-length v4, v4

    if-ne v3, v4, :cond_4

    .line 187
    const/4 v1, 0x1

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Liyw$b;->c:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 189
    iget-object v3, p0, Liyw$b;->c:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    iget-object v3, p0, Liyw$b;->c:[Ljava/lang/Object;

    aget-object v3, v3, v0

    iget-object v4, v2, Liyw$b;->c:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 190
    :cond_0
    const/4 v1, 0x0

    .line 198
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return v1

    .line 189
    .restart local v0    # "i":I
    :cond_2
    iget-object v3, v2, Liyw$b;->c:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-nez v3, :cond_0

    .line 188
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    .end local v0    # "i":I
    :cond_4
    iget-object v3, v2, Liyw$b;->c:[Ljava/lang/Object;

    if-nez v3, :cond_1

    iget-object v3, p0, Liyw$b;->c:[Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 195
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
