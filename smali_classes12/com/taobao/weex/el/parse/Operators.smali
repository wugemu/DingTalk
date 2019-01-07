.class public Lcom/taobao/weex/el/parse/Operators;
.super Ljava/lang/Object;
.source "Operators.java"


# static fields
.field public static final AND:Ljava/lang/String; = "&&"

.field public static final AND_NOT:Ljava/lang/String; = "!"

.field public static final ARRAY_END:C = ']'

.field public static final ARRAY_END_STR:Ljava/lang/String; = "]"

.field public static final ARRAY_SEPRATOR:C = ','

.field public static final ARRAY_SEPRATOR_STR:Ljava/lang/String; = ","

.field public static final ARRAY_START:C = '['

.field public static final ARRAY_START_STR:Ljava/lang/String; = "["

.field public static final BLOCK_END:C = '}'

.field public static final BLOCK_END_STR:Ljava/lang/String; = "}"

.field public static final BLOCK_START:C = '{'

.field public static final BLOCK_START_STR:Ljava/lang/String; = "{"

.field public static final BRACKET_END:C = ')'

.field public static final BRACKET_END_STR:Ljava/lang/String; = ")"

.field public static final BRACKET_START:C = '('

.field public static final BRACKET_START_STR:Ljava/lang/String; = "("

.field public static final CONDITION_IF:C = '?'

.field public static final CONDITION_IF_MIDDLE:C = ':'

.field public static final CONDITION_IF_STRING:Ljava/lang/String; = "?"

.field public static final DIV:Ljava/lang/String; = "/"

.field public static final DOLLAR:C = '$'

.field public static final DOLLAR_STR:Ljava/lang/String; = "$"

.field public static final DOT:C = '.'

.field public static final DOT_STR:Ljava/lang/String; = "."

.field public static final EQUAL:Ljava/lang/String; = "==="

.field public static final EQUAL2:Ljava/lang/String; = "=="

.field public static final G:Ljava/lang/String; = ">"

.field public static final GE:Ljava/lang/String; = ">="

.field public static final KEYWORDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final L:Ljava/lang/String; = "<"

.field public static final LE:Ljava/lang/String; = "<="

.field public static final MOD:Ljava/lang/String; = "%"

.field public static final MUL:Ljava/lang/String; = "*"

.field public static final NOT_EQUAL:Ljava/lang/String; = "!=="

.field public static final NOT_EQUAL2:Ljava/lang/String; = "!="

.field public static OPERATORS_PRIORITY:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final OR:Ljava/lang/String; = "||"

.field public static final PLUS:Ljava/lang/String; = "+"

.field public static final QUOTE:C = '\"'

.field public static final SINGLE_QUOTE:C = '\''

.field public static final SPACE:C = ' '

.field public static final SPACE_STR:Ljava/lang/String; = " "

.field public static final SUB:Ljava/lang/String; = "-"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0xa

    const/4 v5, 0x7

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 453
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 455
    sput-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "}"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, ")"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, " "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, ","

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "]"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "||"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "&&"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "==="

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "=="

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "!=="

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "!="

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, ">"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, ">="

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "<"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "<="

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "+"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "-"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "*"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "/"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "%"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "!"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "."

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "["

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "("

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "{"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 496
    sput-object v0, Lcom/taobao/weex/el/parse/Operators;->KEYWORDS:Ljava/util/Map;

    const-string/jumbo v1, "null"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->KEYWORDS:Ljava/util/Map;

    const-string/jumbo v1, "true"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->KEYWORDS:Ljava/util/Map;

    const-string/jumbo v1, "false"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->KEYWORDS:Ljava/util/Map;

    const-string/jumbo v1, "undefined"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static condition(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "selfs"    # Lcom/taobao/weex/el/parse/Token;
    .param p1, "first"    # Lcom/taobao/weex/el/parse/Token;
    .param p2, "second"    # Lcom/taobao/weex/el/parse/Token;
    .param p3, "context"    # Ljava/lang/Object;

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "value":Z
    if-eqz p0, :cond_0

    .line 218
    invoke-virtual {p0, p3}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/el/parse/Operators;->isTrue(Ljava/lang/Object;)Z

    move-result v0

    .line 220
    :cond_0
    if-eqz v0, :cond_1

    .line 221
    if-eqz p1, :cond_2

    .line 222
    invoke-virtual {p1, p3}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 229
    :goto_0
    return-object v1

    .line 225
    :cond_1
    if-eqz p2, :cond_2

    .line 226
    invoke-virtual {p2, p3}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 229
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static div(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "left"    # Lcom/taobao/weex/el/parse/Token;
    .param p1, "right"    # Lcom/taobao/weex/el/parse/Token;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "leftValue":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 179
    .local v1, "rightValue":Ljava/lang/Object;
    if-eqz p0, :cond_0

    .line 180
    invoke-virtual {p0, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 182
    .end local v0    # "leftValue":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    .line 183
    invoke-virtual {p1, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 185
    .end local v1    # "rightValue":Ljava/lang/Object;
    :cond_1
    invoke-static {v0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v1}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2
.end method

.method public static dot(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "left"    # Lcom/taobao/weex/el/parse/Token;
    .param p1, "right"    # Lcom/taobao/weex/el/parse/Token;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 34
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-object v3

    .line 37
    :cond_1
    invoke-virtual {p0, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 38
    .local v2, "leftValue":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/taobao/weex/el/parse/Token;->getType()I

    move-result v4

    if-eqz v4, :cond_4

    .line 43
    invoke-virtual {p1, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    .local v0, "identifter":Ljava/lang/Object;
    instance-of v4, v0, Ljava/lang/Double;

    if-eqz v4, :cond_2

    .line 45
    check-cast v0, Ljava/lang/Double;

    .end local v0    # "identifter":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 47
    :cond_2
    if-nez v0, :cond_3

    const-string/jumbo v1, ""

    .line 48
    .local v1, "key":Ljava/lang/String;
    :goto_1
    invoke-static {v2, v1}, Lcom/taobao/weex/el/parse/Operators;->el(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 52
    .end local v1    # "key":Ljava/lang/String;
    .local v3, "value":Ljava/lang/Object;
    :goto_2
    if-nez v3, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/taobao/weex/el/parse/Token;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/taobao/weex/el/parse/Operators;->specialKey(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 47
    .end local v3    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 50
    :cond_4
    invoke-virtual {p1, v2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/Object;
    goto :goto_2
.end method

.method public static el(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "context"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 62
    if-nez p0, :cond_1

    .line 112
    .end local p0    # "context":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v5

    .line 72
    .restart local p0    # "context":Ljava/lang/Object;
    :cond_1
    instance-of v6, p0, Lcom/taobao/weex/el/parse/ArrayStack;

    if-eqz v6, :cond_3

    move-object v3, p0

    .line 73
    check-cast v3, Lcom/taobao/weex/el/parse/ArrayStack;

    .line 74
    .local v3, "stack":Lcom/taobao/weex/el/parse/ArrayStack;
    invoke-virtual {v3}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "index":I
    :goto_1
    if-ltz v0, :cond_3

    .line 75
    invoke-virtual {v3, v0}, Lcom/taobao/weex/el/parse/ArrayStack;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 76
    .local v4, "value":Ljava/lang/Object;
    instance-of v6, v4, Ljava/util/Map;

    if-eqz v6, :cond_2

    move-object v2, v4

    .line 77
    check-cast v2, Ljava/util/Map;

    .line 78
    .local v2, "map":Ljava/util/Map;
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 79
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 74
    .end local v2    # "map":Ljava/util/Map;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 84
    .end local v0    # "index":I
    .end local v3    # "stack":Lcom/taobao/weex/el/parse/ArrayStack;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v6, p0, Ljava/util/Stack;

    if-eqz v6, :cond_5

    move-object v3, p0

    .line 85
    check-cast v3, Ljava/util/Stack;

    .line 86
    .local v3, "stack":Ljava/util/Stack;
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .restart local v0    # "index":I
    :goto_2
    if-ltz v0, :cond_5

    .line 87
    invoke-virtual {v3, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 88
    .restart local v4    # "value":Ljava/lang/Object;
    instance-of v6, v4, Ljava/util/Map;

    if-eqz v6, :cond_4

    move-object v2, v4

    .line 89
    check-cast v2, Ljava/util/Map;

    .line 90
    .restart local v2    # "map":Ljava/util/Map;
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 91
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 86
    .end local v2    # "map":Ljava/util/Map;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 97
    .end local v0    # "index":I
    .end local v3    # "stack":Ljava/util/Stack;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v6, p0, Ljava/util/Map;

    if-eqz v6, :cond_6

    .line 98
    check-cast p0, Ljava/util/Map;

    .end local p0    # "context":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 101
    .restart local p0    # "context":Ljava/lang/Object;
    :cond_6
    instance-of v6, p0, Ljava/util/List;

    if-eqz v6, :cond_7

    move-object v1, p0

    .line 102
    check-cast v1, Ljava/util/List;

    .line 104
    .local v1, "list":Ljava/util/List;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception v6

    .line 107
    .end local v1    # "list":Ljava/util/List;
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 109
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto/16 :goto_0

    :catch_1
    move-exception v6

    goto/16 :goto_0
.end method

.method public static getNumber(Ljava/lang/Object;)D
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v0, 0x0

    .line 348
    if-nez p0, :cond_0

    .line 356
    :goto_0
    return-wide v0

    .line 351
    :cond_0
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_1

    .line 352
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 355
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isDot(Ljava/lang/String;)Z
    .locals 3
    .param p0, "opStr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 379
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 380
    .local v0, "op":C
    const/16 v2, 0x2e

    if-eq v0, v2, :cond_0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 332
    if-nez p0, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v1

    .line 335
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 336
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_2

    .line 337
    const/4 v1, 0x0

    goto :goto_0

    .line 335
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isEquals(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Z
    .locals 8
    .param p0, "left"    # Lcom/taobao/weex/el/parse/Token;
    .param p1, "right"    # Lcom/taobao/weex/el/parse/Token;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 261
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v2

    .line 264
    :cond_1
    const/4 v0, 0x0

    .line 265
    .local v0, "leftValue":Ljava/lang/Object;
    if-eqz p0, :cond_2

    .line 266
    invoke-virtual {p0, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 268
    .end local v0    # "leftValue":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    .line 269
    .local v1, "rightValue":Ljava/lang/Object;
    if-eqz p1, :cond_3

    .line 270
    invoke-virtual {p1, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 272
    .end local v1    # "rightValue":Ljava/lang/Object;
    :cond_3
    if-nez v0, :cond_5

    .line 273
    if-eqz v1, :cond_0

    .line 276
    instance-of v4, v1, Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 277
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/el/parse/Operators;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_4
    move v2, v3

    .line 281
    goto :goto_0

    .line 283
    :cond_5
    if-nez v1, :cond_6

    .line 284
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/el/parse/Operators;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 287
    goto :goto_0

    .line 289
    :cond_6
    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_8

    .line 290
    instance-of v4, v1, Ljava/lang/Number;

    if-eqz v4, :cond_7

    .line 291
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 293
    :cond_7
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v1}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 295
    :cond_8
    instance-of v4, v1, Ljava/lang/Number;

    if-eqz v4, :cond_9

    .line 296
    invoke-static {v0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v4

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 298
    :cond_9
    instance-of v2, v0, Ljava/lang/CharSequence;

    if-nez v2, :cond_a

    instance-of v2, v1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_b

    .line 300
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_0

    .line 302
    :cond_b
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public static isOpEnd(C)Z
    .locals 1
    .param p0, "op"    # C

    .prologue
    .line 366
    const/16 v0, 0x29

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_1

    .line 370
    :cond_0
    const/4 v0, 0x1

    .line 372
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOpEnd(Ljava/lang/String;)Z
    .locals 1
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/taobao/weex/el/parse/Operators;->isOpEnd(C)Z

    move-result v0

    return v0
.end method

.method public static isTrue(Ljava/lang/Object;)Z
    .locals 8
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 310
    if-nez p0, :cond_1

    .line 325
    .local v0, "bool":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 313
    .end local v0    # "bool":Ljava/lang/String;
    :cond_1
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_2

    .line 314
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 316
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 317
    .restart local v0    # "bool":Ljava/lang/String;
    const-string/jumbo v3, "false"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "undefined"

    .line 318
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "null"

    .line 319
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 322
    invoke-static {v0}, Lcom/taobao/weex/el/parse/Operators;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 325
    goto :goto_0
.end method

.method public static mod(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "left"    # Lcom/taobao/weex/el/parse/Token;
    .param p1, "right"    # Lcom/taobao/weex/el/parse/Token;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "leftValue":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 203
    .local v1, "rightValue":Ljava/lang/Object;
    if-eqz p0, :cond_0

    .line 204
    invoke-virtual {p0, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 206
    .end local v0    # "leftValue":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    .line 207
    invoke-virtual {p1, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 209
    .end local v1    # "rightValue":Ljava/lang/Object;
    :cond_1
    invoke-static {v0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v1}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v4

    rem-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2
.end method

.method public static mul(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "left"    # Lcom/taobao/weex/el/parse/Token;
    .param p1, "right"    # Lcom/taobao/weex/el/parse/Token;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "leftValue":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 191
    .local v1, "rightValue":Ljava/lang/Object;
    if-eqz p0, :cond_0

    .line 192
    invoke-virtual {p0, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    .end local v0    # "leftValue":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    .line 195
    invoke-virtual {p1, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 197
    .end local v1    # "rightValue":Ljava/lang/Object;
    :cond_1
    invoke-static {v0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v1}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2
.end method

.method public static plus(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "left"    # Lcom/taobao/weex/el/parse/Token;
    .param p1, "right"    # Lcom/taobao/weex/el/parse/Token;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "leftValue":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 139
    .local v1, "rightValue":Ljava/lang/Object;
    if-eqz p0, :cond_0

    .line 140
    invoke-virtual {p0, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 142
    .end local v0    # "leftValue":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    .line 143
    invoke-virtual {p1, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 145
    .end local v1    # "rightValue":Ljava/lang/Object;
    :cond_1
    instance-of v2, v0, Ljava/lang/CharSequence;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    .line 146
    :cond_2
    if-nez v0, :cond_3

    .line 160
    :goto_0
    return-object v1

    .line 149
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_4

    const-string/jumbo v2, ""

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 151
    :cond_5
    instance-of v2, v0, Ljava/lang/Number;

    if-nez v2, :cond_6

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_7

    .line 152
    :cond_6
    invoke-static {v0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v1}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 154
    :cond_7
    if-nez v0, :cond_8

    if-nez v1, :cond_8

    .line 155
    const/4 v1, 0x0

    goto :goto_0

    .line 157
    :cond_8
    if-nez v0, :cond_9

    .line 158
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 160
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_a

    const-string/jumbo v2, ""

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public static specialKey(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "leftValue"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string/jumbo v0, "length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 118
    check-cast p0, Ljava/lang/CharSequence;

    .end local p0    # "leftValue":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    .line 120
    .restart local p0    # "leftValue":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 121
    check-cast p0, Ljava/util/Map;

    .end local p0    # "leftValue":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 123
    .restart local p0    # "leftValue":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 124
    check-cast p0, Ljava/util/Map;

    .end local p0    # "leftValue":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 126
    .restart local p0    # "leftValue":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 127
    check-cast p0, Ljava/util/List;

    .end local p0    # "leftValue":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 129
    .restart local p0    # "leftValue":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sub(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "left"    # Lcom/taobao/weex/el/parse/Token;
    .param p1, "right"    # Lcom/taobao/weex/el/parse/Token;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "leftValue":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 167
    .local v1, "rightValue":Ljava/lang/Object;
    if-eqz p0, :cond_0

    .line 168
    invoke-virtual {p0, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 170
    .end local v0    # "leftValue":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    .line 171
    invoke-virtual {p1, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 173
    .end local v1    # "rightValue":Ljava/lang/Object;
    :cond_1
    invoke-static {v0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v1}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2
.end method

.method public static tokenNumber(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)D
    .locals 4
    .param p0, "self"    # Lcom/taobao/weex/el/parse/Token;
    .param p1, "context"    # Ljava/lang/Object;

    .prologue
    .line 248
    if-nez p0, :cond_0

    .line 249
    const-wide/16 v2, 0x0

    .line 252
    :goto_0
    return-wide v2

    .line 251
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 252
    .local v0, "value":Ljava/lang/Object;
    invoke-static {v0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v2

    goto :goto_0
.end method

.method public static tokenTrue(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "selfs"    # Lcom/taobao/weex/el/parse/Token;
    .param p1, "context"    # Ljava/lang/Object;

    .prologue
    .line 237
    if-nez p0, :cond_0

    .line 238
    const/4 v1, 0x0

    .line 241
    :goto_0
    return v1

    .line 240
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 241
    .local v0, "value":Ljava/lang/Object;
    invoke-static {v0}, Lcom/taobao/weex/el/parse/Operators;->isTrue(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method
