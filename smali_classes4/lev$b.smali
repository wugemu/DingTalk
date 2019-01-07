.class final Llev$b;
.super Llev;
.source "CombiningEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Llev;-><init>()V

    .line 82
    return-void
.end method


# virtual methods
.method public final a(Llew;)V
    .locals 1
    .param p1, "e"    # Llew;

    .prologue
    .line 85
    iget-object v0, p0, Llev$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {p0}, Llev$b;->a()V

    .line 87
    return-void
.end method

.method public final a(Lleh;Lleh;)Z
    .locals 3
    .param p1, "root"    # Lleh;
    .param p2, "node"    # Lleh;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Llev$b;->b:I

    if-ge v0, v2, :cond_1

    .line 92
    iget-object v2, p0, Llev$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llew;

    .line 93
    .local v1, "s":Llew;
    invoke-virtual {v1, p1, p2}, Llew;->a(Lleh;Lleh;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const/4 v2, 0x1

    .line 96
    .end local v1    # "s":Llew;
    :goto_1
    return v2

    .line 91
    .restart local v1    # "s":Llew;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "s":Llew;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 101
    const-string/jumbo v0, ":or%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Llev$b;->a:Ljava/util/ArrayList;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
