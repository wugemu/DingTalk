.class public final Laoj;
.super Ljava/lang/Object;
.source "ExpressionHolder.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Laok;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Laok;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "targetInstanceId"    # Ljava/lang/String;
    .param p3, "expressionPair"    # Laok;
    .param p4, "prop"    # Ljava/lang/String;
    .param p5, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Laok;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p6, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Laoj;->a:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Laoj;->b:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Laoj;->c:Laok;

    .line 34
    iput-object p4, p0, Laoj;->d:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Laoj;->e:Ljava/lang/String;

    .line 36
    if-nez p6, :cond_0

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Laoj;->f:Ljava/util/Map;

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Laoj;->f:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    if-ne p0, p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v1

    .line 46
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 48
    check-cast v0, Laoj;

    .line 50
    .local v0, "that":Laoj;
    iget-object v3, p0, Laoj;->a:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Laoj;->a:Ljava/lang/String;

    iget-object v4, v0, Laoj;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    .line 51
    goto :goto_0

    .line 50
    :cond_5
    iget-object v3, v0, Laoj;->a:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 52
    :cond_6
    iget-object v3, p0, Laoj;->c:Laok;

    if-eqz v3, :cond_8

    iget-object v3, p0, Laoj;->c:Laok;

    iget-object v4, v0, Laoj;->c:Laok;

    invoke-virtual {v3, v4}, Laok;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    .line 53
    goto :goto_0

    .line 52
    :cond_8
    iget-object v3, v0, Laoj;->c:Laok;

    if-nez v3, :cond_7

    .line 54
    :cond_9
    iget-object v3, p0, Laoj;->d:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Laoj;->d:Ljava/lang/String;

    iget-object v4, v0, Laoj;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    move v1, v2

    goto :goto_0

    :cond_b
    iget-object v3, v0, Laoj;->d:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 55
    :cond_c
    iget-object v3, p0, Laoj;->e:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Laoj;->e:Ljava/lang/String;

    iget-object v4, v0, Laoj;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    move v1, v2

    .line 56
    goto :goto_0

    .line 55
    :cond_e
    iget-object v3, v0, Laoj;->e:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 57
    :cond_f
    iget-object v3, p0, Laoj;->f:Ljava/util/Map;

    if-eqz v3, :cond_10

    iget-object v1, p0, Laoj;->f:Ljava/util/Map;

    iget-object v2, v0, Laoj;->f:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_10
    iget-object v3, v0, Laoj;->f:Ljava/util/Map;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v2, p0, Laoj;->a:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Laoj;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 64
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Laoj;->c:Laok;

    if-eqz v2, :cond_2

    iget-object v2, p0, Laoj;->c:Laok;

    invoke-virtual {v2}, Laok;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 65
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Laoj;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Laoj;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 66
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Laoj;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Laoj;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 67
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Laoj;->f:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v1, p0, Laoj;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 68
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 63
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 64
    goto :goto_1

    :cond_3
    move v2, v1

    .line 65
    goto :goto_2

    :cond_4
    move v2, v1

    .line 66
    goto :goto_3
.end method
