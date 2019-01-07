.class public Lcom/taobao/weex/el/parse/Token;
.super Ljava/lang/Object;
.source "Token.java"


# static fields
.field public static final TYPE_ARRAY:I = 0x7

.field public static final TYPE_BLOCK:I = 0x6

.field public static final TYPE_DOUBLE:I = 0x2

.field public static final TYPE_IDENTIFIER:I = 0x0

.field public static final TYPE_INT:I = 0x1

.field public static final TYPE_KEYWORD:I = 0x4

.field public static final TYPE_OPERATOR:I = 0x5

.field public static final TYPE_STRING:I = 0x3


# instance fields
.field private token:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/taobao/weex/el/parse/Token;->token:Ljava/lang/String;

    .line 46
    iput p2, p0, Lcom/taobao/weex/el/parse/Token;->type:I

    .line 47
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "context"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 55
    iget v0, p0, Lcom/taobao/weex/el/parse/Token;->type:I

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Token;->token:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/taobao/weex/el/parse/Operators;->el(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    .line 57
    :cond_0
    iget v0, p0, Lcom/taobao/weex/el/parse/Token;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 58
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Token;->token:Ljava/lang/String;

    goto :goto_0

    .line 59
    :cond_1
    iget v0, p0, Lcom/taobao/weex/el/parse/Token;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Token;->token:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_2
    iget v0, p0, Lcom/taobao/weex/el/parse/Token;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 67
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Token;->token:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 69
    :catch_1
    move-exception v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_3
    iget v0, p0, Lcom/taobao/weex/el/parse/Token;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 72
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->KEYWORDS:Ljava/util/Map;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Token;->token:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unhandled token type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/taobao/weex/el/parse/Token;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Token;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/taobao/weex/el/parse/Token;->type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Token;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/el/parse/Token;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
