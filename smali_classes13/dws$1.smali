.class final Ldws$1;
.super Lcmg;
.source "RecruitmentApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldws;->a(Ldwy;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/util/List",
        "<",
        "Ldww;",
        ">;",
        "Ljava/util/List",
        "<",
        "Ldwz;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldws;


# direct methods
.method constructor <init>(Ldws;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldws;

    .prologue
    .line 54
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/List<Ldwz;>;>;"
    iput-object p1, p0, Ldws$1;->a:Ldws;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 54
    check-cast p1, Ljava/util/List;

    .line 2047
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 2048
    :goto_0
    return-object v0

    .line 2050
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2052
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldww;

    .line 3033
    if-nez v0, :cond_3

    move-object v0, v2

    .line 2054
    :goto_2
    if-eqz v0, :cond_2

    .line 2055
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3036
    :cond_3
    new-instance v3, Ldwz;

    invoke-direct {v3}, Ldwz;-><init>()V

    .line 3037
    iget-object v5, v0, Ldww;->a:Ljava/lang/Long;

    .line 3044
    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 3037
    iput-wide v6, v3, Ldwz;->a:J

    .line 3038
    iget-object v5, v0, Ldww;->b:Ljava/lang/String;

    iput-object v5, v3, Ldwz;->b:Ljava/lang/String;

    .line 3039
    iget-object v5, v0, Ldww;->c:Ljava/lang/Integer;

    .line 4033
    invoke-static {v5, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v5

    .line 3039
    iput v5, v3, Ldwz;->c:I

    .line 3040
    iget-object v5, v0, Ldww;->d:Ljava/lang/Integer;

    .line 5033
    invoke-static {v5, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v5

    .line 3040
    iput v5, v3, Ldwz;->d:I

    .line 3041
    iget-object v5, v0, Ldww;->e:Ljava/lang/String;

    iput-object v5, v3, Ldwz;->e:Ljava/lang/String;

    .line 3042
    iget-object v0, v0, Ldww;->f:Ljava/lang/String;

    iput-object v0, v3, Ldwz;->f:Ljava/lang/String;

    move-object v0, v3

    .line 3043
    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 54
    goto :goto_0
.end method
