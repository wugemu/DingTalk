.class public Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;
.super Ljava/lang/Object;
.source "SimpleArray.java"

# interfaces
.implements Lhhb;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lhhb",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x10811a75b77172d9L


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    .local p0, "this":Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;, "Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;, "Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;, "Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray<TT;>;"
    .local p1, "collection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;, "Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;, "Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray<TT;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public get()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;, "Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray<TT;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;->data:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;, "Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray<TT;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;, "Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray<TT;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;, "Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;, "Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray<TT;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
