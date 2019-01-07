.class final Lenc$8;
.super Lcmf;
.source "SearchAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lenc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmf",
        "<",
        "Lccc;",
        "Lccj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lenc;


# direct methods
.method constructor <init>(Lenc;Lcmb;J)V
    .locals 2
    .param p1, "this$0"    # Lenc;
    .param p3, "x1"    # J

    .prologue
    .line 520
    .local p2, "x0":Lcmb;, "Lcmb<Lccj;>;"
    iput-object p1, p0, Lenc$8;->a:Lenc;

    const-wide/16 v0, 0x7d0

    invoke-direct {p0, p2, v0, v1}, Lcmf;-><init>(Lcmb;J)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 520
    check-cast p1, Lccc;

    .line 2025
    if-nez p1, :cond_0

    .line 2026
    :goto_0
    return-object v1

    .line 2028
    :cond_0
    new-instance v2, Lccj;

    invoke-direct {v2}, Lccj;-><init>()V

    .line 2029
    iget-object v0, p1, Lccc;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lccc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2030
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2031
    iget-object v0, p1, Lccc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccb;

    .line 2032
    invoke-static {v0}, Lcci;->a(Lccb;)Lcci;

    move-result-object v0

    .line 2033
    if-eqz v0, :cond_1

    .line 2034
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2037
    :cond_2
    iput-object v3, v2, Lccj;->a:Ljava/util/List;

    .line 2039
    :cond_3
    iget-object v0, p1, Lccc;->b:Ljava/lang/Integer;

    .line 3033
    invoke-static {v0, v5}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 2039
    iput v0, v2, Lccj;->b:I

    .line 2040
    iget-object v0, p1, Lccc;->c:Ljava/lang/String;

    iput-object v0, v2, Lccj;->c:Ljava/lang/String;

    .line 2041
    iget-object v0, p1, Lccc;->d:Ljava/lang/Boolean;

    invoke-static {v0, v5}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    iput-boolean v0, v2, Lccj;->d:Z

    .line 2042
    iget-object v0, p1, Lccc;->e:Ljava/lang/String;

    iput-object v0, v2, Lccj;->e:Ljava/lang/String;

    .line 2043
    iget-object v0, p1, Lccc;->f:Ljava/util/List;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lccc;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_2
    iput-object v0, v2, Lccj;->f:Ljava/util/List;

    move-object v1, v2

    .line 520
    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 2043
    goto :goto_2
.end method
