.class public final Ligd;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static varargs a([I)Z
    .locals 5
    .param p0, "grantResults"    # [I

    .prologue
    .line 18
    move-object v0, p0

    .line 19
    .local v0, "arr$":[I
    array-length v2, p0

    .line 21
    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 22
    aget v3, v0, v1

    .line 23
    .local v3, "result":I
    if-eqz v3, :cond_0

    .line 24
    const/4 v4, 0x0

    .line 28
    .end local v3    # "result":I
    :goto_1
    return v4

    .line 21
    .restart local v3    # "result":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    .end local v3    # "result":I
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static varargs a([Ljava/lang/String;)Z
    .locals 1
    .param p0, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 46
    .line 48
    const/4 v0, 0x1

    return v0
.end method
