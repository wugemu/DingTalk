.class public Ldso;
.super Ljava/lang/Object;
.source "CelebrateListObject.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "celebrateObjectList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldsq;",
            ">;"
        }
    .end annotation
.end field

.field public b:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ldsn;)Ldso;
    .locals 8
    .param p0, "model"    # Ldsn;

    .prologue
    const/4 v3, 0x0

    .line 21
    if-eqz p0, :cond_4

    .line 22
    new-instance v0, Ldso;

    invoke-direct {v0}, Ldso;-><init>()V

    .line 23
    .local v0, "object":Ldso;
    iget-object v1, p0, Ldsn;->a:Ljava/util/List;

    .line 1063
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1064
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1065
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldsp;

    .line 2051
    if-eqz v1, :cond_1

    .line 2052
    new-instance v4, Ldsq;

    invoke-direct {v4}, Ldsq;-><init>()V

    .line 2053
    iget-object v6, v1, Ldsp;->a:Ljava/util/List;

    iput-object v6, v4, Ldsq;->a:Ljava/util/List;

    .line 2054
    iget-object v6, v1, Ldsp;->b:Ljava/util/List;

    iput-object v6, v4, Ldsq;->b:Ljava/util/List;

    .line 2055
    iget-object v6, v1, Ldsp;->c:Ljava/lang/Integer;

    .line 3033
    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v6

    .line 2055
    iput v6, v4, Ldsq;->c:I

    .line 2056
    iget-object v1, v1, Ldsp;->d:Ljava/util/List;

    invoke-static {v1}, Lduf;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v4, Ldsq;->d:Ljava/util/List;

    move-object v1, v4

    .line 1067
    :goto_1
    if-eqz v1, :cond_0

    .line 1068
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 2059
    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 23
    :goto_2
    iput-object v1, v0, Ldso;->a:Ljava/util/List;

    .line 24
    iget-object v1, p0, Ldsn;->b:Ljava/lang/Long;

    .line 3044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 24
    iput-wide v2, v0, Ldso;->b:J

    .line 27
    .end local v0    # "object":Ldso;
    :goto_3
    return-object v0

    .restart local v0    # "object":Ldso;
    :cond_3
    move-object v1, v3

    .line 1073
    goto :goto_2

    .end local v0    # "object":Ldso;
    :cond_4
    move-object v0, v3

    .line 27
    goto :goto_3
.end method
