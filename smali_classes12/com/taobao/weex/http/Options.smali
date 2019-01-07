.class Lcom/taobao/weex/http/Options;
.super Ljava/lang/Object;
.source "Options.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/http/Options$Builder;,
        Lcom/taobao/weex/http/Options$Type;
    }
.end annotation


# instance fields
.field private body:Ljava/lang/String;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private method:Ljava/lang/String;

.field private timeout:I

.field private type:Lcom/taobao/weex/http/Options$Type;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;I)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "type"    # Lcom/taobao/weex/http/Options$Type;
    .param p6, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/http/Options$Type;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->text:Lcom/taobao/weex/http/Options$Type;

    iput-object v0, p0, Lcom/taobao/weex/http/Options;->type:Lcom/taobao/weex/http/Options$Type;

    .line 34
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/taobao/weex/http/Options;->timeout:I

    .line 42
    iput-object p1, p0, Lcom/taobao/weex/http/Options;->method:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/taobao/weex/http/Options;->url:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/taobao/weex/http/Options;->headers:Ljava/util/Map;

    .line 45
    iput-object p4, p0, Lcom/taobao/weex/http/Options;->body:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcom/taobao/weex/http/Options;->type:Lcom/taobao/weex/http/Options$Type;

    .line 47
    if-nez p6, :cond_0

    .line 48
    const/16 p6, 0xbb8

    .line 50
    :cond_0
    iput p6, p0, Lcom/taobao/weex/http/Options;->timeout:I

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;ILcom/taobao/weex/http/Options$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/util/Map;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/taobao/weex/http/Options$Type;
    .param p6, "x5"    # I
    .param p7, "x6"    # Lcom/taobao/weex/http/Options$1;

    .prologue
    .line 28
    invoke-direct/range {p0 .. p6}, Lcom/taobao/weex/http/Options;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;I)V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/taobao/weex/http/Options;->timeout:I

    return v0
.end method

.method public getType()Lcom/taobao/weex/http/Options$Type;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->type:Lcom/taobao/weex/http/Options$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->url:Ljava/lang/String;

    return-object v0
.end method
