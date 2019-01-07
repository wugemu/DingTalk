.class public Lcom/taobao/weex/utils/FunctionParser;
.super Ljava/lang/Object;
.source "FunctionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/FunctionParser$Lexer;,
        Lcom/taobao/weex/utils/FunctionParser$WXInterpretationException;,
        Lcom/taobao/weex/utils/FunctionParser$Mapper;,
        Lcom/taobao/weex/utils/FunctionParser$Token;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final SPACE:C = ' '


# instance fields
.field private lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

.field private mapper:Lcom/taobao/weex/utils/FunctionParser$Mapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/utils/FunctionParser$Mapper",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/taobao/weex/utils/FunctionParser$Mapper;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/taobao/weex/utils/FunctionParser$Mapper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/utils/FunctionParser$Mapper",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/taobao/weex/utils/FunctionParser;, "Lcom/taobao/weex/utils/FunctionParser<TK;TV;>;"
    .local p2, "mapper":Lcom/taobao/weex/utils/FunctionParser$Mapper;, "Lcom/taobao/weex/utils/FunctionParser$Mapper<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/taobao/weex/utils/FunctionParser$Lexer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/taobao/weex/utils/FunctionParser$Lexer;-><init>(Ljava/lang/String;Lcom/taobao/weex/utils/FunctionParser$1;)V

    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser;->lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

    .line 47
    iput-object p2, p0, Lcom/taobao/weex/utils/FunctionParser;->mapper:Lcom/taobao/weex/utils/FunctionParser$Mapper;

    .line 48
    return-void
.end method

.method private definition()Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/taobao/weex/utils/FunctionParser;, "Lcom/taobao/weex/utils/FunctionParser<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 63
    .local v0, "result":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/utils/FunctionParser;->function()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 64
    iget-object v1, p0, Lcom/taobao/weex/utils/FunctionParser;->lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

    invoke-static {v1}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->access$200(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Lcom/taobao/weex/utils/FunctionParser$Token;

    move-result-object v1

    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->FUNC_NAME:Lcom/taobao/weex/utils/FunctionParser$Token;

    if-eq v1, v2, :cond_0

    .line 65
    return-object v0
.end method

.method private function()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    .local p0, "this":Lcom/taobao/weex/utils/FunctionParser;, "Lcom/taobao/weex/utils/FunctionParser<TK;TV;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 70
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->FUNC_NAME:Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-direct {p0, v2}, Lcom/taobao/weex/utils/FunctionParser;->match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "functionName":Ljava/lang/String;
    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->LEFT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-direct {p0, v2}, Lcom/taobao/weex/utils/FunctionParser;->match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;

    .line 72
    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->PARAM_VALUE:Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-direct {p0, v2}, Lcom/taobao/weex/utils/FunctionParser;->match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :goto_0
    iget-object v2, p0, Lcom/taobao/weex/utils/FunctionParser;->lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

    invoke-static {v2}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->access$200(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Lcom/taobao/weex/utils/FunctionParser$Token;

    move-result-object v2

    sget-object v3, Lcom/taobao/weex/utils/FunctionParser$Token;->COMMA:Lcom/taobao/weex/utils/FunctionParser$Token;

    if-ne v2, v3, :cond_0

    .line 74
    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->COMMA:Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-direct {p0, v2}, Lcom/taobao/weex/utils/FunctionParser;->match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;

    .line 75
    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->PARAM_VALUE:Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-direct {p0, v2}, Lcom/taobao/weex/utils/FunctionParser;->match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_0
    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->RIGHT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-direct {p0, v2}, Lcom/taobao/weex/utils/FunctionParser;->match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;

    .line 78
    iget-object v2, p0, Lcom/taobao/weex/utils/FunctionParser;->mapper:Lcom/taobao/weex/utils/FunctionParser$Mapper;

    invoke-interface {v2, v0, v1}, Lcom/taobao/weex/utils/FunctionParser$Mapper;->map(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method private match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;
    .locals 3
    .param p1, "token"    # Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    .local p0, "this":Lcom/taobao/weex/utils/FunctionParser;, "Lcom/taobao/weex/utils/FunctionParser<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/utils/FunctionParser;->lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

    invoke-static {v1}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->access$200(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Lcom/taobao/weex/utils/FunctionParser$Token;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/taobao/weex/utils/FunctionParser;->lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

    invoke-static {v1}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->access$300(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/taobao/weex/utils/FunctionParser;->lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

    invoke-static {v1}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->access$100(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 89
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Token doesn\'t match"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/utils/FunctionParser;->lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

    invoke-static {v2}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->access$400(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 91
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public parse()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/taobao/weex/utils/FunctionParser;, "Lcom/taobao/weex/utils/FunctionParser<TK;TV;>;"
    iget-object v0, p0, Lcom/taobao/weex/utils/FunctionParser;->lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

    invoke-static {v0}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->access$100(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Z

    .line 57
    invoke-direct {p0}, Lcom/taobao/weex/utils/FunctionParser;->definition()Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method
