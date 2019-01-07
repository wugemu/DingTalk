.class final enum Lorg/jsoup/parser/TokeniserState$4;
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
    .line 69
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
    .line 71
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lles;->a(Ljava/lang/Character;Z)[C

    move-result-object v0

    .line 72
    .local v0, "c":[C
    if-nez v0, :cond_0

    .line 73
    const/16 v1, 0x26

    invoke-virtual {p1, v1}, Lles;->a(C)V

    .line 76
    :goto_0
    sget-object v1, Lorg/jsoup/parser/TokeniserState$4;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    .line 1113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    .line 77
    return-void

    .line 75
    :cond_0
    invoke-virtual {p1, v0}, Lles;->a([C)V

    goto :goto_0
.end method
