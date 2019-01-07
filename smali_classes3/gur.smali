.class public final Lgur;
.super Ljava/lang/Object;
.source "SRMediaObject.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgul;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lgur;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Lgul;>;"
    const/4 v3, 0x0

    .line 48
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move-object v2, v3

    .line 59
    :cond_1
    return-object v2

    .line 51
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v2, "objectList":Ljava/util/List;, "Ljava/util/List<Lgur;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgul;

    .line 1033
    .local v0, "model":Lgul;
    if-nez v0, :cond_4

    move-object v1, v3

    .line 55
    .local v1, "object":Lgur;
    :goto_1
    if-eqz v1, :cond_3

    .line 56
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1036
    .end local v1    # "object":Lgur;
    :cond_4
    new-instance v1, Lgur;

    invoke-direct {v1}, Lgur;-><init>()V

    .line 1037
    iget-object v5, v0, Lgul;->a:Ljava/lang/String;

    iput-object v5, v1, Lgur;->a:Ljava/lang/String;

    .line 1038
    iget-object v5, v0, Lgul;->b:Ljava/lang/String;

    iput-object v5, v1, Lgur;->b:Ljava/lang/String;

    .line 1039
    iget-object v5, v0, Lgul;->c:Ljava/lang/String;

    iput-object v5, v1, Lgur;->c:Ljava/lang/String;

    .line 1040
    iget-object v5, v0, Lgul;->d:Ljava/lang/String;

    iput-object v5, v1, Lgur;->d:Ljava/lang/String;

    .line 1041
    iget-object v5, v0, Lgul;->e:Ljava/lang/Integer;

    .line 2033
    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v5

    .line 1041
    iput v5, v1, Lgur;->e:I

    .line 1042
    iget-object v5, v0, Lgul;->f:Ljava/lang/String;

    iput-object v5, v1, Lgur;->f:Ljava/lang/String;

    .line 1043
    iget-object v5, v0, Lgul;->g:Ljava/lang/String;

    iput-object v5, v1, Lgur;->g:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 63
    iget v0, p0, Lgur;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
