.class public Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;
.super Ljava/lang/Object;
.source "AnchorObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1d4d6549e1ef8819L


# instance fields
.field public id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lbtz;)Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;
    .locals 4
    .param p0, "model"    # Lbtz;

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    .line 26
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;-><init>()V

    .line 27
    .local v0, "object":Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;
    iget-object v1, p0, Lbtz;->a:Ljava/lang/Long;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;->id:J

    goto :goto_0
.end method

.method public static fromIdl(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbtz;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "models":Ljava/util/List;, "Ljava/util/List<Lbtz;>;"
    if-nez p0, :cond_1

    .line 34
    const/4 v2, 0x0

    .line 45
    :cond_0
    return-object v2

    .line 37
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .local v2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtz;

    .line 39
    .local v0, "model":Lbtz;
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;->fromIdl(Lbtz;)Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;

    move-result-object v1

    .line 40
    .local v1, "object":Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;
    if-eqz v1, :cond_2

    .line 41
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static toIdl(Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;)Lbtz;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;

    .prologue
    .line 49
    if-nez p0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    .line 53
    :cond_0
    new-instance v0, Lbtz;

    invoke-direct {v0}, Lbtz;-><init>()V

    .line 54
    .local v0, "model":Lbtz;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lbtz;->a:Ljava/lang/Long;

    goto :goto_0
.end method

.method public static toIdl(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lbtz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;>;"
    if-nez p0, :cond_1

    .line 61
    const/4 v1, 0x0

    .line 72
    :cond_0
    return-object v1

    .line 64
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .local v1, "models":Ljava/util/List;, "Ljava/util/List<Lbtz;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;

    .line 66
    .local v2, "object":Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;
    invoke-static {v2}, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;->toIdl(Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;)Lbtz;

    move-result-object v0

    .line 67
    .local v0, "model":Lbtz;
    if-eqz v0, :cond_2

    .line 68
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
