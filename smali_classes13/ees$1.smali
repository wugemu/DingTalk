.class public final Lees$1;
.super Lcmi;
.source "TeamStatRepo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lees;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lefs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leer$b;

.field final synthetic b:Lees;


# direct methods
.method public constructor <init>(Lees;Leer$b;)V
    .locals 0
    .param p1, "this$0"    # Lees;

    .prologue
    .line 53
    iput-object p1, p0, Lees$1;->b:Lees;

    iput-object p2, p0, Lees$1;->a:Leer$b;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 89
    iget-object v0, p0, Lees$1;->a:Leer$b;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lees$1;->a:Leer$b;

    invoke-interface {v0}, Leer$b;->a()V

    .line 92
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 53
    check-cast p1, Lefs;

    .line 1056
    if-eqz p1, :cond_5

    .line 1057
    iget-object v1, p1, Lefs;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lees$1;->b:Lees;

    invoke-static {v1}, Lees;->a(Lees;)J

    move-result-wide v2

    iget-object v1, p1, Lefs;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 1060
    :cond_0
    iget-object v1, p0, Lees$1;->b:Lees;

    iget-object v2, p1, Lefs;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lees;->a(Lees;J)J

    .line 1061
    iget-object v1, p0, Lees$1;->a:Leer$b;

    if-eqz v1, :cond_1

    .line 1062
    iget-object v1, p0, Lees$1;->a:Leer$b;

    .line 2038
    iget-object v2, p1, Lefs;->b:Ljava/util/List;

    .line 1062
    invoke-static {v2}, Lees;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Leer$b;->a(Ljava/util/List;)V

    .line 3038
    :cond_1
    iget-object v1, p1, Lefs;->b:Ljava/util/List;

    .line 1064
    if-eqz v1, :cond_4

    .line 4038
    iget-object v1, p1, Lefs;->b:Ljava/util/List;

    .line 1064
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1065
    :goto_0
    if-lez v1, :cond_2

    const/4 v0, 0x1

    .line 1066
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1067
    const-string/jumbo v3, "org_id"

    iget-object v4, p0, Lees$1;->b:Lees;

    invoke-static {v4}, Lees;->b(Lees;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    const-string/jumbo v3, "count"

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    const-string/jumbo v1, "is_return"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "oa_corp_data_return"

    invoke-interface {v0, v6, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1081
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v1, v0

    .line 1064
    goto :goto_0

    .line 1083
    :cond_5
    iget-object v0, p0, Lees$1;->a:Leer$b;

    invoke-interface {v0, v6}, Leer$b;->a(Ljava/util/List;)V

    goto :goto_1
.end method
