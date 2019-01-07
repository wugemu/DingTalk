.class public Lcom/alibaba/doraemon/utils/ApplicationMimeUtils;
.super Ljava/lang/Object;
.source "ApplicationMimeUtils.java"


# static fields
.field public static TYPE_IMAGE:I

.field public static TYPE_OTHERS:I

.field private static mApplicationMimeMap:Ljava/util/Map;
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
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    sput v2, Lcom/alibaba/doraemon/utils/ApplicationMimeUtils;->TYPE_IMAGE:I

    .line 13
    sput v1, Lcom/alibaba/doraemon/utils/ApplicationMimeUtils;->TYPE_OTHERS:I

    .line 18
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/alibaba/doraemon/utils/ApplicationMimeUtils;->mApplicationMimeMap:Ljava/util/Map;

    .line 19
    invoke-static {}, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;->values()[Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;

    move-result-object v2

    array-length v3, v2

    .local v0, "type":Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 20
    sget-object v4, Lcom/alibaba/doraemon/utils/ApplicationMimeUtils;->mApplicationMimeMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;->getMime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isImage(Ljava/lang/String;)Z
    .locals 4
    .param p0, "mime"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 25
    sget-object v2, Lcom/alibaba/doraemon/utils/ApplicationMimeUtils;->mApplicationMimeMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 26
    .local v0, "integer":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Lcom/alibaba/doraemon/utils/ApplicationMimeUtils;->TYPE_IMAGE:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 29
    :cond_0
    return v1
.end method
