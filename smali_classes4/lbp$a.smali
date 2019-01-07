.class public final Llbp$a;
.super Lldp;
.source "BlockQuoteParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lldp;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lldv;Lldu;)Lldt;
    .locals 5
    .param p1, "state"    # Lldv;
    .param p2, "matchedBlockParser"    # Lldu;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 49
    invoke-interface {p1}, Lldv;->c()I

    move-result v1

    .line 1008
    .local v1, "nextNonSpace":I
    invoke-static {p1, v1}, Llbp;->a(Lldv;I)Z

    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    invoke-interface {p1}, Lldv;->d()I

    move-result v2

    invoke-interface {p1}, Lldv;->e()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1

    .line 53
    .local v0, "newColumn":I
    invoke-interface {p1}, Lldv;->a()Ljava/lang/CharSequence;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Llck;->c(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 56
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Lldr;

    const/4 v3, 0x0

    new-instance v4, Llbp;

    invoke-direct {v4}, Llbp;-><init>()V

    aput-object v4, v2, v3

    invoke-static {v2}, Lldt;->a([Lldr;)Lldt;

    move-result-object v2

    invoke-virtual {v2, v0}, Lldt;->b(I)Lldt;

    move-result-object v2

    .line 58
    .end local v0    # "newColumn":I
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
