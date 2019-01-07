.class public abstract Llet;
.super Ljava/lang/Object;
.source "TreeBuilder.java"


# instance fields
.field private a:Lorg/jsoup/parser/Token$f;

.field private b:Lorg/jsoup/parser/Token$e;

.field l:Llem;

.field public m:Lles;

.field protected n:Lorg/jsoup/nodes/Document;

.field protected o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lleh;",
            ">;"
        }
    .end annotation
.end field

.field protected p:Ljava/lang/String;

.field protected q:Lorg/jsoup/parser/Token;

.field protected r:Lorg/jsoup/parser/ParseErrorList;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lorg/jsoup/parser/Token$f;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$f;-><init>()V

    iput-object v0, p0, Llet;->a:Lorg/jsoup/parser/Token$f;

    .line 23
    new-instance v0, Lorg/jsoup/parser/Token$e;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$e;-><init>()V

    iput-object v0, p0, Llet;->b:Lorg/jsoup/parser/Token$e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "errors"    # Lorg/jsoup/parser/ParseErrorList;

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2, p3}, Llet;->b(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)V

    .line 43
    invoke-virtual {p0}, Llet;->o()V

    .line 44
    iget-object v0, p0, Llet;->n:Lorg/jsoup/nodes/Document;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lled;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Lled;

    .prologue
    .line 65
    iget-object v0, p0, Llet;->a:Lorg/jsoup/parser/Token$f;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$f;->h()Lorg/jsoup/parser/Token$g;

    .line 66
    iget-object v0, p0, Llet;->a:Lorg/jsoup/parser/Token$f;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/Token$f;->a(Ljava/lang/String;Lled;)Lorg/jsoup/parser/Token$f;

    .line 67
    iget-object v0, p0, Llet;->a:Lorg/jsoup/parser/Token$f;

    invoke-virtual {p0, v0}, Llet;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    return v0
.end method

.method public abstract a(Lorg/jsoup/parser/Token;)Z
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "errors"    # Lorg/jsoup/parser/ParseErrorList;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 26
    const-string/jumbo v0, "String input must not be null"

    invoke-static {p1, v0}, Lleb;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const-string/jumbo v0, "BaseURI must not be null"

    invoke-static {p2, v0}, Lleb;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lorg/jsoup/nodes/Document;

    invoke-direct {v0, p2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llet;->n:Lorg/jsoup/nodes/Document;

    .line 30
    new-instance v0, Llem;

    invoke-direct {v0, p1}, Llem;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llet;->l:Llem;

    .line 31
    iput-object p3, p0, Llet;->r:Lorg/jsoup/parser/ParseErrorList;

    .line 32
    new-instance v0, Lles;

    iget-object v1, p0, Llet;->l:Llem;

    invoke-direct {v0, v1, p3}, Lles;-><init>(Llem;Lorg/jsoup/parser/ParseErrorList;)V

    iput-object v0, p0, Llet;->m:Lles;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Llet;->o:Ljava/util/ArrayList;

    .line 34
    iput-object p2, p0, Llet;->p:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public final l(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Llet;->a:Lorg/jsoup/parser/Token$f;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$f;->h()Lorg/jsoup/parser/Token$g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$g;->a(Ljava/lang/String;)Lorg/jsoup/parser/Token$g;

    move-result-object v0

    invoke-virtual {p0, v0}, Llet;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    return v0
.end method

.method public final m(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Llet;->b:Lorg/jsoup/parser/Token$e;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$e;->h()Lorg/jsoup/parser/Token$g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$g;->a(Ljava/lang/String;)Lorg/jsoup/parser/Token$g;

    move-result-object v0

    invoke-virtual {p0, v0}, Llet;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    return v0
.end method

.method protected final o()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 49
    :cond_0
    iget-object v1, p0, Llet;->m:Lles;

    .line 1044
    iget-boolean v2, v1, Lles;->n:Z

    if-nez v2, :cond_1

    .line 1045
    const-string/jumbo v2, "Self closing flag not acknowledged"

    invoke-virtual {v1, v2}, Lles;->b(Ljava/lang/String;)V

    .line 1046
    const/4 v2, 0x1

    iput-boolean v2, v1, Lles;->n:Z

    .line 1049
    :cond_1
    :goto_0
    iget-boolean v2, v1, Lles;->d:Z

    if-nez v2, :cond_2

    .line 1050
    iget-object v2, v1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    iget-object v3, v1, Lles;->a:Llem;

    invoke-virtual {v2, v1, v3}, Lorg/jsoup/parser/TokeniserState;->read(Lles;Llem;)V

    goto :goto_0

    .line 1053
    :cond_2
    iget-object v2, v1, Lles;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 1054
    iget-object v2, v1, Lles;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1055
    iget-object v3, v1, Lles;->f:Ljava/lang/StringBuilder;

    iget-object v4, v1, Lles;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1056
    iput-object v6, v1, Lles;->e:Ljava/lang/String;

    .line 1057
    iget-object v0, v1, Lles;->k:Lorg/jsoup/parser/Token$a;

    .line 1249
    iput-object v2, v0, Lorg/jsoup/parser/Token$a;->b:Ljava/lang/String;

    .line 50
    .local v0, "token":Lorg/jsoup/parser/Token;
    :goto_1
    invoke-virtual {p0, v0}, Llet;->a(Lorg/jsoup/parser/Token;)Z

    .line 51
    invoke-virtual {v0}, Lorg/jsoup/parser/Token;->a()Lorg/jsoup/parser/Token;

    .line 53
    iget-object v1, v0, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v2, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    if-ne v1, v2, :cond_0

    .line 56
    return-void

    .line 1058
    .end local v0    # "token":Lorg/jsoup/parser/Token;
    :cond_3
    iget-object v2, v1, Lles;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1059
    iget-object v0, v1, Lles;->k:Lorg/jsoup/parser/Token$a;

    iget-object v2, v1, Lles;->e:Ljava/lang/String;

    .line 2249
    iput-object v2, v0, Lorg/jsoup/parser/Token$a;->b:Ljava/lang/String;

    .line 1060
    iput-object v6, v1, Lles;->e:Ljava/lang/String;

    goto :goto_1

    .line 1063
    :cond_4
    iput-boolean v5, v1, Lles;->d:Z

    .line 1064
    iget-object v0, v1, Lles;->c:Lorg/jsoup/parser/Token;

    goto :goto_1
.end method

.method public final p()Lleh;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 76
    iget-object v1, p0, Llet;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 77
    .local v0, "size":I
    if-lez v0, :cond_0

    iget-object v1, p0, Llet;->o:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lleh;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
