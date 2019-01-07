.class final Lbbk$6;
.super Lcmi;
.source "DataSourceRemote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lbek;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:I

.field final synthetic c:Lbbk;


# direct methods
.method constructor <init>(Lbbk;Lcma;I)V
    .locals 0
    .param p1, "this$0"    # Lbbk;

    .prologue
    .line 1953
    iput-object p1, p0, Lbbk$6;->c:Lbbk;

    iput-object p2, p0, Lbbk$6;->a:Lcma;

    iput p3, p0, Lbbk$6;->b:I

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 1973
    iget-object v0, p0, Lbbk$6;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1974
    iget-object v0, p0, Lbbk$6;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    :cond_0
    const-string/jumbo v0, "getUnreadDingListCount onException "

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 1953
    check-cast p1, Lbek;

    .line 2956
    iget-object v0, p0, Lbbk$6;->a:Lcma;

    if-eqz v0, :cond_1

    .line 2957
    if-eqz p1, :cond_0

    iget-object v0, p1, Lbek;->b:Ljava/util/List;

    if-nez v0, :cond_2

    .line 2958
    :cond_0
    iget-object v0, p0, Lbbk$6;->a:Lcma;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2962
    :cond_1
    :goto_0
    return-void

    .line 2960
    :cond_2
    iget-object v0, p1, Lbek;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lbbk$6;->b:I

    if-le v0, v2, :cond_3

    .line 2961
    const-string/jumbo v0, "getUnreadDingListCount onException "

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "size invalid"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2962
    iget-object v0, p0, Lbbk$6;->a:Lcma;

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "invalid size"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3029
    :cond_3
    if-nez p1, :cond_4

    move-object v0, v1

    .line 2965
    :goto_1
    iget-object v1, p0, Lbbk$6;->a:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 3032
    :cond_4
    new-instance v2, Lbgj;

    invoke-direct {v2}, Lbgj;-><init>()V

    .line 3033
    iget-object v0, p1, Lbek;->a:Lbdd;

    invoke-static {v0}, Lbfb;->a(Lbdd;)Lbfb;

    move-result-object v0

    iput-object v0, v2, Lbgj;->a:Lbfb;

    .line 3034
    iget-object v0, p1, Lbek;->b:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lbek;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3035
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p1, Lbek;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v2, Lbgj;->b:Ljava/util/List;

    .line 3036
    iget-object v0, p1, Lbek;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbel;

    .line 4034
    if-nez v0, :cond_6

    move-object v0, v1

    .line 3038
    :goto_3
    if-eqz v0, :cond_5

    .line 3041
    iget-object v3, v2, Lbgj;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4037
    :cond_6
    new-instance v3, Lbgk;

    invoke-direct {v3}, Lbgk;-><init>()V

    .line 4038
    iget-object v5, v0, Lbel;->a:Ljava/lang/Long;

    .line 4044
    invoke-static {v5, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 4038
    iput-wide v6, v3, Lbgk;->a:J

    .line 4039
    iget-object v5, v0, Lbel;->b:Ljava/lang/Long;

    .line 5044
    invoke-static {v5, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 4039
    iput-wide v6, v3, Lbgk;->b:J

    .line 4040
    iget-object v5, v0, Lbel;->c:Ljava/lang/String;

    iput-object v5, v3, Lbgk;->c:Ljava/lang/String;

    .line 4041
    iget-object v0, v0, Lbel;->d:Ljava/lang/Long;

    .line 6044
    invoke-static {v0, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 4041
    iput-wide v6, v3, Lbgk;->d:J

    move-object v0, v3

    .line 4042
    goto :goto_3

    :cond_7
    move-object v0, v2

    .line 3044
    goto :goto_1
.end method
