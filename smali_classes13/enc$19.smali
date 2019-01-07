.class final Lenc$19;
.super Lcmg;
.source "SearchAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lenc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lepa;",
        "Lepv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lenc;


# direct methods
.method constructor <init>(Lenc;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lenc;

    .prologue
    .line 891
    .local p2, "x0":Lcma;, "Lcma<Lepv;>;"
    iput-object p1, p0, Lenc$19;->a:Lenc;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 891
    check-cast p1, Lepa;

    .line 2021
    if-nez p1, :cond_0

    .line 2022
    :goto_0
    return-object v1

    .line 2025
    :cond_0
    new-instance v3, Lepv;

    invoke-direct {v3}, Lepv;-><init>()V

    .line 2027
    iget-object v0, p1, Lepa;->a:Ljava/util/List;

    .line 2042
    invoke-static {v0}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 2027
    :goto_1
    iput-object v0, v3, Lepv;->a:Ljava/util/List;

    .line 2028
    iget-object v0, p1, Lepa;->b:Ljava/lang/Integer;

    .line 5033
    invoke-static {v0, v7}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 2028
    iput v0, v3, Lepv;->b:I

    .line 2029
    iget-object v0, p1, Lepa;->d:Ljava/lang/String;

    iput-object v0, v3, Lepv;->c:Ljava/lang/String;

    .line 2030
    iget-object v0, p1, Lepa;->e:Ljava/lang/Boolean;

    .line 6022
    invoke-static {v0, v7}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 2030
    iput-boolean v0, v3, Lepv;->d:Z

    move-object v1, v3

    .line 891
    goto :goto_0

    .line 2046
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lcpd;->a(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 2048
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leoz;

    .line 3023
    if-nez v0, :cond_3

    move-object v0, v1

    .line 2050
    :goto_3
    if-eqz v0, :cond_2

    .line 2054
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3027
    :cond_3
    new-instance v4, Lepu;

    invoke-direct {v4}, Lepu;-><init>()V

    .line 3028
    iget-object v6, v0, Leoz;->a:Ljava/lang/String;

    iput-object v6, v4, Lepu;->a:Ljava/lang/String;

    .line 3029
    iget-object v6, v0, Leoz;->b:Ljava/lang/String;

    iput-object v6, v4, Lepu;->b:Ljava/lang/String;

    .line 3030
    iget-object v6, v0, Leoz;->c:Ljava/lang/String;

    iput-object v6, v4, Lepu;->c:Ljava/lang/String;

    .line 3031
    iget-object v6, v0, Leoz;->d:Ljava/lang/String;

    iput-object v6, v4, Lepu;->d:Ljava/lang/String;

    .line 3032
    iget-object v6, v0, Leoz;->e:Ljava/lang/String;

    iput-object v6, v4, Lepu;->e:Ljava/lang/String;

    .line 3033
    iget-object v6, v0, Leoz;->f:Ljava/lang/String;

    iput-object v6, v4, Lepu;->f:Ljava/lang/String;

    .line 3034
    iget-object v6, v0, Leoz;->g:Ljava/lang/Integer;

    .line 4033
    invoke-static {v6, v7}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v6

    .line 3034
    iput v6, v4, Lepu;->g:I

    .line 3035
    iget-object v6, v0, Leoz;->h:Ljava/lang/String;

    iput-object v6, v4, Lepu;->h:Ljava/lang/String;

    .line 3036
    iget-object v6, v0, Leoz;->i:Ljava/lang/String;

    iput-object v6, v4, Lepu;->i:Ljava/lang/String;

    .line 3037
    iget-object v0, v0, Leoz;->j:Ljava/lang/String;

    iput-object v0, v4, Lepu;->j:Ljava/lang/String;

    move-object v0, v4

    .line 3038
    goto :goto_3

    :cond_4
    move-object v0, v2

    .line 2057
    goto :goto_1
.end method
