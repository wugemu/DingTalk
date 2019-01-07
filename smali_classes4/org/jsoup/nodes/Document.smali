.class public final Lorg/jsoup/nodes/Document;
.super Lleh;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Document$QuirksMode;,
        Lorg/jsoup/nodes/Document$OutputSettings;
    }
.end annotation


# instance fields
.field public a:Lorg/jsoup/nodes/Document$OutputSettings;

.field public b:Lorg/jsoup/nodes/Document$QuirksMode;

.field private i:Ljava/lang/String;

.field private j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 30
    const-string/jumbo v0, "#root"

    invoke-static {v0}, Lleq;->a(Ljava/lang/String;)Lleq;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lleh;-><init>(Lleq;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-direct {v0}, Lorg/jsoup/nodes/Document$OutputSettings;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/Document;->a:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 19
    sget-object v0, Lorg/jsoup/nodes/Document$QuirksMode;->noQuirks:Lorg/jsoup/nodes/Document$QuirksMode;

    iput-object v0, p0, Lorg/jsoup/nodes/Document;->b:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/nodes/Document;->j:Z

    .line 31
    iput-object p1, p0, Lorg/jsoup/nodes/Document;->i:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private y()Lorg/jsoup/nodes/Document;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 286
    invoke-super {p0}, Lleh;->d()Lleh;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Document;

    .line 287
    .local v0, "clone":Lorg/jsoup/nodes/Document;
    iget-object v1, p0, Lorg/jsoup/nodes/Document;->a:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->a()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/Document;->a:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 288
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string/jumbo v0, "#document"

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lleh;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 204
    .line 1072
    const-string/jumbo v0, "body"

    invoke-virtual {p0, v0, p0}, Lorg/jsoup/nodes/Document;->a(Ljava/lang/String;Llej;)Lleh;

    move-result-object v0

    .line 204
    invoke-virtual {v0, p1}, Lleh;->a(Ljava/lang/String;)Lleh;

    .line 205
    return-object p0
.end method

.method public a(Ljava/lang/String;Llej;)Lleh;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "node"    # Llej;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 180
    invoke-virtual {p2}, Llej;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    check-cast p2, Lleh;

    .line 189
    .end local p2    # "node":Llej;
    :goto_0
    return-object p2

    .line 183
    .restart local p2    # "node":Llej;
    :cond_0
    iget-object v3, p2, Llej;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llej;

    .line 184
    .local v0, "child":Llej;
    invoke-virtual {p0, p1, v0}, Lorg/jsoup/nodes/Document;->a(Ljava/lang/String;Llej;)Lleh;

    move-result-object v1

    .line 185
    .local v1, "found":Lleh;
    if-eqz v1, :cond_1

    move-object p2, v1

    .line 186
    goto :goto_0

    .line 189
    .end local v0    # "child":Llej;
    .end local v1    # "found":Lleh;
    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public final b()Lleh;
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "body"

    invoke-virtual {p0, v0, p0}, Lorg/jsoup/nodes/Document;->a(Ljava/lang/String;Llej;)Lleh;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Lleh;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/jsoup/nodes/Document;->y()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lleh;
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/jsoup/nodes/Document;->y()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Llej;
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/jsoup/nodes/Document;->y()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 568
    invoke-super {p0, p1}, Lleh;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
