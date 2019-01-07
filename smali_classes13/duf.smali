.class public final Lduf;
.super Ljava/lang/Object;
.source "QuickLikeObject.java"


# instance fields
.field public a:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "type"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "btnIcon"
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "sendTextList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldue;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lduf;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Ldue;>;"
    const/4 v3, 0x0

    .line 57
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v2, "quickLikeObjectList":Ljava/util/List;, "Ljava/util/List<Lduf;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldue;

    .line 1046
    .local v0, "model":Ldue;
    if-eqz v0, :cond_1

    .line 1047
    new-instance v1, Lduf;

    invoke-direct {v1}, Lduf;-><init>()V

    .line 1048
    iget-object v5, v0, Ldue;->a:Ljava/lang/Integer;

    .line 2033
    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v5

    .line 1048
    iput v5, v1, Lduf;->a:I

    .line 1049
    iget-object v5, v0, Ldue;->b:Ljava/lang/String;

    iput-object v5, v1, Lduf;->b:Ljava/lang/String;

    .line 1050
    iget-object v5, v0, Ldue;->c:Ljava/util/List;

    iput-object v5, v1, Lduf;->c:Ljava/util/List;

    .line 61
    .local v1, "object":Lduf;
    :goto_1
    if-eqz v1, :cond_0

    .line 62
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "object":Lduf;
    :cond_1
    move-object v1, v3

    .line 1053
    goto :goto_1

    .end local v0    # "model":Ldue;
    .end local v2    # "quickLikeObjectList":Ljava/util/List;, "Ljava/util/List<Lduf;>;"
    :cond_2
    move-object v2, v3

    .line 67
    :cond_3
    return-object v2
.end method
