.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$8;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 775
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method final process(Lorg/jsoup/parser/Token;Llen;)Z
    .locals 1
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llen;

    .prologue
    .line 778
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1311
    check-cast p1, Lorg/jsoup/parser/Token$a;

    .line 779
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token$a;)V

    .line 791
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 780
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 781
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 783
    invoke-virtual {p2}, Llen;->d()Lleh;

    .line 2131
    iget-object v0, p2, Llen;->c:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 3119
    iput-object v0, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 785
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    goto :goto_1

    .line 786
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    invoke-virtual {p2}, Llen;->d()Lleh;

    .line 3131
    iget-object v0, p2, Llen;->c:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 4119
    iput-object v0, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_0
.end method
