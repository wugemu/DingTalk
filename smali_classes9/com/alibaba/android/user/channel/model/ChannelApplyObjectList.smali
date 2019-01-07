.class public Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;
.super Ljava/lang/Object;
.source "ChannelApplyObjectList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x415bccf4f1be2290L


# instance fields
.field public hasMore:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public nextCursor:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public values:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/channel/model/ChannelApplyObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static fromIdl(Lfoe;)Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;
    .locals 8
    .param p0, "model"    # Lfoe;

    .prologue
    .line 31
    new-instance v3, Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;

    invoke-direct {v3}, Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;-><init>()V

    .line 32
    .local v3, "listObject":Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v4, "objectValues":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/channel/model/ChannelApplyObject;>;"
    iget-object v5, p0, Lfoe;->a:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 34
    iget-object v5, p0, Lfoe;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 36
    .local v2, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfod;

    .line 38
    .local v0, "applyModel":Lfod;
    new-instance v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    invoke-direct {v1}, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;-><init>()V

    .line 39
    .local v1, "applyObject":Lcom/alibaba/android/user/channel/model/ChannelApplyObject;
    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->fromIDLModel(Lfod;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    .end local v0    # "applyModel":Lfod;
    .end local v1    # "applyObject":Lcom/alibaba/android/user/channel/model/ChannelApplyObject;
    .end local v2    # "iterator":Ljava/util/Iterator;
    :cond_0
    iput-object v4, v3, Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;->values:Ljava/util/List;

    .line 44
    iget-object v5, p0, Lfoe;->b:Ljava/lang/Long;

    .line 1044
    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 44
    iput-wide v6, v3, Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;->nextCursor:J

    .line 45
    iget-object v5, p0, Lfoe;->c:Ljava/lang/Boolean;

    .line 2022
    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v5

    .line 45
    iput-boolean v5, v3, Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;->hasMore:Z

    .line 46
    return-object v3
.end method
