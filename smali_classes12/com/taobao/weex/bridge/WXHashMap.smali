.class public Lcom/taobao/weex/bridge/WXHashMap;
.super Ljava/util/HashMap;
.source "WXHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3b9851f247f57e21L


# instance fields
.field private instancesStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lcom/taobao/weex/bridge/WXHashMap;, "Lcom/taobao/weex/bridge/WXHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 33
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXHashMap;->instancesStack:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public getInstanceStack()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/taobao/weex/bridge/WXHashMap;, "Lcom/taobao/weex/bridge/WXHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXHashMap;->instancesStack:Ljava/util/Stack;

    return-object v0
.end method

.method public getStackTopInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lcom/taobao/weex/bridge/WXHashMap;, "Lcom/taobao/weex/bridge/WXHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXHashMap;->instancesStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXHashMap;->instancesStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lcom/taobao/weex/bridge/WXHashMap;, "Lcom/taobao/weex/bridge/WXHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXHashMap;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    .local p0, "this":Lcom/taobao/weex/bridge/WXHashMap;, "Lcom/taobao/weex/bridge/WXHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXHashMap;->instancesStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXHashMap;->instancesStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXHashMap;->instancesStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/taobao/weex/bridge/WXHashMap;, "Lcom/taobao/weex/bridge/WXHashMap<TK;TV;>;"
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeFromMapAndStack(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/taobao/weex/bridge/WXHashMap;, "Lcom/taobao/weex/bridge/WXHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXHashMap;->instancesStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 54
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setStackTopInstance(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 72
    .local p0, "this":Lcom/taobao/weex/bridge/WXHashMap;, "Lcom/taobao/weex/bridge/WXHashMap<TK;TV;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXHashMap;->instancesStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXHashMap;->instancesStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 87
    .local p0, "this":Lcom/taobao/weex/bridge/WXHashMap;, "Lcom/taobao/weex/bridge/WXHashMap<TK;TV;>;"
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXHashMap;->mTag:Ljava/lang/String;

    .line 88
    return-void
.end method
