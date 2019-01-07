.class public Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;
.super Ljava/lang/Object;
.source "PushGroupObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x964627ba8f10708L


# instance fields
.field public dataType:Ljava/lang/String;

.field public object:Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;

.field public syncType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Leou;)Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;
    .locals 2
    .param p0, "model"    # Leou;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;-><init>()V

    .line 28
    .local v0, "object":Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;
    iget-object v1, p0, Leou;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;->syncType:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Leou;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;->dataType:Ljava/lang/String;

    .line 30
    iget-object v1, p0, Leou;->c:Leom;

    invoke-static {v1}, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->fromIdl(Leom;)Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;->object:Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;

    goto :goto_0
.end method

.method public static fromIdlList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Leou;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Leou;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 36
    :cond_0
    const/4 v2, 0x0

    .line 45
    :cond_1
    return-object v2

    .line 38
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v2, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leou;

    .line 40
    .local v0, "model":Leou;
    invoke-static {v0}, Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;->fromIdl(Leou;)Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;

    move-result-object v1

    .line 41
    .local v1, "object":Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;
    if-eqz v1, :cond_3

    .line 42
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
