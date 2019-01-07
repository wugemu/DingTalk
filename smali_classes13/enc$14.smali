.class final Lenc$14;
.super Lcmg;
.source "SearchAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lenc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lepe;",
        "Lepy;",
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
    .line 753
    .local p2, "x0":Lcma;, "Lcma<Lepy;>;"
    iput-object p1, p0, Lenc$14;->a:Lenc;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 753
    check-cast p1, Lepe;

    .line 2029
    if-nez p1, :cond_0

    .line 2030
    :goto_0
    return-object v1

    .line 2033
    :cond_0
    new-instance v3, Lepy;

    invoke-direct {v3}, Lepy;-><init>()V

    .line 2034
    iget-object v0, p1, Lepe;->a:Ljava/util/List;

    .line 2096
    if-nez v0, :cond_1

    move-object v0, v1

    .line 2034
    :goto_1
    iput-object v0, v3, Lepy;->a:Ljava/util/List;

    .line 2035
    iget-object v0, p1, Lepe;->b:Ljava/lang/Integer;

    .line 6033
    invoke-static {v0, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 2035
    iput v0, v3, Lepy;->b:I

    .line 2036
    iget-object v0, p1, Lepe;->c:Ljava/lang/String;

    iput-object v0, v3, Lepy;->c:Ljava/lang/String;

    .line 2037
    iget-object v0, p1, Lepe;->d:Ljava/lang/String;

    iput-object v0, v3, Lepy;->d:Ljava/lang/String;

    .line 2038
    iget-object v0, p1, Lepe;->e:Ljava/lang/Boolean;

    .line 7022
    invoke-static {v0, v8}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 2038
    iput-boolean v0, v3, Lepy;->e:Z

    move-object v1, v3

    .line 753
    goto :goto_0

    .line 2100
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepd;

    .line 3072
    if-nez v0, :cond_3

    move-object v0, v1

    .line 2103
    :goto_3
    if-eqz v0, :cond_2

    .line 2106
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3076
    :cond_3
    new-instance v4, Lepx;

    invoke-direct {v4}, Lepx;-><init>()V

    .line 3077
    iget-object v6, v0, Lepd;->a:Ljava/lang/String;

    iput-object v6, v4, Lepx;->a:Ljava/lang/String;

    .line 3078
    iget-object v6, v0, Lepd;->b:Ljava/lang/String;

    iput-object v6, v4, Lepx;->b:Ljava/lang/String;

    .line 3079
    iget-object v6, v0, Lepd;->c:Ljava/lang/String;

    iput-object v6, v4, Lepx;->c:Ljava/lang/String;

    .line 3080
    iget-object v6, v0, Lepd;->d:Ljava/lang/String;

    iput-object v6, v4, Lepx;->d:Ljava/lang/String;

    .line 3081
    iget-object v6, v0, Lepd;->e:Ljava/util/List;

    iput-object v6, v4, Lepx;->e:Ljava/util/List;

    .line 3082
    iget-object v6, v0, Lepd;->f:Ljava/util/List;

    iput-object v6, v4, Lepx;->f:Ljava/util/List;

    .line 3083
    iget-object v6, v0, Lepd;->g:Ljava/lang/Integer;

    .line 4033
    invoke-static {v6, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v6

    .line 3083
    iput v6, v4, Lepx;->g:I

    .line 3084
    iget-object v6, v0, Lepd;->h:Ljava/lang/String;

    iput-object v6, v4, Lepx;->h:Ljava/lang/String;

    .line 3085
    iget-object v6, v0, Lepd;->i:Ljava/lang/Long;

    .line 4044
    invoke-static {v6, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 3085
    iput-wide v6, v4, Lepx;->i:J

    .line 3086
    iget-object v6, v0, Lepd;->j:Ljava/lang/Long;

    .line 5044
    invoke-static {v6, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 3086
    iput-wide v6, v4, Lepx;->j:J

    .line 3087
    iget-object v6, v0, Lepd;->k:Ljava/lang/String;

    iput-object v6, v4, Lepx;->k:Ljava/lang/String;

    .line 3088
    iget-object v6, v0, Lepd;->l:Ljava/lang/String;

    iput-object v6, v4, Lepx;->l:Ljava/lang/String;

    .line 3089
    iget v0, v0, Lepd;->m:I

    iput v0, v4, Lepx;->m:I

    move-object v0, v4

    .line 3091
    goto :goto_3

    :cond_4
    move-object v0, v2

    .line 2109
    goto/16 :goto_1
.end method
