.class Lcom/taobao/weex/utils/FunctionParser$Lexer;
.super Ljava/lang/Object;
.source "FunctionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/FunctionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Lexer"
.end annotation


# static fields
.field private static final A_LOWER:C = 'a'

.field private static final A_UPPER:C = 'A'

.field private static final COMMA:Ljava/lang/String; = ","

.field private static final DOT:C = '.'

.field private static final LEFT_PARENT:Ljava/lang/String; = "("

.field private static final MINUS:C = '-'

.field private static final NINE:C = '9'

.field private static final PLUS:C = '+'

.field private static final RIGHT_PARENT:Ljava/lang/String; = ")"

.field private static final ZERO:C = '0'

.field private static final Z_LOWER:C = 'z'

.field private static final Z_UPPER:C = 'Z'


# instance fields
.field private current:Lcom/taobao/weex/utils/FunctionParser$Token;

.field private pointer:I

.field private source:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    .line 159
    iput-object p1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->source:Ljava/lang/String;

    .line 160
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/taobao/weex/utils/FunctionParser$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/taobao/weex/utils/FunctionParser$1;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/taobao/weex/utils/FunctionParser$Lexer;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/utils/FunctionParser$Lexer;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->moveOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Lcom/taobao/weex/utils/FunctionParser$Token;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/utils/FunctionParser$Lexer;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->getCurrentToken()Lcom/taobao/weex/utils/FunctionParser$Token;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/utils/FunctionParser$Lexer;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/utils/FunctionParser$Lexer;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->source:Ljava/lang/String;

    return-object v0
.end method

.method private getCurrentToken()Lcom/taobao/weex/utils/FunctionParser$Token;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    return-object v0
.end method

.method private getCurrentTokenValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->value:Ljava/lang/String;

    return-object v0
.end method

.method private isCharacterOrDigit(C)Z
    .locals 1
    .param p1, "letter"    # C

    .prologue
    .line 235
    const/16 v0, 0x30

    if-gt v0, p1, :cond_0

    const/16 v0, 0x39

    if-le p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p1, :cond_1

    const/16 v0, 0x7a

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p1, :cond_3

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFuncName(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "funcName"    # Ljava/lang/CharSequence;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 223
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 224
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 225
    .local v1, "letter":C
    const/16 v2, 0x61

    if-gt v2, v1, :cond_0

    const/16 v2, 0x7a

    if-le v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x41

    if-gt v2, v1, :cond_1

    const/16 v2, 0x5a

    if-le v1, v2, :cond_2

    :cond_1
    const/16 v2, 0x2d

    if-eq v1, v2, :cond_2

    .line 228
    const/4 v2, 0x0

    .line 231
    .end local v1    # "letter":C
    :goto_1
    return v2

    .line 223
    .restart local v1    # "letter":C
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    .end local v1    # "letter":C
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private moveOn(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 203
    const-string/jumbo v0, "("

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    sget-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->LEFT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 205
    const-string/jumbo v0, "("

    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->value:Ljava/lang/String;

    .line 219
    :goto_0
    return-void

    .line 206
    :cond_0
    const-string/jumbo v0, ")"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    sget-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->RIGHT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 208
    const-string/jumbo v0, ")"

    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->value:Ljava/lang/String;

    goto :goto_0

    .line 209
    :cond_1
    const-string/jumbo v0, ","

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    sget-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->COMMA:Lcom/taobao/weex/utils/FunctionParser$Token;

    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 211
    const-string/jumbo v0, ","

    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->value:Ljava/lang/String;

    goto :goto_0

    .line 212
    :cond_2
    invoke-direct {p0, p1}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->isFuncName(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    sget-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->FUNC_NAME:Lcom/taobao/weex/utils/FunctionParser$Token;

    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 214
    iput-object p1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->value:Ljava/lang/String;

    goto :goto_0

    .line 216
    :cond_3
    sget-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->PARAM_VALUE:Lcom/taobao/weex/utils/FunctionParser$Token;

    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 217
    iput-object p1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method private moveOn()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 171
    iget v1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    .line 173
    .local v1, "start":I
    :goto_0
    iget v3, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    iget-object v4, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->source:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 174
    iget-object v3, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->source:Ljava/lang/String;

    iget v4, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 175
    .local v0, "curChar":C
    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    .line 176
    iget v3, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    if-ne v1, v3, :cond_3

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_0
    invoke-direct {p0, v0}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->isCharacterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_1

    const/16 v3, 0x25

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2b

    if-ne v0, v3, :cond_2

    .line 183
    :cond_1
    iget v3, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    goto :goto_0

    .line 185
    :cond_2
    iget v3, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    if-ne v1, v3, :cond_3

    .line 186
    iget v3, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    .line 191
    .end local v0    # "curChar":C
    :cond_3
    iget v3, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    if-eq v1, v3, :cond_4

    .line 192
    iget-object v3, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->source:Ljava/lang/String;

    iget v4, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "symbol":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->moveOn(Ljava/lang/String;)V

    .line 194
    const/4 v3, 0x1

    .line 198
    .end local v2    # "symbol":Ljava/lang/String;
    :goto_1
    return v3

    .line 196
    :cond_4
    iput-object v5, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 197
    iput-object v5, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->value:Ljava/lang/String;

    .line 198
    const/4 v3, 0x0

    goto :goto_1
.end method
