.class final Lgon$29;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgon;->a(Ljava/util/List;JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lgkk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:J

.field final synthetic d:Lgon;


# direct methods
.method constructor <init>(Lgon;Lcma;Ljava/util/List;J)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 2125
    iput-object p1, p0, Lgon$29;->d:Lgon;

    iput-object p2, p0, Lgon$29;->a:Lcma;

    iput-object p3, p0, Lgon$29;->b:Ljava/util/List;

    iput-wide p4, p0, Lgon$29;->c:J

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
    .line 2150
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "deleteAclMembers: deleteMember: groupId: "

    aput-object v3, v2, v1

    const/4 v1, 0x1

    iget-wide v4, p0, Lgon$29;->c:J

    .line 2151
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string/jumbo v3, ", members.size: "

    aput-object v3, v2, v1

    const/4 v3, 0x3

    iget-object v1, p0, Lgon$29;->b:Ljava/util/List;

    if-nez v1, :cond_0

    const-string/jumbo v1, "null"

    .line 2152
    :goto_0
    aput-object v1, v2, v3

    .line 2150
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2153
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    .line 2154
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 2153
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    return-void

    .line 2151
    .end local v0    # "method":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lgon$29;->b:Ljava/util/List;

    .line 2152
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 2145
    iget-object v0, p0, Lgon$29;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    invoke-direct {p0, p1, p2, p3}, Lgon$29;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2147
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 2125
    check-cast p1, Lgkk;

    .line 3128
    if-eqz p1, :cond_0

    iget-object v0, p1, Lgkk;->a:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 3129
    :cond_0
    iget-object v0, p0, Lgon$29;->a:Lcma;

    const-string/jumbo v1, "2012"

    const-string/jumbo v2, "data error"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    const-string/jumbo v0, "(result is null)"

    invoke-direct {p0, v0, v3, v3}, Lgon$29;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3136
    :goto_0
    return-void

    .line 3134
    :cond_1
    iget-object v0, p1, Lgkk;->a:Ljava/lang/Long;

    .line 4044
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 3134
    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 3135
    iget-object v0, p0, Lgon$29;->a:Lcma;

    iget-object v1, p0, Lgon$29;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 3139
    :cond_2
    iget-object v0, p0, Lgon$29;->a:Lcma;

    iget-object v1, p1, Lgkk;->a:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lgkk;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3140
    iget-object v0, p1, Lgkk;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lgkk;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lgon$29;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
