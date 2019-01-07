.class final Lenc$1;
.super Lcmg;
.source "SearchAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lenc;->a(IJLjava/lang/String;JILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcfv;",
        "Lchr;",
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
    .line 131
    .local p2, "x0":Lcma;, "Lcma<Lchr;>;"
    iput-object p1, p0, Lenc$1;->a:Lenc;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    .line 131
    check-cast p1, Lcfv;

    .line 2021
    if-nez p1, :cond_0

    move-object v0, v1

    .line 2022
    :goto_0
    return-object v0

    .line 2025
    :cond_0
    new-instance v2, Lchr;

    invoke-direct {v2}, Lchr;-><init>()V

    .line 2026
    iget-object v0, p1, Lcfv;->a:Ljava/lang/Integer;

    .line 3033
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 2026
    iput v0, v2, Lchr;->a:I

    .line 2027
    iget-object v0, p1, Lcfv;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :goto_1
    iput-object v0, v2, Lchr;->b:Ljava/lang/String;

    .line 2028
    iget-object v0, p1, Lcfv;->c:Ljava/lang/Long;

    .line 3044
    invoke-static {v0, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 2028
    iput-wide v4, v2, Lchr;->c:J

    .line 2030
    iget-object v0, p1, Lcfv;->d:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 2031
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p1, Lcfv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2032
    iget-object v0, p1, Lcfv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfu;

    .line 4023
    if-nez v0, :cond_3

    move-object v0, v1

    .line 2034
    :goto_3
    if-eqz v0, :cond_1

    .line 2035
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2027
    :cond_2
    iget-object v0, p1, Lcfv;->b:Ljava/lang/String;

    goto :goto_1

    .line 4027
    :cond_3
    new-instance v3, Lchq;

    invoke-direct {v3}, Lchq;-><init>()V

    .line 4028
    iget-object v6, v0, Lcfu;->a:Ljava/lang/String;

    invoke-static {v6}, Lchq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lchq;->a:Ljava/lang/String;

    .line 4029
    iget-object v6, v0, Lcfu;->b:Ljava/lang/String;

    invoke-static {v6}, Lchq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lchq;->b:Ljava/lang/String;

    .line 4030
    iget-object v6, v0, Lcfu;->c:Ljava/lang/String;

    invoke-static {v6}, Lchq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lchq;->c:Ljava/lang/String;

    .line 4031
    iget-object v6, v0, Lcfu;->d:Ljava/lang/String;

    invoke-static {v6}, Lchq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lchq;->d:Ljava/lang/String;

    .line 4032
    iget-object v6, v0, Lcfu;->e:Ljava/lang/Long;

    .line 4044
    invoke-static {v6, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 4032
    iput-wide v6, v3, Lchq;->e:J

    .line 4033
    iget-object v6, v0, Lcfu;->f:Ljava/lang/Long;

    .line 5044
    invoke-static {v6, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 4033
    iput-wide v6, v3, Lchq;->f:J

    .line 4034
    iget-object v6, v0, Lcfu;->g:Ljava/lang/String;

    invoke-static {v6}, Lchq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lchq;->g:Ljava/lang/String;

    .line 4035
    iget-object v0, v0, Lcfu;->h:Ljava/util/Map;

    iput-object v0, v3, Lchq;->h:Ljava/util/Map;

    move-object v0, v3

    .line 4036
    goto :goto_3

    .line 2038
    :cond_4
    iput-object v4, v2, Lchr;->d:Ljava/util/List;

    :cond_5
    move-object v0, v2

    .line 131
    goto/16 :goto_0
.end method
