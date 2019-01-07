.class final Llkh$a;
.super Ljava/lang/Object;
.source "SerializedObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llkh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:[Ljava/lang/Object;

.field b:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 50
    iget v2, p0, Llkh$a;->b:I

    .line 51
    .local v2, "s":I
    iget-object v0, p0, Llkh$a;->a:[Ljava/lang/Object;

    .line 52
    .local v0, "a":[Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 53
    const/16 v3, 0x10

    new-array v0, v3, [Ljava/lang/Object;

    .line 54
    iput-object v0, p0, Llkh$a;->a:[Ljava/lang/Object;

    .line 61
    :cond_0
    :goto_0
    aput-object p1, v0, v2

    .line 62
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Llkh$a;->b:I

    .line 63
    return-void

    .line 55
    :cond_1
    array-length v3, v0

    if-ne v2, v3, :cond_0

    .line 56
    shr-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v2

    new-array v1, v3, [Ljava/lang/Object;

    .line 57
    .local v1, "array2":[Ljava/lang/Object;
    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    move-object v0, v1

    .line 59
    iput-object v0, p0, Llkh$a;->a:[Ljava/lang/Object;

    goto :goto_0
.end method
