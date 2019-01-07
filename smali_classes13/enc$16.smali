.class final Lenc$16;
.super Lcmg;
.source "SearchAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lenc;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Leol;",
        "Lepr;",
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
    .line 821
    .local p2, "x0":Lcma;, "Lcma<Lepr;>;"
    iput-object p1, p0, Lenc$16;->a:Lenc;

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
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 821
    check-cast p1, Leol;

    .line 2041
    if-nez p1, :cond_0

    .line 2042
    :goto_0
    return-object v2

    .line 2045
    :cond_0
    new-instance v3, Lepr;

    invoke-direct {v3}, Lepr;-><init>()V

    .line 2047
    iget-object v0, p1, Leol;->e:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v0, v7}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 2047
    iput-boolean v0, v3, Lepr;->e:Z

    .line 2048
    iget-object v0, p1, Leol;->f:Ljava/lang/String;

    iput-object v0, v3, Lepr;->f:Ljava/lang/String;

    .line 2049
    iget-object v0, p1, Leol;->d:Ljava/lang/String;

    iput-object v0, v3, Lepr;->d:Ljava/lang/String;

    .line 2050
    iget-object v0, p1, Leol;->c:Ljava/lang/Integer;

    .line 3033
    invoke-static {v0, v7}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 2050
    iput v0, v3, Lepr;->c:I

    .line 2051
    iget-object v0, p1, Leol;->b:Ljava/lang/Integer;

    .line 4033
    invoke-static {v0, v7}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 2051
    iput v0, v3, Lepr;->b:I

    .line 2052
    iget-object v0, p1, Leol;->a:Ljava/util/List;

    .line 4054
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move-object v0, v2

    .line 2052
    :goto_1
    iput-object v0, v3, Lepr;->a:Ljava/util/List;

    move-object v2, v3

    .line 821
    goto :goto_0

    .line 4058
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4060
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leor;

    .line 4061
    if-eqz v0, :cond_3

    .line 5038
    if-nez v0, :cond_4

    move-object v0, v2

    .line 4067
    :goto_3
    if-eqz v0, :cond_3

    .line 4068
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5042
    :cond_4
    new-instance v4, Lept;

    invoke-direct {v4}, Lept;-><init>()V

    .line 5044
    iget-object v6, v0, Leor;->a:Ljava/lang/String;

    iput-object v6, v4, Lept;->a:Ljava/lang/String;

    .line 5045
    iget-object v6, v0, Leor;->b:Ljava/lang/Integer;

    .line 6033
    invoke-static {v6, v7}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v6

    .line 5045
    iput v6, v4, Lept;->b:I

    .line 5046
    iget-object v6, v0, Leor;->c:Ljava/lang/Integer;

    .line 7033
    invoke-static {v6, v7}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v6

    .line 5046
    iput v6, v4, Lept;->c:I

    .line 5047
    iget-object v0, v0, Leor;->d:Ljava/lang/String;

    iput-object v0, v4, Lept;->d:Ljava/lang/String;

    move-object v0, v4

    .line 5049
    goto :goto_3

    :cond_5
    move-object v0, v1

    .line 4072
    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 829
    invoke-super {p0, p1, p2, p3}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 830
    const-string/jumbo v0, "search"

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "searchExternalByOrg"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "code: "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "reason: "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    return-void
.end method
