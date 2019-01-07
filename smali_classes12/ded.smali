.class public abstract Lded;
.super Ljava/lang/Object;
.source "DraftModel.java"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lded;->d:I

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Lded;
    .locals 4
    .param p1, "inputText"    # Ljava/lang/String;
    .param p2, "lastInputText"    # Ljava/lang/String;
    .param p3, "isAutoTransEnable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    if-nez p1, :cond_1

    .line 49
    .end local p1    # "inputText":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 37
    .restart local p1    # "inputText":Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .end local p1    # "inputText":Ljava/lang/String;
    :goto_1
    iput-object p1, p0, Lded;->a:Ljava/lang/String;

    .line 38
    iget-object v2, p0, Lded;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 39
    const-string/jumbo v2, ""

    iput-object v2, p0, Lded;->a:Ljava/lang/String;

    goto :goto_0

    .restart local p1    # "inputText":Ljava/lang/String;
    :cond_2
    move-object p1, p2

    .line 37
    goto :goto_1

    .line 43
    .end local p1    # "inputText":Ljava/lang/String;
    :cond_3
    if-eqz p3, :cond_0

    iget-object v2, p0, Lded;->a:Ljava/lang/String;

    invoke-static {v2}, Lddq;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p0, Lded;->a:Ljava/lang/String;

    const-string/jumbo v3, "$-$+$+$-$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 45
    .local v1, "start":I
    add-int/lit8 v0, v1, 0x9

    .line 46
    .local v0, "end":I
    iget-object v2, p0, Lded;->a:Ljava/lang/String;

    iget-object v3, p0, Lded;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lded;->b:Ljava/lang/String;

    .line 47
    iget-object v2, p0, Lded;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lded;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)Lded;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Lded;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    .local p1, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 54
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lded;->c:Ljava/util/HashMap;

    .line 55
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 56
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 58
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 59
    .local v2, "key":Ljava/lang/Long;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 60
    .local v3, "val":Ljava/lang/String;
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "iter":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/Long;
    .end local v3    # "val":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public final a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lded;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lded;->d:I

    return v0
.end method

.method public abstract b(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lded;->a:Ljava/lang/String;

    return-object v0
.end method

.method public abstract c(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lded;->b:Ljava/lang/String;

    return-object v0
.end method
