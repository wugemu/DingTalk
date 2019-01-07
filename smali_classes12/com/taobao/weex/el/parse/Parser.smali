.class public Lcom/taobao/weex/el/parse/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# instance fields
.field private code:Ljava/lang/String;

.field private operators:Lcom/taobao/weex/el/parse/ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/el/parse/ArrayStack",
            "<",
            "Lcom/taobao/weex/el/parse/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private stacks:Lcom/taobao/weex/el/parse/ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/el/parse/ArrayStack",
            "<",
            "Lcom/taobao/weex/el/parse/Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 42
    new-instance v0, Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-direct {v0}, Lcom/taobao/weex/el/parse/ArrayStack;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    .line 43
    new-instance v0, Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-direct {v0}, Lcom/taobao/weex/el/parse/ArrayStack;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    .line 44
    return-void
.end method

.method private final doStackOperators(I)V
    .locals 2
    .param p1, "operatorSize"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 343
    :goto_0
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v1}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v1}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/el/parse/Symbol;

    .line 345
    .local v0, "symbol":Lcom/taobao/weex/el/parse/Symbol;
    invoke-virtual {p0, v0}, Lcom/taobao/weex/el/parse/Parser;->doOperator(Lcom/taobao/weex/el/parse/Symbol;)V

    goto :goto_0

    .line 347
    .end local v0    # "symbol":Lcom/taobao/weex/el/parse/Symbol;
    :cond_0
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/taobao/weex/el/parse/Token;
    .locals 5
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    .line 68
    :try_start_0
    new-instance v1, Lcom/taobao/weex/el/parse/Parser;

    invoke-direct {v1, p0}, Lcom/taobao/weex/el/parse/Parser;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "parser":Lcom/taobao/weex/el/parse/Parser;
    invoke-virtual {v1}, Lcom/taobao/weex/el/parse/Parser;->parse()Lcom/taobao/weex/el/parse/Token;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 74
    .end local v1    # "parser":Lcom/taobao/weex/el/parse/Parser;
    :goto_0
    return-object v2

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    :cond_0
    new-instance v2, Lcom/taobao/weex/el/parse/Block;

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4}, Lcom/taobao/weex/el/parse/Block;-><init>(Ljava/util/List;I)V

    goto :goto_0
.end method


# virtual methods
.method doOperator(Lcom/taobao/weex/el/parse/Symbol;)V
    .locals 7
    .param p1, "symbol"    # Lcom/taobao/weex/el/parse/Symbol;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 254
    iget-object v1, p1, Lcom/taobao/weex/el/parse/Symbol;->op:Ljava/lang/String;

    .line 255
    .local v1, "op":Ljava/lang/String;
    const-string/jumbo v5, "("

    iget-object v6, p1, Lcom/taobao/weex/el/parse/Symbol;->op:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "{"

    iget-object v6, p1, Lcom/taobao/weex/el/parse/Symbol;->op:Ljava/lang/String;

    .line 256
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "["

    iget-object v6, p1, Lcom/taobao/weex/el/parse/Symbol;->op:Ljava/lang/String;

    .line 257
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "$"

    iget-object v6, p1, Lcom/taobao/weex/el/parse/Symbol;->op:Ljava/lang/String;

    .line 258
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    const-string/jumbo v5, "{"

    iget-object v6, p1, Lcom/taobao/weex/el/parse/Symbol;->op:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 264
    iget v3, p1, Lcom/taobao/weex/el/parse/Symbol;->pos:I

    .line 265
    .local v3, "second":I
    iget v5, p1, Lcom/taobao/weex/el/parse/Symbol;->pos:I

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 266
    .local v0, "first":I
    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v5}, Lcom/taobao/weex/el/parse/ArrayStack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 267
    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v5}, Lcom/taobao/weex/el/parse/ArrayStack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/el/parse/Symbol;

    iget v5, v5, Lcom/taobao/weex/el/parse/Symbol;->pos:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 270
    :cond_2
    new-instance v2, Lcom/taobao/weex/el/parse/Operator;

    const/4 v5, 0x5

    invoke-direct {v2, v1, v5}, Lcom/taobao/weex/el/parse/Operator;-><init>(Ljava/lang/String;I)V

    .line 271
    .local v2, "operator":Lcom/taobao/weex/el/parse/Operator;
    const-string/jumbo v5, "!"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 272
    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v5}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v5

    if-le v5, v3, :cond_0

    .line 273
    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v5, v3}, Lcom/taobao/weex/el/parse/ArrayStack;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/el/parse/Token;

    .line 274
    .local v4, "token":Lcom/taobao/weex/el/parse/Token;
    iput-object v4, v2, Lcom/taobao/weex/el/parse/Operator;->self:Lcom/taobao/weex/el/parse/Token;

    .line 275
    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v5, v3, v2}, Lcom/taobao/weex/el/parse/ArrayStack;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 280
    .end local v4    # "token":Lcom/taobao/weex/el/parse/Token;
    :cond_3
    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v5}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v5

    if-le v5, v3, :cond_0

    .line 281
    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v5, v3}, Lcom/taobao/weex/el/parse/ArrayStack;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/el/parse/Token;

    iput-object v5, v2, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    .line 285
    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v5}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v5

    if-le v5, v0, :cond_5

    .line 286
    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v5, v0}, Lcom/taobao/weex/el/parse/ArrayStack;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/el/parse/Token;

    iput-object v5, v2, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    .line 292
    :cond_4
    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v5, v0, v2}, Lcom/taobao/weex/el/parse/ArrayStack;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 288
    :cond_5
    iget-object v5, v2, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    if-nez v5, :cond_4

    goto/16 :goto_0
.end method

.method final hasNext()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 458
    iget v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final hasNextToken()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 464
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v2, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 466
    .local v0, "ch":C
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 467
    iget v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    goto :goto_0

    .line 470
    :cond_0
    const/4 v1, 0x1

    .line 472
    .end local v0    # "ch":C
    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final nextToken()C
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 476
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v2, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 477
    .local v0, "ch":C
    :goto_0
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 478
    iget v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 479
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    if-ge v1, v2, :cond_0

    .line 482
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v2, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    goto :goto_0

    .line 484
    :cond_0
    return v0
.end method

.method public final parse()Lcom/taobao/weex/el/parse/Token;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNextToken()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanNextToken()C

    goto :goto_0

    .line 51
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/el/parse/Symbol;

    .line 53
    .local v1, "op":Lcom/taobao/weex/el/parse/Symbol;
    invoke-virtual {p0, v1}, Lcom/taobao/weex/el/parse/Parser;->doOperator(Lcom/taobao/weex/el/parse/Symbol;)V

    goto :goto_1

    .line 55
    .end local v1    # "op":Lcom/taobao/weex/el/parse/Symbol;
    :cond_1
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 56
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/el/parse/Token;

    .line 59
    :goto_2
    return-object v2

    .line 58
    :cond_2
    new-instance v0, Lcom/taobao/weex/el/parse/Block;

    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->getList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3}, Lcom/taobao/weex/el/parse/Block;-><init>(Ljava/util/List;I)V

    .local v0, "block":Lcom/taobao/weex/el/parse/Block;
    move-object v2, v0

    .line 59
    goto :goto_2
.end method

.method final scanArray()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    iget-object v11, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v11}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v7

    .line 113
    .local v7, "stackSize":I
    iget-object v11, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v11}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v4

    .line 114
    .local v4, "opSize":I
    const/4 v10, 0x0

    .line 115
    .local v10, "type":I
    iget v11, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_0

    iget-object v11, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v12, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v11

    if-nez v11, :cond_1

    .line 116
    :cond_0
    const/4 v10, 0x7

    .line 118
    :cond_1
    iget-object v11, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    new-instance v12, Lcom/taobao/weex/el/parse/Symbol;

    const-string/jumbo v13, "["

    iget-object v14, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v14}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v14

    invoke-direct {v12, v13, v14}, Lcom/taobao/weex/el/parse/Symbol;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v11, v12}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 119
    iget v11, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 120
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNextToken()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 121
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanNextToken()C

    move-result v8

    .line 122
    .local v8, "token":C
    const/16 v11, 0x5d

    if-ne v8, v11, :cond_2

    .line 127
    .end local v8    # "token":C
    :cond_3
    iget-object v11, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v11}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v11

    if-gt v11, v7, :cond_4

    .line 128
    :goto_0
    iget-object v11, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v11}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v11

    if-le v11, v4, :cond_9

    .line 129
    iget-object v11, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v11}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 134
    :cond_4
    :goto_1
    iget-object v11, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v11}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v11

    if-le v11, v4, :cond_5

    .line 135
    iget-object v11, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v11}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/el/parse/Symbol;

    .line 136
    .local v3, "op":Lcom/taobao/weex/el/parse/Symbol;
    iget-object v11, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v11}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v11

    if-le v11, v7, :cond_4

    .line 137
    invoke-virtual {p0, v3}, Lcom/taobao/weex/el/parse/Parser;->doOperator(Lcom/taobao/weex/el/parse/Symbol;)V

    goto :goto_1

    .line 140
    .end local v3    # "op":Lcom/taobao/weex/el/parse/Symbol;
    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    const/4 v11, 0x4

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .local v9, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/el/parse/Token;>;"
    move v1, v7

    .local v1, "i":I
    :goto_2
    iget-object v11, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v11}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v11

    if-ge v1, v11, :cond_6

    .line 142
    iget-object v11, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v11, v1}, Lcom/taobao/weex/el/parse/ArrayStack;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 144
    :cond_6
    :goto_3
    iget-object v11, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v11}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v11

    if-le v11, v7, :cond_7

    .line 145
    iget-object v11, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v11}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    goto :goto_3

    .line 147
    :cond_7
    const/4 v11, 0x7

    if-eq v10, v11, :cond_8

    iget-object v11, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v11}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v11

    if-nez v11, :cond_a

    .line 148
    :cond_8
    new-instance v0, Lcom/taobao/weex/el/parse/Block;

    const/4 v11, 0x7

    invoke-direct {v0, v9, v11}, Lcom/taobao/weex/el/parse/Block;-><init>(Ljava/util/List;I)V

    .line 149
    .local v0, "block":Lcom/taobao/weex/el/parse/Block;
    iget-object v11, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v11, v0}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 164
    .end local v0    # "block":Lcom/taobao/weex/el/parse/Block;
    .end local v1    # "i":I
    .end local v9    # "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/el/parse/Token;>;"
    :cond_9
    :goto_4
    return-void

    .line 153
    .restart local v1    # "i":I
    .restart local v9    # "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/el/parse/Token;>;"
    :cond_a
    iget-object v11, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v11}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/el/parse/Token;

    .line 155
    .local v2, "identifer":Lcom/taobao/weex/el/parse/Token;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    .line 156
    const/4 v11, 0x0

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/weex/el/parse/Token;

    .line 160
    .local v6, "second":Lcom/taobao/weex/el/parse/Token;
    :goto_5
    new-instance v5, Lcom/taobao/weex/el/parse/Operator;

    const-string/jumbo v11, "."

    invoke-direct {v5, v11, v10}, Lcom/taobao/weex/el/parse/Operator;-><init>(Ljava/lang/String;I)V

    .line 161
    .local v5, "operator":Lcom/taobao/weex/el/parse/Operator;
    iput-object v2, v5, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    .line 162
    iput-object v6, v5, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    .line 163
    iget-object v11, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v11, v5}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    goto :goto_4

    .line 158
    .end local v5    # "operator":Lcom/taobao/weex/el/parse/Operator;
    .end local v6    # "second":Lcom/taobao/weex/el/parse/Token;
    :cond_b
    new-instance v6, Lcom/taobao/weex/el/parse/Block;

    const/4 v11, 0x6

    invoke-direct {v6, v9, v11}, Lcom/taobao/weex/el/parse/Block;-><init>(Ljava/util/List;I)V

    .restart local v6    # "second":Lcom/taobao/weex/el/parse/Token;
    goto :goto_5
.end method

.method scanBracket()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 167
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v4

    .line 168
    .local v4, "stackSize":I
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v3

    .line 169
    .local v3, "opSize":I
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v7, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x7b

    if-ne v6, v7, :cond_2

    .line 170
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    new-instance v7, Lcom/taobao/weex/el/parse/Symbol;

    const-string/jumbo v8, "{"

    iget-object v9, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v9}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/taobao/weex/el/parse/Symbol;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 171
    iget v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNextToken()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanNextToken()C

    move-result v6

    const/16 v7, 0x7d

    if-ne v6, v7, :cond_0

    .line 186
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v6

    if-gt v6, v4, :cond_4

    .line 187
    :goto_1
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v6

    if-le v6, v3, :cond_8

    .line 188
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 178
    :cond_2
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    new-instance v7, Lcom/taobao/weex/el/parse/Symbol;

    const-string/jumbo v8, "("

    iget-object v9, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v9}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/taobao/weex/el/parse/Symbol;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 179
    iget v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 180
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNextToken()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanNextToken()C

    move-result v6

    const/16 v7, 0x29

    if-ne v6, v7, :cond_3

    goto :goto_0

    .line 192
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v6

    if-le v6, v3, :cond_5

    .line 193
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/el/parse/Symbol;

    .line 194
    .local v2, "op":Lcom/taobao/weex/el/parse/Symbol;
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v6

    if-le v6, v4, :cond_4

    .line 195
    invoke-virtual {p0, v2}, Lcom/taobao/weex/el/parse/Parser;->doOperator(Lcom/taobao/weex/el/parse/Symbol;)V

    goto :goto_2

    .line 198
    .end local v2    # "op":Lcom/taobao/weex/el/parse/Symbol;
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 199
    .local v5, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/el/parse/Token;>;"
    move v1, v4

    .local v1, "i":I
    :goto_3
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v6

    if-ge v1, v6, :cond_6

    .line 200
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6, v1}, Lcom/taobao/weex/el/parse/ArrayStack;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 202
    :cond_6
    :goto_4
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v6

    if-le v6, v4, :cond_7

    .line 203
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    goto :goto_4

    .line 205
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    .line 206
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 211
    .end local v1    # "i":I
    .end local v5    # "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/el/parse/Token;>;"
    :cond_8
    :goto_5
    return-void

    .line 208
    .restart local v1    # "i":I
    .restart local v5    # "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/el/parse/Token;>;"
    :cond_9
    new-instance v0, Lcom/taobao/weex/el/parse/Block;

    const/4 v6, 0x6

    invoke-direct {v0, v5, v6}, Lcom/taobao/weex/el/parse/Block;-><init>(Ljava/util/List;I)V

    .line 209
    .local v0, "block":Lcom/taobao/weex/el/parse/Block;
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6, v0}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    goto :goto_5
.end method

.method final scanIdentifier()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 428
    iget v2, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 429
    .local v2, "start":I
    iget v5, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 430
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 431
    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 432
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 433
    iget v5, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    goto :goto_0

    .line 439
    .end local v0    # "ch":C
    :cond_0
    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "el":Ljava/lang/String;
    const-string/jumbo v5, "$"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 441
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 454
    :goto_1
    return-void

    .line 444
    :cond_1
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 446
    :cond_2
    const/4 v4, 0x0

    .line 447
    .local v4, "type":I
    sget-object v5, Lcom/taobao/weex/el/parse/Operators;->KEYWORDS:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 448
    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v5}, Lcom/taobao/weex/el/parse/ArrayStack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v5}, Lcom/taobao/weex/el/parse/ArrayStack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/el/parse/Symbol;

    iget-object v5, v5, Lcom/taobao/weex/el/parse/Symbol;->op:Ljava/lang/String;

    invoke-static {v5}, Lcom/taobao/weex/el/parse/Operators;->isDot(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 449
    :cond_3
    const/4 v4, 0x4

    .line 452
    :cond_4
    new-instance v3, Lcom/taobao/weex/el/parse/Token;

    invoke-direct {v3, v1, v4}, Lcom/taobao/weex/el/parse/Token;-><init>(Ljava/lang/String;I)V

    .line 453
    .local v3, "token":Lcom/taobao/weex/el/parse/Token;
    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v5, v3}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method scanIf()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 299
    new-instance v1, Lcom/taobao/weex/el/parse/Operator;

    const-string/jumbo v6, "?"

    const/4 v7, 0x5

    invoke-direct {v1, v6, v7}, Lcom/taobao/weex/el/parse/Operator;-><init>(Ljava/lang/String;I)V

    .line 300
    .local v1, "operator":Lcom/taobao/weex/el/parse/Operator;
    const/4 v3, 0x0

    .line 301
    .local v3, "selfIndex":I
    invoke-direct {p0, v8}, Lcom/taobao/weex/el/parse/Parser;->doStackOperators(I)V

    .line 302
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 303
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/weex/el/parse/Symbol;

    iget v6, v6, Lcom/taobao/weex/el/parse/Symbol;->pos:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 305
    :cond_0
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v6

    if-le v6, v3, :cond_1

    .line 306
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/weex/el/parse/Token;

    iput-object v6, v1, Lcom/taobao/weex/el/parse/Operator;->self:Lcom/taobao/weex/el/parse/Token;

    .line 309
    :cond_1
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v4

    .line 310
    .local v4, "stackSize":I
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v0

    .line 311
    .local v0, "leftOperatorSize":I
    iget v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 312
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNextToken()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 313
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanNextToken()C

    move-result v6

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_2

    .line 317
    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v6

    if-le v6, v0, :cond_4

    .line 318
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/el/parse/Symbol;

    .line 319
    .local v5, "symbol":Lcom/taobao/weex/el/parse/Symbol;
    invoke-virtual {p0, v5}, Lcom/taobao/weex/el/parse/Parser;->doOperator(Lcom/taobao/weex/el/parse/Symbol;)V

    goto :goto_0

    .line 322
    .end local v5    # "symbol":Lcom/taobao/weex/el/parse/Symbol;
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v6

    if-le v6, v4, :cond_5

    .line 323
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/weex/el/parse/Token;

    iput-object v6, v1, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    goto :goto_1

    .line 325
    :cond_5
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v2

    .line 326
    .local v2, "rightOperatorsSize":I
    :cond_6
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNextToken()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 327
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanNextToken()C

    .line 328
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNextToken()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 329
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanNextToken()C

    .line 331
    :cond_7
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v6

    if-gt v6, v2, :cond_6

    .line 335
    :cond_8
    invoke-direct {p0, v2}, Lcom/taobao/weex/el/parse/Parser;->doStackOperators(I)V

    .line 336
    :goto_2
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v6

    if-le v6, v4, :cond_9

    .line 337
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/weex/el/parse/Token;

    iput-object v6, v1, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    goto :goto_2

    .line 339
    :cond_9
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6, v1}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 340
    return-void
.end method

.method final scanNextToken()C
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->nextToken()C

    move-result v0

    .line 81
    .local v0, "ch":C
    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    .line 82
    iget v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 107
    :goto_0
    return v0

    .line 84
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanIdentifier()V

    goto :goto_0

    .line 86
    :cond_1
    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_3

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanBracket()V

    goto :goto_0

    .line 88
    :cond_3
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_4

    .line 89
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanArray()V

    goto :goto_0

    .line 90
    :cond_4
    const/16 v1, 0x22

    if-eq v0, v1, :cond_5

    const/16 v1, 0x27

    if-ne v0, v1, :cond_6

    .line 91
    :cond_5
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanString()V

    goto :goto_0

    .line 92
    :cond_6
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_7

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v2, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_8

    .line 93
    :cond_7
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 94
    :cond_8
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanNumber()V

    goto :goto_0

    .line 95
    :cond_9
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_a

    .line 96
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanIf()V

    goto :goto_0

    .line 97
    :cond_a
    const/16 v1, 0x3a

    if-eq v0, v1, :cond_b

    const/16 v1, 0x29

    if-eq v0, v1, :cond_b

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_b

    const/16 v1, 0x20

    if-eq v0, v1, :cond_b

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_c

    .line 102
    :cond_b
    iget v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    goto :goto_0

    .line 105
    :cond_c
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanOperator()V

    goto :goto_0
.end method

.method final scanNumber()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v8, 0x65

    const/16 v7, 0x2e

    .line 357
    const/4 v1, 0x1

    .line 358
    .local v1, "isInt":Z
    iget v4, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 359
    .local v4, "start":I
    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_0

    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_1

    .line 360
    :cond_0
    const/4 v1, 0x0

    .line 362
    :cond_1
    iget v5, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 363
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 364
    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 365
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    if-eq v0, v7, :cond_2

    if-ne v0, v8, :cond_5

    .line 368
    :cond_2
    if-eq v0, v8, :cond_3

    if-ne v0, v7, :cond_4

    .line 370
    :cond_3
    const/4 v1, 0x0

    .line 372
    :cond_4
    iget v5, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    goto :goto_0

    .line 377
    .end local v0    # "ch":C
    :cond_5
    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "number":Ljava/lang/String;
    const-string/jumbo v5, "."

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 388
    :goto_1
    return-void

    .line 382
    :cond_6
    if-eqz v1, :cond_7

    .line 383
    new-instance v3, Lcom/taobao/weex/el/parse/Token;

    const/4 v5, 0x1

    invoke-direct {v3, v2, v5}, Lcom/taobao/weex/el/parse/Token;-><init>(Ljava/lang/String;I)V

    .line 387
    .local v3, "stack":Lcom/taobao/weex/el/parse/Token;
    :goto_2
    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v5, v3}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 385
    .end local v3    # "stack":Lcom/taobao/weex/el/parse/Token;
    :cond_7
    new-instance v3, Lcom/taobao/weex/el/parse/Token;

    const/4 v5, 0x2

    invoke-direct {v3, v2, v5}, Lcom/taobao/weex/el/parse/Token;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "stack":Lcom/taobao/weex/el/parse/Token;
    goto :goto_2
.end method

.method scanOperator()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x0

    .line 218
    iget v5, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 219
    .local v5, "start":I
    iget v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v6, v6, 0x3

    iget-object v7, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 220
    .local v1, "length":I
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v7, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "operator":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-lt v6, v7, :cond_0

    .line 222
    sget-object v6, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 223
    invoke-virtual {v3, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 226
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v8, :cond_1

    .line 227
    sget-object v6, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 228
    const/4 v6, 0x1

    invoke-virtual {v3, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 231
    :cond_1
    sget-object v6, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 233
    add-int/lit8 v6, v5, 0x1

    iget-object v7, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 234
    .local v0, "illegalChar":I
    const-string/jumbo v6, "weex"

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v9, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " illegal code operator"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    iget v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 249
    .end local v0    # "illegalChar":I
    :goto_0
    return-void

    .line 238
    :cond_2
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->peek()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 239
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/weex/el/parse/Symbol;

    iget-object v4, v6, Lcom/taobao/weex/el/parse/Symbol;->op:Ljava/lang/String;

    .line 240
    .local v4, "preOp":Ljava/lang/String;
    sget-object v6, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v6, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v7, v6, :cond_3

    .line 241
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/el/parse/Symbol;

    .line 242
    .local v2, "op":Lcom/taobao/weex/el/parse/Symbol;
    invoke-virtual {p0, v2}, Lcom/taobao/weex/el/parse/Parser;->doOperator(Lcom/taobao/weex/el/parse/Symbol;)V

    .line 245
    .end local v2    # "op":Lcom/taobao/weex/el/parse/Symbol;
    .end local v4    # "preOp":Ljava/lang/String;
    :cond_3
    invoke-static {v3}, Lcom/taobao/weex/el/parse/Operators;->isOpEnd(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 246
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    new-instance v7, Lcom/taobao/weex/el/parse/Symbol;

    iget-object v8, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v8}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v8

    invoke-direct {v7, v3, v8}, Lcom/taobao/weex/el/parse/Symbol;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 248
    :cond_4
    iget v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    goto :goto_0
.end method

.method final scanString()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 392
    iget v4, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 393
    .local v4, "start":I
    new-instance v2, Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-direct {v2}, Lcom/taobao/weex/el/parse/ArrayStack;-><init>()V

    .line 394
    .local v2, "operator":Lcom/taobao/weex/el/parse/ArrayStack;
    iget-object v7, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 395
    .local v3, "quote":C
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .local v0, "builder":Ljava/lang/StringBuilder;
    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    :goto_0
    iget v7, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    iget-object v8, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 398
    iget-object v7, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v8, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 399
    .local v1, "ch":C
    if-ne v1, v3, :cond_3

    .line 400
    iget-object v7, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v8, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_1

    .line 401
    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    .line 402
    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 403
    iget v7, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 414
    .end local v1    # "ch":C
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 415
    .local v5, "string":Ljava/lang/String;
    new-instance v6, Lcom/taobao/weex/el/parse/Token;

    const/4 v7, 0x3

    invoke-direct {v6, v5, v7}, Lcom/taobao/weex/el/parse/Token;-><init>(Ljava/lang/String;I)V

    .line 416
    .local v6, "token":Lcom/taobao/weex/el/parse/Token;
    iget-object v7, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v7, v6}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 417
    return-void

    .line 407
    .end local v5    # "string":Ljava/lang/String;
    .end local v6    # "token":Lcom/taobao/weex/el/parse/Token;
    .restart local v1    # "ch":C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    :cond_2
    :goto_1
    iget v7, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    goto :goto_0

    .line 411
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
