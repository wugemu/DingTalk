.class public Lcom/taobao/weex/el/parse/ArrayStack;
.super Ljava/lang/Object;
.source "ArrayStack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private stack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    .local p0, "this":Lcom/taobao/weex/el/parse/ArrayStack;, "Lcom/taobao/weex/el/parse/ArrayStack<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/el/parse/ArrayStack;->stack:Ljava/util/ArrayList;

    .line 34
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/taobao/weex/el/parse/ArrayStack;, "Lcom/taobao/weex/el/parse/ArrayStack<TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/taobao/weex/el/parse/ArrayStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 63
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/taobao/weex/el/parse/ArrayStack;, "Lcom/taobao/weex/el/parse/ArrayStack<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/el/parse/ArrayStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/taobao/weex/el/parse/ArrayStack;, "Lcom/taobao/weex/el/parse/ArrayStack<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/el/parse/ArrayStack;->stack:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lcom/taobao/weex/el/parse/ArrayStack;, "Lcom/taobao/weex/el/parse/ArrayStack<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/el/parse/ArrayStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    .local p0, "this":Lcom/taobao/weex/el/parse/ArrayStack;, "Lcom/taobao/weex/el/parse/ArrayStack<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/el/parse/ArrayStack;->stack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/ArrayStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    .local p0, "this":Lcom/taobao/weex/el/parse/ArrayStack;, "Lcom/taobao/weex/el/parse/ArrayStack<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/el/parse/ArrayStack;->stack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/ArrayStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/taobao/weex/el/parse/ArrayStack;, "Lcom/taobao/weex/el/parse/ArrayStack<TT;>;"
    .local p1, "token":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/taobao/weex/el/parse/ArrayStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/taobao/weex/el/parse/ArrayStack;, "Lcom/taobao/weex/el/parse/ArrayStack<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/el/parse/ArrayStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/taobao/weex/el/parse/ArrayStack;, "Lcom/taobao/weex/el/parse/ArrayStack<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/el/parse/ArrayStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
