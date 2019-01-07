.class public Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;
.super Ljava/util/LinkedList;
.source "NotifyLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private mLinkedListOperateListner:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    .local p0, "this":Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;, "Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 19
    .local p0, "this":Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;, "Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 20
    .local v0, "res":Z
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->mLinkedListOperateListner:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList$a;

    if-eqz v1, :cond_0

    .line 21
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->mLinkedListOperateListner:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList$a;

    invoke-interface {v1}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList$a;->a()V

    .line 23
    :cond_0
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    .local p0, "this":Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;, "Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList<TE;>;"
    invoke-super {p0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 38
    .local v0, "res":Z
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->mLinkedListOperateListner:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList$a;

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->mLinkedListOperateListner:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList$a;

    invoke-interface {v1}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList$a;->b()V

    .line 41
    :cond_0
    return v0
.end method

.method public removeFromList(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+TE;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    .local p0, "this":Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;, "Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList<TE;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 54
    .local v0, "object":Ljava/lang/Object;, "TE;"
    invoke-super {p0, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    .end local v0    # "object":Ljava/lang/Object;, "TE;"
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->mLinkedListOperateListner:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList$a;

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->mLinkedListOperateListner:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList$a;

    invoke-interface {v1}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList$a;->b()V

    .line 59
    :cond_1
    return-void
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    .local p0, "this":Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;, "Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList<TE;>;"
    invoke-super {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    .line 29
    .local v0, "res":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->mLinkedListOperateListner:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList$a;

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->mLinkedListOperateListner:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList$a;

    invoke-interface {v1}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList$a;->b()V

    .line 32
    :cond_0
    return-object v0
.end method

.method public setmLinkedListOperateListner(Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList$a;)V
    .locals 0
    .param p1, "mLinkedListOperateListner"    # Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList$a;

    .prologue
    .line 45
    .local p0, "this":Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;, "Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList<TE;>;"
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->mLinkedListOperateListner:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList$a;

    .line 46
    return-void
.end method
