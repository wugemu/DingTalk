.class public final Lorg/jsoup/parser/Token$b;
.super Lorg/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/lang/StringBuilder;

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-direct {p0, v1}, Lorg/jsoup/parser/Token;-><init>(B)V

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$b;->b:Ljava/lang/StringBuilder;

    .line 211
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$b;->c:Z

    .line 221
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Comment:Lorg/jsoup/parser/Token$TokenType;

    iput-object v0, p0, Lorg/jsoup/parser/Token$b;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 222
    return-void
.end method


# virtual methods
.method final a()Lorg/jsoup/parser/Token;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/jsoup/parser/Token$b;->b:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/parser/Token$b;->a(Ljava/lang/StringBuilder;)V

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$b;->c:Z

    .line 217
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<!--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1225
    iget-object v1, p0, Lorg/jsoup/parser/Token$b;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
