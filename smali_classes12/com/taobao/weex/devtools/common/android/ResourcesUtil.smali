.class public Lcom/taobao/weex/devtools/common/android/ResourcesUtil;
.super Ljava/lang/Object;
.source "ResourcesUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private static getFallbackIdString(I)Ljava/lang/String;
    .locals 2
    .param p0, "resourceId"    # I

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIdString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 7
    .param p0, "r"    # Landroid/content/res/Resources;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    invoke-static {p1}, Lcom/taobao/weex/devtools/common/android/ResourcesUtil;->getFallbackIdString(I)Ljava/lang/String;

    move-result-object v5

    .line 66
    :goto_0
    return-object v5

    .line 42
    :cond_0
    invoke-static {p1}, Lcom/taobao/weex/devtools/common/android/ResourcesUtil;->getResourcePackageId(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 48
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "prefix":Ljava/lang/String;
    const-string/jumbo v2, ":"

    .line 53
    .local v2, "prefixSeparator":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "typeName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "entryName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    .line 58
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 59
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 44
    .end local v0    # "entryName":Ljava/lang/String;
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "prefixSeparator":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "typeName":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v1, ""

    .line 45
    .restart local v1    # "prefix":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 46
    .restart local v2    # "prefixSeparator":Ljava/lang/String;
    goto :goto_1

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x7f
        :pswitch_0
    .end packed-switch
.end method

.method public static getIdStringQuietly(Ljava/lang/Object;Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 3
    .param p0, "idContext"    # Ljava/lang/Object;
    .param p1, "r"    # Landroid/content/res/Resources;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "resourceId"    # I
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 26
    :try_start_0
    invoke-static {p1, p2}, Lcom/taobao/weex/devtools/common/android/ResourcesUtil;->getIdString(Landroid/content/res/Resources;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 30
    :goto_0
    return-object v0

    .line 28
    :catch_0
    move-exception v1

    invoke-static {p2}, Lcom/taobao/weex/devtools/common/android/ResourcesUtil;->getFallbackIdString(I)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "idString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown identifier encountered on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/devtools/common/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getResourcePackageId(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 74
    ushr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
