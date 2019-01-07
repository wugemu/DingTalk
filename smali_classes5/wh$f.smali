.class public final Lwh$f;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "WebDavStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field a:Lwh$b;

.field final synthetic b:Lwh;

.field private c:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwh;)V
    .locals 2
    .param p1, "this$0"    # Lwh;

    .prologue
    .line 2224
    iput-object p1, p0, Lwh$f;->b:Lwh;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2226
    new-instance v0, Lwh$b;

    iget-object v1, p0, Lwh$f;->b:Lwh;

    invoke-direct {v0, v1}, Lwh$b;-><init>(Lwh;)V

    iput-object v0, p0, Lwh$f;->a:Lwh$b;

    .line 2227
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lwh$f;->c:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public final characters([CII)V
    .locals 5
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 2268
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 2269
    .local v0, "value":Ljava/lang/String;
    iget-object v2, p0, Lwh$f;->a:Lwh$b;

    iget-object v1, p0, Lwh$f;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4363
    const-string/jumbo v3, "uid"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4365
    iput-object v0, v2, Lwh$b;->b:Ljava/lang/String;

    .line 4368
    :cond_0
    iget-object v3, v2, Lwh$b;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4370
    iget-object v3, v2, Lwh$b;->c:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lwh$b;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .line 4374
    :cond_1
    iget-object v2, v2, Lwh$b;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2244
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 2256
    iget-object v0, p0, Lwh$f;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2259
    const-string/jumbo v0, "response"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2261
    iget-object v0, p0, Lwh$f;->a:Lwh$b;

    .line 3380
    iget-object v1, v0, Lwh$b;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lwh$b;->c:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 3383
    iget-object v1, v0, Lwh$b;->a:Ljava/util/HashMap;

    iget-object v2, v0, Lwh$b;->b:Ljava/lang/String;

    iget-object v3, v0, Lwh$b;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3393
    :cond_0
    const-string/jumbo v1, ""

    iput-object v1, v0, Lwh$b;->b:Ljava/lang/String;

    .line 3394
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lwh$b;->c:Ljava/util/HashMap;

    .line 2263
    :cond_1
    return-void
.end method

.method public final startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 2237
    new-instance v0, Lwh$b;

    iget-object v1, p0, Lwh$f;->b:Lwh;

    invoke-direct {v0, v1}, Lwh$b;-><init>(Lwh;)V

    iput-object v0, p0, Lwh$f;->a:Lwh$b;

    .line 2238
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2250
    iget-object v0, p0, Lwh$f;->c:Ljava/util/Stack;

    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2251
    return-void
.end method
