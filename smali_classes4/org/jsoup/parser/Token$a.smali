.class public final Lorg/jsoup/parser/Token$a;
.super Lorg/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(B)V

    .line 239
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    iput-object v0, p0, Lorg/jsoup/parser/Token$a;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 240
    return-void
.end method


# virtual methods
.method final a()Lorg/jsoup/parser/Token;
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/Token$a;->b:Ljava/lang/String;

    .line 245
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    .line 1254
    iget-object v0, p0, Lorg/jsoup/parser/Token$a;->b:Ljava/lang/String;

    .line 259
    return-object v0
.end method
