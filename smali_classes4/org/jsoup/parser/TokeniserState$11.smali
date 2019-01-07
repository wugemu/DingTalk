.class final enum Lorg/jsoup/parser/TokeniserState$11;
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
    .line 216
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
    .line 219
    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Llem;->b(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p1, Lles;->g:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/parser/Token;->a(Ljava/lang/StringBuilder;)V

    .line 221
    sget-object v0, Lorg/jsoup/parser/TokeniserState$11;->RCDATAEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lles;->a(Lorg/jsoup/parser/TokeniserState;)V

    .line 233
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-virtual {p2}, Llem;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lles;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "</"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lles;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Llem;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lles;->a(Z)Lorg/jsoup/parser/Token$g;

    move-result-object v0

    invoke-virtual {p1}, Lles;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Token$g;->a(Ljava/lang/String;)Lorg/jsoup/parser/Token$g;

    move-result-object v0

    iput-object v0, p1, Lles;->h:Lorg/jsoup/parser/Token$g;

    .line 226
    invoke-virtual {p1}, Lles;->a()V

    .line 227
    invoke-virtual {p2}, Llem;->d()V

    .line 228
    sget-object v0, Lorg/jsoup/parser/TokeniserState$11;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 2113
    iput-object v0, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 230
    :cond_1
    const-string/jumbo v0, "<"

    invoke-virtual {p1, v0}, Lles;->a(Ljava/lang/String;)V

    .line 231
    sget-object v0, Lorg/jsoup/parser/TokeniserState$11;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    .line 3113
    iput-object v0, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0
.end method
