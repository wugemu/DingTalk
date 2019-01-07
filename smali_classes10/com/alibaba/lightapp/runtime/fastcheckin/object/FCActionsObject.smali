.class public Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;
.super Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;
.source "FCActionsObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray",
        "<",
        "Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x70787a32012d8877L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;-><init>()V

    return-void
.end method

.method public static from(Ljava/util/List;)Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhjr;",
            ">;)",
            "Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "actionModels":Ljava/util/List;, "Ljava/util/List<Lhjr;>;"
    if-nez p0, :cond_1

    .line 17
    const/4 v2, 0x0

    .line 29
    :cond_0
    return-object v2

    .line 20
    :cond_1
    new-instance v2, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;

    invoke-direct {v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;-><init>()V

    .line 22
    .local v2, "actionsObject":Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhjr;

    .line 23
    .local v0, "actionModel":Lhjr;
    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;->from(Lhjr;)Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;

    move-result-object v1

    .line 24
    .local v1, "actionObject":Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;
    if-eqz v1, :cond_2

    .line 25
    invoke-virtual {v2, v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method
