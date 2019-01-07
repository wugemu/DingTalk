.class public abstract Llcm;
.super Ljava/lang/Object;
.source "AbstractVisitor.java"

# interfaces
.implements Lldk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Llco;)V
    .locals 0
    .param p1, "blockQuote"    # Llco;

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Llcm;->b(Lldd;)V

    .line 14
    return-void
.end method

.method public a(Llcp;)V
    .locals 0
    .param p1, "bulletList"    # Llcp;

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Llcm;->b(Lldd;)V

    .line 19
    return-void
.end method

.method public a(Llcq;)V
    .locals 0
    .param p1, "code"    # Llcq;

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Llcm;->b(Lldd;)V

    .line 24
    return-void
.end method

.method public a(Llcr;)V
    .locals 0
    .param p1, "document"    # Llcr;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Llcm;->b(Lldd;)V

    .line 29
    return-void
.end method

.method public a(Llcs;)V
    .locals 0
    .param p1, "emphasis"    # Llcs;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Llcm;->b(Lldd;)V

    .line 34
    return-void
.end method

.method public a(Llct;)V
    .locals 0
    .param p1, "fencedCodeBlock"    # Llct;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Llcm;->b(Lldd;)V

    .line 39
    return-void
.end method

.method public a(Llcu;)V
    .locals 0
    .param p1, "hardLineBreak"    # Llcu;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Llcm;->b(Lldd;)V

    .line 44
    return-void
.end method

.method public a(Llcv;)V
    .locals 0
    .param p1, "heading"    # Llcv;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Llcm;->b(Lldd;)V

    .line 49
    return-void
.end method

.method public a(Llcw;)V
    .locals 0
    .param p1, "htmlBlock"    # Llcw;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Llcm;->b(Lldd;)V

    .line 64
    return-void
.end method

.method public a(Llcx;)V
    .locals 0
    .param p1, "htmlInline"    # Llcx;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Llcm;->b(Lldd;)V

    .line 59
    return-void
.end method

.method public a(Llcy;)V
    .locals 0
    .param p1, "image"    # Llcy;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Llcm;->b(Lldd;)V

    .line 69
    return-void
.end method

.method public a(Llcz;)V
    .locals 0
    .param p1, "indentedCodeBlock"    # Llcz;

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Llcm;->b(Lldd;)V

    .line 74
    return-void
.end method

.method public a(Llda;)V
    .locals 0
    .param p1, "link"    # Llda;

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Llcm;->b(Lldd;)V

    .line 79
    return-void
.end method

.method public a(Lldc;)V
    .locals 0
    .param p1, "listItem"    # Lldc;

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Llcm;->b(Lldd;)V

    .line 84
    return-void
.end method

.method public a(Llde;)V
    .locals 0
    .param p1, "orderedList"    # Llde;

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Llcm;->b(Lldd;)V

    .line 89
    return-void
.end method

.method public a(Lldf;)V
    .locals 0
    .param p1, "paragraph"    # Lldf;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Llcm;->b(Lldd;)V

    .line 94
    return-void
.end method

.method public a(Lldg;)V
    .locals 0
    .param p1, "softLineBreak"    # Lldg;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Llcm;->b(Lldd;)V

    .line 99
    return-void
.end method

.method public a(Lldh;)V
    .locals 0
    .param p1, "strongEmphasis"    # Lldh;

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Llcm;->b(Lldd;)V

    .line 104
    return-void
.end method

.method public a(Lldi;)V
    .locals 0
    .param p1, "text"    # Lldi;

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Llcm;->b(Lldd;)V

    .line 109
    return-void
.end method

.method public a(Lldj;)V
    .locals 0
    .param p1, "thematicBreak"    # Lldj;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Llcm;->b(Lldd;)V

    .line 54
    return-void
.end method

.method public b(Lldd;)V
    .locals 2
    .param p1, "parent"    # Lldd;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 127
    .line 1022
    iget-object v1, p1, Lldd;->g:Lldd;

    .line 128
    .local v1, "node":Lldd;
    :goto_0
    if-eqz v1, :cond_0

    .line 2014
    iget-object v0, v1, Lldd;->j:Lldd;

    .line 132
    .local v0, "next":Lldd;
    invoke-virtual {v1, p0}, Lldd;->a(Lldk;)V

    .line 133
    move-object v1, v0

    .line 134
    goto :goto_0

    .line 135
    .end local v0    # "next":Lldd;
    :cond_0
    return-void
.end method
