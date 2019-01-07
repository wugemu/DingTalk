.class public final Lorg/jsoup/parser/Token$c;
.super Lorg/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field final b:Ljava/lang/StringBuilder;

.field final c:Ljava/lang/StringBuilder;

.field final d:Ljava/lang/StringBuilder;

.field e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, v1}, Lorg/jsoup/parser/Token;-><init>(B)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$c;->b:Ljava/lang/StringBuilder;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$c;->c:Ljava/lang/StringBuilder;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$c;->d:Ljava/lang/StringBuilder;

    .line 36
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$c;->e:Z

    .line 39
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Doctype:Lorg/jsoup/parser/Token$TokenType;

    iput-object v0, p0, Lorg/jsoup/parser/Token$c;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 40
    return-void
.end method


# virtual methods
.method public final a()Lorg/jsoup/parser/Token;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/jsoup/parser/Token$c;->b:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/parser/Token$c;->a(Ljava/lang/StringBuilder;)V

    .line 45
    iget-object v0, p0, Lorg/jsoup/parser/Token$c;->c:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/parser/Token$c;->a(Ljava/lang/StringBuilder;)V

    .line 46
    iget-object v0, p0, Lorg/jsoup/parser/Token$c;->d:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/parser/Token$c;->a(Ljava/lang/StringBuilder;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$c;->e:Z

    .line 48
    return-object p0
.end method
