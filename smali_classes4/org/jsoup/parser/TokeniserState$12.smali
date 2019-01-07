.class final enum Lorg/jsoup/parser/TokeniserState$12;
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
    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method final read(Lles;Llem;)V
    .locals 2
    .param p1, "t"    # Lles;
    .param p2, "r"    # Llem;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 237
    invoke-virtual {p2}, Llem;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lles;->a(Z)Lorg/jsoup/parser/Token$g;

    .line 239
    iget-object v0, p1, Lles;->h:Lorg/jsoup/parser/Token$g;

    invoke-virtual {p2}, Llem;->b()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Token$g;->a(C)V

    .line 240
    iget-object v0, p1, Lles;->g:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Llem;->b()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    sget-object v0, Lorg/jsoup/parser/TokeniserState$12;->RCDATAEndTagName:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lles;->a(Lorg/jsoup/parser/TokeniserState;)V

    .line 246
    :goto_0
    return-void

    .line 243
    :cond_0
    const-string/jumbo v0, "</"

    invoke-virtual {p1, v0}, Lles;->a(Ljava/lang/String;)V

    .line 244
    sget-object v0, Lorg/jsoup/parser/TokeniserState$12;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    .line 1113
    iput-object v0, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0
.end method
