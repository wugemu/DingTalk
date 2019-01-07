.class final Lkoq$a;
.super Ljava/lang/Object;
.source "Huffman.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkoq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:[Lkoq$a;

.field final b:I

.field final c:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/16 v0, 0x100

    new-array v0, v0, [Lkoq$a;

    iput-object v0, p0, Lkoq$a;->a:[Lkoq$a;

    .line 210
    iput v1, p0, Lkoq$a;->b:I

    .line 211
    iput v1, p0, Lkoq$a;->c:I

    .line 212
    return-void
.end method

.method constructor <init>(II)V
    .locals 2
    .param p1, "symbol"    # I
    .param p2, "bits"    # I

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/4 v1, 0x0

    iput-object v1, p0, Lkoq$a;->a:[Lkoq$a;

    .line 222
    iput p1, p0, Lkoq$a;->b:I

    .line 223
    and-int/lit8 v0, p2, 0x7

    .line 224
    .local v0, "b":I
    if-nez v0, :cond_0

    const/16 v0, 0x8

    .end local v0    # "b":I
    :cond_0
    iput v0, p0, Lkoq$a;->c:I

    .line 225
    return-void
.end method
