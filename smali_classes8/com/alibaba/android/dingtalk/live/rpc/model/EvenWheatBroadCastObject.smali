.class public Lcom/alibaba/android/dingtalk/live/rpc/model/EvenWheatBroadCastObject;
.super Ljava/lang/Object;
.source "EvenWheatBroadCastObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x220c5bb050bb8e07L


# instance fields
.field public cid:Ljava/lang/String;

.field public uids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lbur;)Lcom/alibaba/android/dingtalk/live/rpc/model/EvenWheatBroadCastObject;
    .locals 5
    .param p0, "model"    # Lbur;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 26
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/live/rpc/model/EvenWheatBroadCastObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/rpc/model/EvenWheatBroadCastObject;-><init>()V

    .line 27
    .local v0, "object":Lcom/alibaba/android/dingtalk/live/rpc/model/EvenWheatBroadCastObject;
    iget-object v3, p0, Lbur;->a:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/EvenWheatBroadCastObject;->cid:Ljava/lang/String;

    .line 28
    iget-object v3, p0, Lbur;->b:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/EvenWheatBroadCastObject;->uuid:Ljava/lang/String;

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v3, p0, Lbur;->c:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 31
    iget-object v3, p0, Lbur;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 32
    .local v1, "uid":Ljava/lang/Long;
    if-eqz v1, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 33
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 37
    .end local v1    # "uid":Ljava/lang/Long;
    :cond_2
    iput-object v2, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/EvenWheatBroadCastObject;->uids:Ljava/util/List;

    goto :goto_0
.end method
