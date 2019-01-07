.class final enum Lorg/jsoup/parser/TokeniserState$44;
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
    .line 950
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
    .line 952
    const-string/jumbo v0, "--"

    invoke-virtual {p2, v0}, Llem;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p1, Lles;->m:Lorg/jsoup/parser/Token$b;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$b;->a()Lorg/jsoup/parser/Token;

    .line 954
    sget-object v0, Lorg/jsoup/parser/TokeniserState$44;->CommentStart:Lorg/jsoup/parser/TokeniserState;

    .line 2113
    iput-object v0, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    .line 966
    :goto_0
    return-void

    .line 955
    :cond_0
    const-string/jumbo v0, "DOCTYPE"

    invoke-virtual {p2, v0}, Llem;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 956
    sget-object v0, Lorg/jsoup/parser/TokeniserState$44;->Doctype:Lorg/jsoup/parser/TokeniserState;

    .line 3113
    iput-object v0, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 957
    :cond_1
    const-string/jumbo v0, "[CDATA["

    invoke-virtual {p2, v0}, Llem;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 961
    sget-object v0, Lorg/jsoup/parser/TokeniserState$44;->CdataSection:Lorg/jsoup/parser/TokeniserState;

    .line 4113
    iput-object v0, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 963
    :cond_2
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 964
    sget-object v0, Lorg/jsoup/parser/TokeniserState$44;->BogusComment:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lles;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0
.end method
