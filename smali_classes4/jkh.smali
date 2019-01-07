.class public final Ljkh;
.super Ljava/lang/Object;
.source "Preconditions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "errorMessage"    # Ljava/lang/String;
    .param p1, "expression"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Lcom/taobao/artc/api/ArtcException;

    invoke-direct {v0, p0}, Lcom/taobao/artc/api/ArtcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "errorMessage"    # Ljava/lang/String;
    .param p1, "references"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    const-string/jumbo p0, "references is null"

    .line 17
    :cond_0
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v0, p1, v1

    .line 18
    .local v0, "reference":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 19
    new-instance v1, Lcom/taobao/artc/api/ArtcException;

    invoke-direct {v1, p0}, Lcom/taobao/artc/api/ArtcException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_1
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 22
    check-cast v0, Ljava/lang/String;

    .end local v0    # "reference":Ljava/lang/Object;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 23
    new-instance v1, Lcom/taobao/artc/api/ArtcException;

    invoke-direct {v1, p0}, Lcom/taobao/artc/api/ArtcException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    :cond_3
    return-void
.end method
