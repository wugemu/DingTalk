.class final Lenc$15;
.super Lcmg;
.source "SearchAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lenc;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Leoi;",
        "Lepq;",
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
    .line 786
    .local p2, "x0":Lcma;, "Lcma<Lepq;>;"
    iput-object p1, p0, Lenc$15;->a:Lenc;

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
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 786
    check-cast p1, Leoi;

    .line 2041
    if-nez p1, :cond_0

    .line 2042
    :goto_0
    return-object v2

    .line 2045
    :cond_0
    new-instance v4, Lepq;

    invoke-direct {v4}, Lepq;-><init>()V

    .line 2046
    iget-object v0, p1, Leoi;->a:Ljava/util/List;

    .line 2055
    if-nez v0, :cond_1

    .line 2046
    :goto_1
    iput-object v2, v4, Lepq;->a:Ljava/util/List;

    .line 2047
    iget-object v0, p1, Leoi;->b:Ljava/lang/Long;

    .line 4044
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 2047
    iput-wide v0, v4, Lepq;->b:J

    .line 2048
    iget-object v0, p1, Leoi;->c:Ljava/lang/Boolean;

    .line 5022
    invoke-static {v0, v9}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 2048
    iput-boolean v0, v4, Lepq;->c:Z

    move-object v2, v4

    .line 786
    goto :goto_0

    .line 2059
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2060
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leoh;

    .line 3041
    if-nez v0, :cond_3

    move-object v0, v2

    .line 2062
    :goto_3
    if-eqz v0, :cond_2

    .line 2065
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3045
    :cond_3
    new-instance v5, Lepp;

    invoke-direct {v5}, Lepp;-><init>()V

    .line 3046
    iget-object v7, v0, Leoh;->a:Leog;

    .line 3060
    if-nez v7, :cond_4

    move-object v1, v2

    .line 3046
    :goto_4
    iput-object v1, v5, Lepp;->a:Lepo;

    .line 3047
    iget-object v1, v0, Leoh;->b:Ljava/util/List;

    iput-object v1, v5, Lepp;->b:Ljava/util/List;

    .line 3048
    iget-object v0, v0, Leoh;->c:Ljava/util/List;

    iput-object v0, v5, Lepp;->c:Ljava/util/List;

    move-object v0, v5

    .line 3050
    goto :goto_3

    .line 3064
    :cond_4
    new-instance v1, Lepo;

    invoke-direct {v1}, Lepo;-><init>()V

    .line 3065
    iget-object v8, v7, Leog;->a:Ljava/lang/String;

    iput-object v8, v1, Lepo;->a:Ljava/lang/String;

    .line 3066
    iget-object v8, v7, Leog;->b:Ljava/lang/String;

    iput-object v8, v1, Lepo;->b:Ljava/lang/String;

    .line 3067
    iget-object v8, v7, Leog;->c:Ljava/lang/String;

    iput-object v8, v1, Lepo;->c:Ljava/lang/String;

    .line 3068
    iget-object v8, v7, Leog;->d:Ljava/lang/Byte;

    invoke-static {v8}, Lcoc;->a(Ljava/lang/Byte;)B

    move-result v8

    iput-byte v8, v1, Lepo;->d:B

    .line 3069
    iget-object v8, v7, Leog;->e:Ljava/lang/Integer;

    .line 4033
    invoke-static {v8, v9}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v8

    .line 3069
    iput v8, v1, Lepo;->e:I

    .line 3070
    iget-object v8, v7, Leog;->f:Ljava/lang/String;

    iput-object v8, v1, Lepo;->f:Ljava/lang/String;

    .line 3071
    iget-object v8, v7, Leog;->g:Ljava/lang/String;

    iput-object v8, v1, Lepo;->g:Ljava/lang/String;

    .line 3072
    iget-object v8, v7, Leog;->h:Ljava/lang/String;

    iput-object v8, v1, Lepo;->h:Ljava/lang/String;

    .line 3073
    iget-object v8, v7, Leog;->i:Ljava/lang/String;

    iput-object v8, v1, Lepo;->i:Ljava/lang/String;

    .line 3074
    iget-object v7, v7, Leog;->j:Ljava/lang/String;

    iput-object v7, v1, Lepo;->j:Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object v2, v3

    .line 2068
    goto/16 :goto_1
.end method
