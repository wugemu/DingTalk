.class final Lktb;
.super Ljava/lang/Object;
.source "EmptyByteSequence.java"

# interfaces
.implements Lksy;


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lktb;->a:[B

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lktb;->a:[B

    return-object v0
.end method

.method public final b(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 30
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method
