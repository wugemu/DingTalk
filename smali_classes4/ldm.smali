.class public final Lldm;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lldm$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llds;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Lldw;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/BitSet;

.field private final d:Ljava/util/BitSet;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lldn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lldm$a;)V
    .locals 1
    .param p1, "builder"    # Lldm$a;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1092
    iget-object v0, p1, Lldm$a;->a:Ljava/util/List;

    .line 35
    invoke-static {v0}, Llbu;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lldm;->a:Ljava/util/List;

    .line 2092
    iget-object v0, p1, Lldm$a;->b:Ljava/util/List;

    .line 36
    invoke-static {v0}, Llbz;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lldm;->b:Ljava/util/Map;

    .line 37
    iget-object v0, p0, Lldm;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Llbz;->a(Ljava/util/Set;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Lldm;->c:Ljava/util/BitSet;

    .line 38
    iget-object v0, p0, Lldm;->c:Ljava/util/BitSet;

    invoke-static {v0}, Llbz;->a(Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Lldm;->d:Ljava/util/BitSet;

    .line 3092
    iget-object v0, p1, Lldm$a;->c:Ljava/util/List;

    .line 39
    iput-object v0, p0, Lldm;->e:Ljava/util/List;

    .line 40
    return-void
.end method

.method public synthetic constructor <init>(Lldm$a;B)V
    .locals 0
    .param p1, "x0"    # Lldm$a;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lldm;-><init>(Lldm$a;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lldd;
    .locals 6
    .param p1, "input"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 60
    new-instance v2, Llbz;

    iget-object v3, p0, Lldm;->d:Ljava/util/BitSet;

    iget-object v4, p0, Lldm;->c:Ljava/util/BitSet;

    iget-object v5, p0, Lldm;->b:Ljava/util/Map;

    invoke-direct {v2, v3, v4, v5}, Llbz;-><init>(Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;)V

    .line 61
    .local v2, "inlineParser":Llbz;
    new-instance v1, Llbu;

    iget-object v3, p0, Lldm;->a:Ljava/util/List;

    invoke-direct {v1, v3, v2}, Llbu;-><init>(Ljava/util/List;Llbz;)V

    .line 4074
    .local v1, "documentParser":Llbu;
    const/4 v3, 0x0

    .line 4076
    :goto_0
    invoke-static {p1, v3}, Llck;->a(Ljava/lang/CharSequence;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 4077
    invoke-static {p1, v3, v4}, Llcl;->a(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 4078
    invoke-virtual {v1, v3}, Llbu;->a(Ljava/lang/CharSequence;)V

    .line 4079
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0xd

    if-ne v3, v5, :cond_0

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_0

    .line 4080
    add-int/lit8 v3, v4, 0x2

    goto :goto_0

    .line 4082
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .line 4084
    goto :goto_0

    .line 4085
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 4086
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {p1, v3, v4}, Llcl;->a(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Llbu;->a(Ljava/lang/CharSequence;)V

    .line 4498
    :cond_3
    iget-object v3, v1, Llbu;->c:Ljava/util/List;

    invoke-virtual {v1, v3}, Llbu;->b(Ljava/util/List;)Z

    .line 5379
    iget-object v3, v1, Llbu;->d:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lldr;

    .line 5380
    iget-object v5, v1, Llbu;->a:Llbz;

    invoke-interface {v3, v5}, Lldr;->a(Lldl;)V

    goto :goto_1

    .line 4500
    :cond_4
    iget-object v3, v1, Llbu;->b:Llbt;

    .line 6025
    iget-object v0, v3, Llbt;->a:Llcr;

    .line 6083
    .local v0, "document":Lldd;
    iget-object v3, p0, Lldm;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v0    # "document":Lldd;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lldn;

    .line 6084
    invoke-interface {v3, v0}, Lldn;->a(Lldd;)Lldd;

    move-result-object v0

    goto :goto_2

    .line 63
    :cond_5
    return-object v0
.end method
