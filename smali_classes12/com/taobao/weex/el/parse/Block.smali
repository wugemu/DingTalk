.class Lcom/taobao/weex/el/parse/Block;
.super Lcom/taobao/weex/el/parse/Token;
.source "Block.java"


# instance fields
.field private tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/el/parse/Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/el/parse/Token;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/el/parse/Token;>;"
    const-string/jumbo v0, ""

    invoke-direct {p0, v0, p2}, Lcom/taobao/weex/el/parse/Token;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p1, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "context"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Block;->getType()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_4

    .line 39
    iget-object v4, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 40
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 57
    :cond_1
    :goto_0
    return-object v0

    .line 42
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    iget-object v4, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 43
    .local v0, "arrayList":Lcom/alibaba/fastjson/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 44
    iget-object v4, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/el/parse/Token;

    .line 45
    .local v2, "token":Lcom/taobao/weex/el/parse/Token;
    if-nez v2, :cond_3

    .line 46
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 43
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 48
    :cond_3
    invoke-virtual {v2, p1}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 53
    .end local v0    # "arrayList":Lcom/alibaba/fastjson/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "token":Lcom/taobao/weex/el/parse/Token;
    :cond_4
    iget-object v4, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    move-object v0, v3

    .line 54
    goto :goto_0

    .line 56
    :cond_6
    iget-object v3, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/el/parse/Token;

    .line 57
    .restart local v2    # "token":Lcom/taobao/weex/el/parse/Token;
    invoke-virtual {v2, p1}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v3, 0x7d

    .line 62
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Block;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Block;->tokens:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
