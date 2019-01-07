.class public Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;
.super Ljava/lang/Object;
.source "ConvModelObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cid:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public memberCount:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Ldch;)Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;
    .locals 2
    .param p0, "model"    # Ldch;

    .prologue
    .line 18
    if-nez p0, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0

    .line 21
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;-><init>()V

    .line 22
    .local v0, "object":Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;
    iget-object v1, p0, Ldch;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;->cid:Ljava/lang/String;

    .line 23
    iget-object v1, p0, Ldch;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;->name:Ljava/lang/String;

    .line 24
    iget-object v1, p0, Ldch;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;->icon:Ljava/lang/String;

    .line 25
    iget-object v1, p0, Ldch;->d:Ljava/lang/Integer;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    iput v1, v0, Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;->memberCount:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ldch;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method

.method public static fromListIdl(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldch;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Ldch;>;"
    if-nez p0, :cond_1

    .line 31
    const/4 v2, 0x0

    .line 41
    :cond_0
    return-object v2

    .line 33
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v2, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldch;

    .line 36
    .local v0, "convModel":Ldch;
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;->fromIdl(Ldch;)Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;

    move-result-object v1

    .line 37
    .local v1, "object":Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;
    if-eqz v1, :cond_2

    .line 38
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
