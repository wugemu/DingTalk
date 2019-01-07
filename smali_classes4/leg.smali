.class public final Lleg;
.super Llej;
.source "DocumentType.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p4}, Llej;-><init>(Ljava/lang/String;)V

    .line 25
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, Lleg;->b(Ljava/lang/String;Ljava/lang/String;)Llej;

    .line 26
    const-string/jumbo v0, "publicId"

    invoke-virtual {p0, v0, p2}, Lleg;->b(Ljava/lang/String;Ljava/lang/String;)Llej;

    .line 27
    const-string/jumbo v0, "systemId"

    invoke-virtual {p0, v0, p3}, Lleg;->b(Ljava/lang/String;Ljava/lang/String;)Llej;

    .line 28
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lleg;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llea;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "#doctype"

    return-object v0
.end method

.method final a(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 3
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v2, 0x22

    .line 37
    .line 1448
    iget-object v0, p3, Lorg/jsoup/nodes/Document$OutputSettings;->e:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 37
    sget-object v1, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne v0, v1, :cond_3

    const-string/jumbo v0, "publicId"

    invoke-direct {p0, v0}, Lleg;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "systemId"

    invoke-direct {p0, v0}, Lleg;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 39
    const-string/jumbo v0, "<!doctype"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :goto_0
    const-string/jumbo v0, "name"

    invoke-direct {p0, v0}, Lleg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "name"

    invoke-virtual {p0, v1}, Lleg;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_0
    const-string/jumbo v0, "publicId"

    invoke-direct {p0, v0}, Lleg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    const-string/jumbo v0, " PUBLIC \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "publicId"

    invoke-virtual {p0, v1}, Lleg;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    :cond_1
    const-string/jumbo v0, "systemId"

    invoke-direct {p0, v0}, Lleg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    const-string/jumbo v0, " \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "systemId"

    invoke-virtual {p0, v1}, Lleg;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    :cond_2
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    return-void

    .line 41
    :cond_3
    const-string/jumbo v0, "<!DOCTYPE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method final b(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$OutputSettings;

    .prologue
    .line 54
    return-void
.end method
