.class final Lbbk$8;
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
        "Lbei;",
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
    .line 1986
    iput-object p1, p0, Lbbk$8;->c:Lbbk;

    iput-object p2, p0, Lbbk$8;->a:Lcma;

    iput p3, p0, Lbbk$8;->b:I

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
    .line 2006
    iget-object v0, p0, Lbbk$8;->a:Lcma;

    if-eqz v0, :cond_0

    .line 2007
    iget-object v0, p0, Lbbk$8;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    :cond_0
    const-string/jumbo v0, "getUnreadCommentListCount onException "

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
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

    .line 1986
    check-cast p1, Lbei;

    .line 2989
    iget-object v0, p0, Lbbk$8;->a:Lcma;

    if-eqz v0, :cond_1

    .line 2990
    if-eqz p1, :cond_0

    iget-object v0, p1, Lbei;->b:Ljava/util/List;

    if-nez v0, :cond_2

    .line 2991
    :cond_0
    iget-object v0, p0, Lbbk$8;->a:Lcma;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2995
    :cond_1
    :goto_0
    return-void

    .line 2993
    :cond_2
    iget-object v0, p1, Lbei;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lbbk$8;->b:I

    if-le v0, v2, :cond_3

    .line 2994
    iget-object v0, p0, Lbbk$8;->a:Lcma;

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "invalid size"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2995
    const-string/jumbo v0, "getUnreadCommentListCount onException "

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "size invalid"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3029
    :cond_3
    if-nez p1, :cond_4

    move-object v0, v1

    .line 2998
    :goto_1
    iget-object v1, p0, Lbbk$8;->a:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 3032
    :cond_4
    new-instance v2, Lbgh;

    invoke-direct {v2}, Lbgh;-><init>()V

    .line 3033
    iget-object v0, p1, Lbei;->a:Lbdd;

    invoke-static {v0}, Lbfb;->a(Lbdd;)Lbfb;

    move-result-object v0

    iput-object v0, v2, Lbgh;->a:Lbfb;

    .line 3034
    iget-object v0, p1, Lbei;->b:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lbei;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3035
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p1, Lbei;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v2, Lbgh;->b:Ljava/util/List;

    .line 3036
    iget-object v0, p1, Lbei;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbej;

    .line 4044
    if-nez v0, :cond_6

    move-object v0, v1

    .line 3038
    :goto_3
    if-eqz v0, :cond_5

    .line 3041
    iget-object v3, v2, Lbgh;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4047
    :cond_6
    new-instance v3, Lbgi;

    invoke-direct {v3}, Lbgi;-><init>()V

    .line 4048
    iget-object v5, v0, Lbej;->a:Ljava/lang/Long;

    .line 5044
    invoke-static {v5, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 4048
    iput-wide v6, v3, Lbgi;->a:J

    .line 4049
    iget-object v5, v0, Lbej;->b:Ljava/lang/Long;

    .line 6044
    invoke-static {v5, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 4049
    iput-wide v6, v3, Lbgi;->b:J

    .line 4050
    iget-object v5, v0, Lbej;->c:Ljava/lang/Integer;

    .line 7033
    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v5

    .line 4050
    iput v5, v3, Lbgi;->c:I

    .line 4051
    iget-object v5, v0, Lbej;->d:Ljava/lang/String;

    iput-object v5, v3, Lbgi;->d:Ljava/lang/String;

    .line 4052
    iget-object v5, v0, Lbej;->e:Ljava/lang/Long;

    .line 7044
    invoke-static {v5, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 4052
    iput-wide v6, v3, Lbgi;->e:J

    .line 4053
    iget-object v0, v0, Lbej;->f:Ljava/lang/String;

    iput-object v0, v3, Lbgi;->f:Ljava/lang/String;

    move-object v0, v3

    .line 4054
    goto :goto_3

    :cond_7
    move-object v0, v2

    .line 3044
    goto :goto_1
.end method
