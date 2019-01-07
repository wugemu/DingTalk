.class final Lgon$27;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lgke;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:J

.field final synthetic d:Ljava/util/List;

.field final synthetic e:I

.field final synthetic f:J

.field final synthetic g:J

.field final synthetic h:Lgon;


# direct methods
.method constructor <init>(Lgon;Lcma;Ljava/util/List;JLjava/util/List;IJJ)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 2014
    iput-object p1, p0, Lgon$27;->h:Lgon;

    iput-object p2, p0, Lgon$27;->a:Lcma;

    iput-object p3, p0, Lgon$27;->b:Ljava/util/List;

    iput-wide p4, p0, Lgon$27;->c:J

    iput-object p6, p0, Lgon$27;->d:Ljava/util/List;

    iput p7, p0, Lgon$27;->e:I

    iput-wide p8, p0, Lgon$27;->f:J

    iput-wide p10, p0, Lgon$27;->g:J

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2039
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "addAclMembers: memberIds: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lgon$27;->d:Ljava/util/List;

    .line 2040
    invoke-static {v3}, Lgpr;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", memberType: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lgon$27;->e:I

    .line 2041
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", groupId: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v4, p0, Lgon$27;->f:J

    .line 2042
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, ", orgId: "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-wide v4, p0, Lgon$27;->g:J

    .line 2043
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2039
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2044
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    .line 2045
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 2044
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 2034
    iget-object v0, p0, Lgon$27;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    invoke-direct {p0, p1, p2, p3}, Lgon$27;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2036
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2014
    check-cast p1, Lgke;

    .line 3017
    if-eqz p1, :cond_0

    iget-object v0, p1, Lgke;->a:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 3018
    :cond_0
    iget-object v0, p0, Lgon$27;->a:Lcma;

    const-string/jumbo v1, "500"

    const-string/jumbo v2, "data error"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3019
    const-string/jumbo v0, "(result is null)"

    invoke-direct {p0, v0, v3, v3}, Lgon$27;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3025
    :goto_0
    return-void

    .line 3023
    :cond_1
    iget-object v0, p1, Lgke;->a:Ljava/lang/Long;

    .line 3044
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 3023
    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 3024
    iget-object v0, p0, Lgon$27;->a:Lcma;

    iget-object v1, p0, Lgon$27;->b:Ljava/util/List;

    iget-wide v4, p0, Lgon$27;->c:J

    move v3, v2

    move v6, v2

    invoke-static/range {v1 .. v6}, Lgnu;->a(Ljava/util/List;ZZJI)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 3028
    :cond_2
    iget-object v0, p0, Lgon$27;->a:Lcma;

    iget-object v1, p1, Lgke;->a:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lgke;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3029
    iget-object v0, p1, Lgke;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lgke;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lgon$27;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
