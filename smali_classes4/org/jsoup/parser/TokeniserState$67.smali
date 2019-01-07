.class final enum Lorg/jsoup/parser/TokeniserState$67;
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
    .line 1639
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method final read(Lles;Llem;)V
    .locals 3
    .param p1, "t"    # Lles;
    .param p2, "r"    # Llem;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1641
    const-string/jumbo v1, "]]>"

    .line 2115
    invoke-virtual {p2, v1}, Llem;->a(Ljava/lang/CharSequence;)I

    move-result v1

    .line 2116
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2117
    iget v2, p2, Llem;->c:I

    invoke-virtual {p2, v2, v1}, Llem;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 2118
    iget v2, p2, Llem;->c:I

    add-int/2addr v1, v2

    iput v1, p2, Llem;->c:I

    .line 1642
    .local v0, "data":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v0}, Lles;->a(Ljava/lang/String;)V

    .line 1643
    const-string/jumbo v1, "]]>"

    invoke-virtual {p2, v1}, Llem;->a(Ljava/lang/String;)Z

    .line 1644
    sget-object v1, Lorg/jsoup/parser/TokeniserState$67;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 3113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    .line 1645
    return-void

    .line 2121
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Llem;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
