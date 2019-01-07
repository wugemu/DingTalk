.class public final Lorg/jsoup/parser/Token$f;
.super Lorg/jsoup/parser/Token$g;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Lorg/jsoup/parser/Token$g;-><init>()V

    .line 170
    new-instance v0, Lled;

    invoke-direct {v0}, Lled;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$f;->e:Lled;

    .line 171
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->StartTag:Lorg/jsoup/parser/Token$TokenType;

    iput-object v0, p0, Lorg/jsoup/parser/Token$f;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 172
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lled;)Lorg/jsoup/parser/Token$f;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attributes"    # Lled;

    .prologue
    .line 183
    iput-object p1, p0, Lorg/jsoup/parser/Token$f;->b:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lorg/jsoup/parser/Token$f;->e:Lled;

    .line 185
    return-object p0
.end method

.method final synthetic a()Lorg/jsoup/parser/Token;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$f;->h()Lorg/jsoup/parser/Token$g;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lorg/jsoup/parser/Token$g;
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Lorg/jsoup/parser/Token$g;->h()Lorg/jsoup/parser/Token$g;

    .line 177
    new-instance v0, Lled;

    invoke-direct {v0}, Lled;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$f;->e:Lled;

    .line 179
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 190
    iget-object v0, p0, Lorg/jsoup/parser/Token$f;->e:Lled;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/Token$f;->e:Lled;

    invoke-virtual {v0}, Lled;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/Token$f;->e:Lled;

    invoke-virtual {v1}, Lled;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
