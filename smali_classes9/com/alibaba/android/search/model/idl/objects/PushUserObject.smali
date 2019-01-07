.class public Lcom/alibaba/android/search/model/idl/objects/PushUserObject;
.super Ljava/lang/Object;
.source "PushUserObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2eb3e753712c0237L


# instance fields
.field public dataType:Ljava/lang/String;

.field public obj:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

.field public synType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Leow;)Lcom/alibaba/android/search/model/idl/objects/PushUserObject;
    .locals 2
    .param p0, "model"    # Leow;

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
    new-instance v0, Lcom/alibaba/android/search/model/idl/objects/PushUserObject;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/idl/objects/PushUserObject;-><init>()V

    .line 28
    .local v0, "object":Lcom/alibaba/android/search/model/idl/objects/PushUserObject;
    iget-object v1, p0, Leow;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserObject;->synType:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Leow;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserObject;->dataType:Ljava/lang/String;

    .line 30
    iget-object v1, p0, Leow;->c:Lepm;

    invoke-static {v1}, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->fromIdl(Lepm;)Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserObject;->obj:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    goto :goto_0
.end method

.method public static fromIdlList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Leow;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/PushUserObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Leow;>;"
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
    .local v2, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/PushUserObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leow;

    .line 40
    .local v0, "model":Leow;
    invoke-static {v0}, Lcom/alibaba/android/search/model/idl/objects/PushUserObject;->fromIdl(Leow;)Lcom/alibaba/android/search/model/idl/objects/PushUserObject;

    move-result-object v1

    .line 41
    .local v1, "object":Lcom/alibaba/android/search/model/idl/objects/PushUserObject;
    if-eqz v1, :cond_3

    .line 42
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
