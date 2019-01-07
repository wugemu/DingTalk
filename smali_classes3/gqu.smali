.class public final Lgqu;
.super Ljava/lang/Object;
.source "CSpaceType.java"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/alibaba/dingtalk/cspacebase/constants/CSpaceType$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspacebase/constants/CSpaceType$1;-><init>()V

    sput-object v0, Lgqu;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2
    .param p0, "netSpaceType"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 173
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 176
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lgqu;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 2
    .param p0, "spaceTypeString"    # Ljava/lang/String;
    .param p1, "defaultSpaceType"    # I

    .prologue
    .line 196
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    .end local p1    # "defaultSpaceType":I
    :goto_0
    return p1

    .line 199
    .restart local p1    # "defaultSpaceType":I
    :cond_0
    invoke-static {p0}, Lgqu;->a(Ljava/lang/String;)I

    move-result v0

    .line 200
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 201
    move v0, p1

    :cond_1
    move p1, v0

    .line 203
    goto :goto_0
.end method

.method public static a(I)Z
    .locals 1
    .param p0, "spaceType"    # I

    .prologue
    .line 159
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lgqu;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public static a(IZ)Z
    .locals 2
    .param p0, "spaceType"    # I
    .param p1, "treatUnknownTypeAsValid"    # Z

    .prologue
    .line 163
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 166
    .end local p1    # "treatUnknownTypeAsValid":Z
    :goto_0
    return p1

    .restart local p1    # "treatUnknownTypeAsValid":Z
    :cond_0
    sget-object v0, Lgqu;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0
.end method

.method public static b(I)Z
    .locals 1
    .param p0, "spaceType"    # I

    .prologue
    .line 207
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(I)Z
    .locals 1
    .param p0, "spaceType"    # I

    .prologue
    .line 211
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(I)Z
    .locals 1
    .param p0, "spaceType"    # I

    .prologue
    .line 215
    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(I)Z
    .locals 1
    .param p0, "spaceType"    # I

    .prologue
    .line 219
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(I)Z
    .locals 1
    .param p0, "spaceType"    # I

    .prologue
    .line 223
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(I)Z
    .locals 1
    .param p0, "spaceType"    # I

    .prologue
    .line 227
    invoke-static {p0}, Lgqu;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lgqu;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(I)Z
    .locals 1
    .param p0, "spaceType"    # I

    .prologue
    const/4 v0, 0x1

    .line 231
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
