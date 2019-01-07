.class final enum Lorg/jsoup/parser/TokeniserState$15;
.super Lorg/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method final read(Lles;Llem;)V
    .locals 1
    .param p1, "t"    # Lles;
    .param p2, "r"    # Llem;

    .prologue
    .line 307
    invoke-virtual {p2}, Llem;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lles;->a(Z)Lorg/jsoup/parser/Token$g;

    .line 309
    sget-object v0, Lorg/jsoup/parser/TokeniserState$15;->RawtextEndTagName:Lorg/jsoup/parser/TokeniserState;

    .line 1113
    iput-object v0, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    .line 314
    :goto_0
    return-void

    .line 311
    :cond_0
    const-string/jumbo v0, "</"

    invoke-virtual {p1, v0}, Lles;->a(Ljava/lang/String;)V

    .line 312
    sget-object v0, Lorg/jsoup/parser/TokeniserState$15;->Rawtext:Lorg/jsoup/parser/TokeniserState;

    .line 2113
    iput-object v0, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0
.end method
