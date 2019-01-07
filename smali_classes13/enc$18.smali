.class final Lenc$18;
.super Lcmg;
.source "SearchAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lenc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lepg;",
        "Leqa;",
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
    .line 868
    .local p2, "x0":Lcma;, "Lcma<Leqa;>;"
    iput-object p1, p0, Lenc$18;->a:Lenc;

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

    .line 868
    check-cast p1, Lepg;

    .line 2034
    if-nez p1, :cond_0

    .line 2035
    :goto_0
    return-object v1

    .line 2038
    :cond_0
    new-instance v3, Leqa;

    invoke-direct {v3}, Leqa;-><init>()V

    .line 2039
    iget-object v0, p1, Lepg;->a:Ljava/util/List;

    .line 2058
    if-nez v0, :cond_1

    move-object v0, v1

    .line 2039
    :goto_1
    iput-object v0, v3, Leqa;->a:Ljava/util/List;

    .line 2040
    iget-object v0, p1, Lepg;->b:Ljava/lang/Integer;

    .line 5033
    invoke-static {v0, v7}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 2040
    iput v0, v3, Leqa;->b:I

    .line 2041
    iget-object v0, p1, Lepg;->c:Ljava/lang/String;

    iput-object v0, v3, Leqa;->c:Ljava/lang/String;

    .line 2042
    iget-object v0, p1, Lepg;->d:Ljava/lang/String;

    iput-object v0, v3, Leqa;->d:Ljava/lang/String;

    .line 2043
    iget-object v0, p1, Lepg;->e:Ljava/lang/Boolean;

    .line 6022
    invoke-static {v0, v7}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 2043
    iput-boolean v0, v3, Leqa;->e:Z

    move-object v1, v3

    .line 868
    goto :goto_0

    .line 2062
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2063
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepf;

    .line 3040
    if-nez v0, :cond_3

    move-object v0, v1

    .line 2065
    :goto_3
    if-eqz v0, :cond_2

    .line 2068
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3044
    :cond_3
    new-instance v4, Lepz;

    invoke-direct {v4}, Lepz;-><init>()V

    .line 3045
    iget-object v6, v0, Lepf;->a:Ljava/lang/String;

    iput-object v6, v4, Lepz;->a:Ljava/lang/String;

    .line 3046
    iget-object v6, v0, Lepf;->b:Ljava/lang/String;

    iput-object v6, v4, Lepz;->b:Ljava/lang/String;

    .line 3047
    iget-object v6, v0, Lepf;->c:Ljava/lang/String;

    iput-object v6, v4, Lepz;->c:Ljava/lang/String;

    .line 3048
    iget-object v6, v0, Lepf;->d:Ljava/lang/String;

    iput-object v6, v4, Lepz;->d:Ljava/lang/String;

    .line 3049
    iget-object v6, v0, Lepf;->e:Ljava/lang/String;

    iput-object v6, v4, Lepz;->e:Ljava/lang/String;

    .line 3050
    iget-object v6, v0, Lepf;->f:Ljava/lang/Integer;

    .line 4033
    invoke-static {v6, v7}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v6

    .line 3050
    iput v6, v4, Lepz;->f:I

    .line 3051
    iget-object v0, v0, Lepf;->g:Ljava/lang/String;

    iput-object v0, v4, Lepz;->g:Ljava/lang/String;

    move-object v0, v4

    .line 3053
    goto :goto_3

    :cond_4
    move-object v0, v2

    .line 2071
    goto :goto_1
.end method
