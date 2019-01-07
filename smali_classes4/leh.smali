.class public Lleh;
.super Llej;
.source "Element.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field public c:Lleq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lleh;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lleq;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Lleq;
    .param p2, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Lled;

    invoke-direct {v0}, Lled;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lleh;-><init>(Lleq;Ljava/lang/String;Lled;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lleq;Ljava/lang/String;Lled;)V
    .locals 0
    .param p1, "tag"    # Lleq;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "attributes"    # Lled;

    .prologue
    .line 36
    invoke-direct {p0, p2, p3}, Llej;-><init>(Ljava/lang/String;Lled;)V

    .line 38
    invoke-static {p1}, Lleb;->a(Ljava/lang/Object;)V

    .line 39
    iput-object p1, p0, Lleh;->c:Lleq;

    .line 40
    return-void
.end method

.method private static a(Lleh;Ljava/util/List;)Ljava/lang/Integer;
    .locals 3
    .param p0, "search"    # Lleh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lleh;",
            ">(",
            "Lleh;",
            "Ljava/util/List",
            "<TE;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 569
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-static {p0}, Lleb;->a(Ljava/lang/Object;)V

    .line 570
    invoke-static {p1}, Lleb;->a(Ljava/lang/Object;)V

    .line 572
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 573
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lleh;

    .line 574
    .local v0, "element":Lleh;, "TE;"
    invoke-virtual {v0, p0}, Lleh;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 577
    .end local v0    # "element":Lleh;, "TE;"
    :goto_1
    return-object v2

    .line 572
    .restart local v0    # "element":Lleh;, "TE;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 577
    .end local v0    # "element":Lleh;, "TE;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lleh;)Lleq;
    .locals 1
    .param p0, "x0"    # Lleh;

    .prologue
    .line 21
    iget-object v0, p0, Lleh;->c:Lleq;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/StringBuilder;Llek;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/StringBuilder;
    .param p1, "x1"    # Llek;

    .prologue
    .line 21
    invoke-static {p0, p1}, Lleh;->b(Ljava/lang/StringBuilder;Llek;)V

    return-void
.end method

.method private static a(Lleh;Lorg/jsoup/select/Elements;)V
    .locals 3
    .param p0, "el"    # Lleh;
    .param p1, "parents"    # Lorg/jsoup/select/Elements;

    .prologue
    .line 153
    .line 3139
    :goto_0
    iget-object v0, p0, Lleh;->d:Llej;

    check-cast v0, Lleh;

    .line 154
    .local v0, "parent":Lleh;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lleh;->f()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "#root"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    invoke-virtual {p1, v0}, Lorg/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    .line 156
    move-object p0, v0

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "accum"    # Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 897
    iget-object v3, p0, Lleh;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llej;

    .line 898
    .local v0, "child":Llej;
    instance-of v3, v0, Llek;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 899
    check-cast v2, Llek;

    .line 900
    .local v2, "textNode":Llek;
    invoke-static {p1, v2}, Lleh;->b(Ljava/lang/StringBuilder;Llek;)V

    goto :goto_0

    .line 901
    .end local v2    # "textNode":Llek;
    :cond_1
    instance-of v3, v0, Lleh;

    if-eqz v3, :cond_0

    .line 902
    check-cast v0, Lleh;

    .line 7917
    .end local v0    # "child":Llej;
    iget-object v3, v0, Lleh;->c:Lleq;

    .line 8037
    iget-object v3, v3, Lleq;->b:Ljava/lang/String;

    .line 7917
    const-string/jumbo v4, "br"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Llek;->b(Ljava/lang/StringBuilder;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7918
    const-string/jumbo v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 905
    :cond_2
    return-void
.end method

.method private static b(Ljava/lang/StringBuilder;Llek;)V
    .locals 2
    .param p0, "accum"    # Ljava/lang/StringBuilder;
    .param p1, "textNode"    # Llek;

    .prologue
    .line 908
    invoke-virtual {p1}, Llek;->b()Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p1, Llek;->d:Llej;

    invoke-static {v1}, Lleh;->c(Llej;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 911
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    :goto_0
    return-void

    .line 913
    :cond_0
    invoke-static {p0}, Llek;->b(Ljava/lang/StringBuilder;)Z

    move-result v1

    invoke-static {p0, v0, v1}, Llea;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private c(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "accum"    # Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1163
    iget-object v2, p0, Lleh;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llej;

    .line 1164
    .local v1, "node":Llej;
    invoke-virtual {v1, p1}, Llej;->a(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 1165
    .end local v1    # "node":Llej;
    :cond_0
    return-void
.end method

.method static c(Llej;)Z
    .locals 3
    .param p0, "node"    # Llej;

    .prologue
    const/4 v2, 0x0

    .line 923
    if-eqz p0, :cond_2

    instance-of v1, p0, Lleh;

    if-eqz v1, :cond_2

    move-object v0, p0

    .line 924
    check-cast v0, Lleh;

    .line 925
    .local v0, "element":Lleh;
    iget-object v1, v0, Lleh;->c:Lleq;

    .line 8156
    iget-boolean v1, v1, Lleq;->g:Z

    .line 925
    if-nez v1, :cond_0

    .line 9139
    iget-object v1, v0, Lleh;->d:Llej;

    check-cast v1, Lleh;

    .line 925
    if-eqz v1, :cond_1

    .line 10139
    iget-object v1, v0, Lleh;->d:Llej;

    check-cast v1, Lleh;

    .line 925
    iget-object v1, v1, Lleh;->c:Lleq;

    .line 10156
    iget-boolean v1, v1, Lleq;->g:Z

    .line 925
    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 928
    .end local v0    # "element":Lleh;
    :goto_0
    return v1

    .restart local v0    # "element":Lleh;
    :cond_1
    move v1, v2

    .line 925
    goto :goto_0

    .end local v0    # "element":Lleh;
    :cond_2
    move v1, v2

    .line 928
    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lleh;->c:Lleq;

    .line 2037
    iget-object v0, v0, Lleq;->b:Ljava/lang/String;

    .line 56
    return-object v0
.end method

.method public a(Ljava/lang/String;)Lleh;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 937
    invoke-static {p1}, Lleb;->a(Ljava/lang/Object;)V

    .line 939
    invoke-virtual {p0}, Lleh;->i()Lleh;

    .line 940
    new-instance v0, Llek;

    iget-object v1, p0, Lleh;->g:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Llek;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    .local v0, "textNode":Llek;
    invoke-virtual {p0, v0}, Lleh;->a(Llej;)Lleh;

    .line 943
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lleh;
    .locals 0
    .param p1, "attributeKey"    # Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Llej;->b(Ljava/lang/String;Ljava/lang/String;)Llej;

    .line 117
    return-object p0
.end method

.method public final a(Ljava/util/Set;)Lleh;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lleh;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1016
    .local p1, "classNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Lleb;->a(Ljava/lang/Object;)V

    .line 1017
    iget-object v0, p0, Lleh;->f:Lled;

    const-string/jumbo v1, "class"

    const-string/jumbo v2, " "

    invoke-static {p1, v2}, Llea;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lled;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    return-object p0
.end method

.method public final a(Llej;)Lleh;
    .locals 1
    .param p1, "child"    # Llej;

    .prologue
    .line 268
    invoke-static {p1}, Lleb;->a(Ljava/lang/Object;)V

    .line 271
    invoke-virtual {p0, p1}, Lleh;->e(Llej;)V

    .line 272
    iget-object v0, p0, Lleh;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Lleh;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3533
    iput v0, p1, Llej;->h:I

    .line 274
    return-object p0
.end method

.method final a(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 2
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1121
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 12468
    iget-boolean v0, p3, Lorg/jsoup/nodes/Document$OutputSettings;->c:Z

    .line 1121
    if-eqz v0, :cond_0

    iget-object v0, p0, Lleh;->c:Lleq;

    .line 13083
    iget-boolean v0, v0, Lleq;->d:Z

    .line 1121
    if-nez v0, :cond_1

    .line 13139
    iget-object v0, p0, Lleh;->d:Llej;

    check-cast v0, Lleh;

    .line 1121
    if-eqz v0, :cond_0

    .line 14139
    iget-object v0, p0, Lleh;->d:Llej;

    check-cast v0, Lleh;

    .line 15087
    iget-object v0, v0, Lleh;->c:Lleq;

    .line 16083
    iget-boolean v0, v0, Lleq;->d:Z

    .line 1121
    if-nez v0, :cond_1

    .line 1123
    :cond_0
    :goto_0
    const-string/jumbo v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lleh;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    iget-object v0, p0, Lleh;->f:Lled;

    invoke-virtual {v0, p1, p3}, Lled;->a(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Document$OutputSettings;)V

    .line 1129
    iget-object v0, p0, Lleh;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lleh;->c:Lleq;

    invoke-virtual {v0}, Lleq;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17448
    iget-object v0, p3, Lorg/jsoup/nodes/Document$OutputSettings;->e:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 1130
    sget-object v1, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lleh;->c:Lleq;

    .line 18119
    iget-boolean v0, v0, Lleq;->e:Z

    .line 1130
    if-eqz v0, :cond_2

    .line 1131
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1137
    :goto_1
    return-void

    .line 1122
    :cond_1
    invoke-static {p1, p2, p3}, Lleh;->c(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V

    goto :goto_0

    .line 1133
    :cond_2
    const-string/jumbo v0, " />"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1136
    :cond_3
    const-string/jumbo v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)Lleh;
    .locals 2
    .param p1, "html"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 369
    invoke-static {p1}, Lleb;->a(Ljava/lang/Object;)V

    .line 4135
    iget-object v1, p0, Llej;->g:Ljava/lang/String;

    .line 371
    invoke-static {p1, p0, v1}, Llep;->a(Ljava/lang/String;Lleh;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 372
    .local v0, "nodes":Ljava/util/List;, "Ljava/util/List<Llej;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Llej;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Llej;

    invoke-virtual {p0, v1}, Lleh;->a([Llej;)V

    .line 373
    return-object p0
.end method

.method public final b(Llej;)Lleh;
    .locals 1
    .param p1, "node"    # Llej;

    .prologue
    .line 410
    invoke-super {p0, p1}, Llej;->d(Llej;)Llej;

    move-result-object v0

    check-cast v0, Lleh;

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/String;Ljava/lang/String;)Llej;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lleh;->a(Ljava/lang/String;Ljava/lang/String;)Lleh;

    move-result-object v0

    return-object v0
.end method

.method final b(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 2
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1140
    iget-object v0, p0, Lleh;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lleh;->c:Lleq;

    invoke-virtual {v0}, Lleq;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 18468
    :cond_0
    iget-boolean v0, p3, Lorg/jsoup/nodes/Document$OutputSettings;->c:Z

    .line 1141
    if-eqz v0, :cond_1

    iget-object v0, p0, Lleh;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lleh;->c:Lleq;

    .line 19083
    iget-boolean v0, v0, Lleq;->d:Z

    .line 1141
    if-nez v0, :cond_3

    .line 1145
    :cond_1
    :goto_0
    const-string/jumbo v0, "</"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lleh;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    :cond_2
    return-void

    .line 1144
    :cond_3
    invoke-static {p1, p2, p3}, Lleh;->c(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Lleh;
    .locals 3
    .param p1, "html"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 383
    invoke-static {p1}, Lleb;->a(Ljava/lang/Object;)V

    .line 5135
    iget-object v1, p0, Llej;->g:Ljava/lang/String;

    .line 385
    invoke-static {p1, p0, v1}, Llep;->a(Ljava/lang/String;Lleh;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 386
    .local v0, "nodes":Ljava/util/List;, "Ljava/util/List<Llej;>;"
    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Llej;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Llej;

    invoke-virtual {p0, v2, v1}, Lleh;->a(I[Llej;)V

    .line 387
    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0}, Lleh;->d()Lleh;

    move-result-object v0

    return-object v0
.end method

.method public d()Lleh;
    .locals 1

    .prologue
    .line 1203
    invoke-super {p0}, Llej;->e()Llej;

    move-result-object v0

    check-cast v0, Lleh;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lleh;
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-super {p0, p1}, Llej;->m(Ljava/lang/String;)Llej;

    move-result-object v0

    check-cast v0, Lleh;

    return-object v0
.end method

.method public final synthetic d(Llej;)Llej;
    .locals 1
    .param p1, "x0"    # Llej;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lleh;->b(Llej;)Lleh;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Lleh;
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-super {p0, p1}, Llej;->l(Ljava/lang/String;)Llej;

    move-result-object v0

    check-cast v0, Lleh;

    return-object v0
.end method

.method public synthetic e()Llej;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lleh;->d()Lleh;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1185
    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    .line 1191
    :cond_0
    :goto_0
    return v1

    .line 1186
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1187
    invoke-super {p0, p1}, Llej;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 1189
    check-cast v0, Lleh;

    .line 1191
    .local v0, "element":Lleh;
    iget-object v1, p0, Lleh;->c:Lleq;

    iget-object v2, v0, Lleh;->c:Lleq;

    invoke-virtual {v1, v2}, Lleq;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lleh;->c:Lleq;

    .line 3037
    iget-object v0, v0, Lleq;->b:Ljava/lang/String;

    .line 65
    return-object v0
.end method

.method public final f(Ljava/lang/String;)Lleh;
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 453
    invoke-super {p0, p1}, Llej;->k(Ljava/lang/String;)Llej;

    move-result-object v0

    check-cast v0, Lleh;

    return-object v0
.end method

.method public final g()Lorg/jsoup/select/Elements;
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    .line 148
    .local v0, "parents":Lorg/jsoup/select/Elements;
    invoke-static {p0, v0}, Lleh;->a(Lleh;Lorg/jsoup/select/Elements;)V

    .line 149
    return-object v0
.end method

.method public final g(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 588
    invoke-static {p1}, Lleb;->a(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 591
    new-instance v0, Llew$ah;

    invoke-direct {v0, p1}, Llew$ah;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lleu;->a(Llew;Lleh;)Lorg/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lorg/jsoup/select/Elements;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 186
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lleh;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Lleh;>;"
    iget-object v3, p0, Lleh;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llej;

    .line 188
    .local v2, "node":Llej;
    instance-of v3, v2, Lleh;

    if-eqz v3, :cond_0

    .line 189
    check-cast v2, Lleh;

    .end local v2    # "node":Llej;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_1
    new-instance v3, Lorg/jsoup/select/Elements;

    invoke-direct {v3, v0}, Lorg/jsoup/select/Elements;-><init>(Ljava/util/List;)V

    return-object v3
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 9
    .param p1, "className"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 1035
    iget-object v7, p0, Lleh;->f:Lled;

    const-string/jumbo v8, "class"

    invoke-virtual {v7, v8}, Lled;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1036
    .local v1, "classAttr":Ljava/lang/String;
    const-string/jumbo v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 1045
    :cond_0
    :goto_0
    return v6

    .line 1039
    :cond_1
    sget-object v7, Lleh;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 1040
    .local v2, "classes":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 1041
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1042
    const/4 v6, 0x1

    goto :goto_0

    .line 1040
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1196
    invoke-super {p0}, Llej;->hashCode()I

    move-result v0

    .line 1197
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lleh;->c:Lleq;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lleh;->c:Lleq;

    invoke-virtual {v1}, Lleq;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 1198
    return v0

    .line 1197
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final i()Lleh;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lleh;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 442
    return-object p0
.end method

.method public final i(Ljava/lang/String;)Lleh;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1113
    invoke-virtual {p0}, Lleh;->f()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "textarea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    invoke-virtual {p0, p1}, Lleh;->a(Ljava/lang/String;)Lleh;

    .line 1117
    :goto_0
    return-object p0

    .line 1116
    :cond_0
    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0, p1}, Lleh;->a(Ljava/lang/String;Ljava/lang/String;)Lleh;

    goto :goto_0
.end method

.method public final j()Lleh;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 529
    iget-object v2, p0, Lleh;->d:Llej;

    if-nez v2, :cond_0

    move-object v2, v3

    .line 536
    :goto_0
    return-object v2

    .line 5139
    :cond_0
    iget-object v2, p0, Lleh;->d:Llej;

    check-cast v2, Lleh;

    .line 530
    invoke-virtual {v2}, Lleh;->h()Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 531
    .local v1, "siblings":Ljava/util/List;, "Ljava/util/List<Lleh;>;"
    invoke-static {p0, v1}, Lleh;->a(Lleh;Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v0

    .line 532
    .local v0, "index":Ljava/lang/Integer;
    invoke-static {v0}, Lleb;->a(Ljava/lang/Object;)V

    .line 533
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    .line 534
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lleh;

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 536
    goto :goto_0
.end method

.method public final j(Ljava/lang/String;)Lleh;
    .locals 0
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 1174
    invoke-virtual {p0}, Lleh;->i()Lleh;

    .line 1175
    invoke-virtual {p0, p1}, Lleh;->b(Ljava/lang/String;)Lleh;

    .line 1176
    return-object p0
.end method

.method public final k()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 555
    .line 6139
    iget-object v0, p0, Lleh;->d:Llej;

    check-cast v0, Lleh;

    .line 555
    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 556
    :goto_0
    return-object v0

    .line 7139
    :cond_0
    iget-object v0, p0, Lleh;->d:Llej;

    check-cast v0, Lleh;

    .line 556
    invoke-virtual {v0}, Lleh;->h()Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-static {p0, v0}, Lleh;->a(Lleh;Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic k(Ljava/lang/String;)Llej;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lleh;->f(Ljava/lang/String;)Lleh;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 859
    .local v0, "accum":Ljava/lang/StringBuilder;
    new-instance v1, Llex;

    new-instance v2, Lleh$1;

    invoke-direct {v2, p0, v0}, Lleh$1;-><init>(Lleh;Ljava/lang/StringBuilder;)V

    invoke-direct {v1, v2}, Llex;-><init>(Lley;)V

    invoke-virtual {v1, p0}, Llex;->a(Llej;)V

    .line 876
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final synthetic l(Ljava/lang/String;)Llej;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lleh;->e(Ljava/lang/String;)Lleh;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 892
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lleh;->b(Ljava/lang/StringBuilder;)V

    .line 893
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final synthetic m(Ljava/lang/String;)Llej;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lleh;->d(Ljava/lang/String;)Lleh;

    move-result-object v0

    return-object v0
.end method

.method public final n()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 951
    iget-object v5, p0, Lleh;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llej;

    .line 952
    .local v0, "child":Llej;
    instance-of v5, v0, Llek;

    if-eqz v5, :cond_1

    move-object v3, v0

    .line 953
    check-cast v3, Llek;

    .line 11069
    .local v3, "textNode":Llek;
    invoke-virtual {v3}, Llek;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Llea;->a(Ljava/lang/String;)Z

    move-result v5

    .line 954
    if-nez v5, :cond_0

    .line 962
    .end local v0    # "child":Llej;
    .end local v3    # "textNode":Llek;
    :goto_0
    return v4

    .line 956
    .restart local v0    # "child":Llej;
    :cond_1
    instance-of v5, v0, Lleh;

    if-eqz v5, :cond_0

    move-object v1, v0

    .line 957
    check-cast v1, Lleh;

    .line 958
    .local v1, "el":Lleh;
    invoke-virtual {v1}, Lleh;->n()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 962
    .end local v0    # "child":Llej;
    .end local v1    # "el":Lleh;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final o()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1003
    sget-object v2, Lleh;->a:Ljava/util/regex/Pattern;

    .line 11993
    const-string/jumbo v3, "class"

    invoke-virtual {p0, v3}, Lleh;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1003
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 1004
    .local v1, "names":[Ljava/lang/String;
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1005
    .local v0, "classNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v2, ""

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1007
    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1158
    .local v0, "accum":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lleh;->c(Ljava/lang/StringBuilder;)V

    .line 1159
    invoke-virtual {p0}, Lleh;->x()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    .line 20468
    iget-boolean v1, v1, Lorg/jsoup/nodes/Document$OutputSettings;->c:Z

    .line 1159
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final bridge synthetic q()Llej;
    .locals 1

    .prologue
    .line 21
    .line 21139
    iget-object v0, p0, Lleh;->d:Llej;

    check-cast v0, Lleh;

    .line 21
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1180
    invoke-virtual {p0}, Lleh;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
