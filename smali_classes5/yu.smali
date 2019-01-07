.class public final Lyu;
.super Ljava/lang/Object;
.source "AccountUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Z
    .locals 1
    .param p0, "accountType"    # I

    .prologue
    const/4 v0, 0x1

    .line 13
    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
