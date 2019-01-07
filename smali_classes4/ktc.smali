.class public final Lktc;
.super Ljava/lang/Object;
.source "LangUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static a(ILjava/lang/Object;)I
    .locals 2
    .param p0, "seed"    # I
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 44
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1036
    :goto_0
    mul-int/lit8 v1, p0, 0x25

    add-int/2addr v0, v1

    .line 44
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
