.class public Lcom/laiwang/protocol/android/bc;
.super Ljava/lang/Object;
.source "Encode.java"

# interfaces
.implements Lcom/laiwang/protocol/core/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/bc$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static a()Lcom/laiwang/protocol/android/bc;
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/laiwang/protocol/android/bc;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/bc;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/laiwang/protocol/android/bd;Lcom/laiwang/protocol/android/bc$a;)V
    .locals 10
    .param p1, "message"    # Lcom/laiwang/protocol/android/bd;
    .param p2, "output"    # Lcom/laiwang/protocol/android/bc$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 19
    iget-object v6, p1, Lcom/laiwang/protocol/android/bd;->startline:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    .line 20
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bd;->startLine()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/laiwang/protocol/android/bc$a;->a(Ljava/lang/String;)V

    .line 25
    :goto_0
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bd;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 26
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v1, :cond_2

    .line 27
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 28
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v7, "x-"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 31
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 32
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    .line 33
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 34
    .local v4, "value":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Lcom/laiwang/protocol/android/bc$a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 22
    .end local v1    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "LWP "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bd;->startLine()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/laiwang/protocol/android/bc$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    .restart local v1    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_2
    sget-object v6, Lcom/laiwang/protocol/attribute/Attributes;->ZIP:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p1, v6}, Lcom/laiwang/protocol/android/bd;->booleanAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 41
    const-string/jumbo v6, "zip:true"

    invoke-interface {p2, v6}, Lcom/laiwang/protocol/android/bc$a;->a(Ljava/lang/String;)V

    .line 43
    :cond_3
    invoke-interface {p2}, Lcom/laiwang/protocol/android/bc$a;->a()V

    .line 44
    invoke-interface {p2}, Lcom/laiwang/protocol/android/bc$a;->b()I

    move-result v0

    .line 45
    .local v0, "h":I
    sget-object v6, Lcom/laiwang/protocol/attribute/Attributes;->SIZE_OF_HEADER:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p1, v6}, Lcom/laiwang/protocol/android/bd;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bd;->payload()[B

    move-result-object v3

    .line 47
    .local v3, "payload":[B
    if-eqz v3, :cond_4

    array-length v6, v3

    if-lez v6, :cond_4

    .line 48
    invoke-interface {p2, v3}, Lcom/laiwang/protocol/android/bc$a;->a([B)V

    .line 50
    :cond_4
    sget-object v6, Lcom/laiwang/protocol/attribute/Attributes;->SIZE_OF_BODY:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p1, v6}, Lcom/laiwang/protocol/android/bd;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v6

    invoke-interface {p2}, Lcom/laiwang/protocol/android/bc$a;->b()I

    move-result v7

    sub-int/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 51
    return-void
.end method
