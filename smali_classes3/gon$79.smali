.class public final Lgon$79;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lgjw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lgon;


# direct methods
.method public constructor <init>(Lgon;Lcma;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 3996
    iput-object p1, p0, Lgon$79;->d:Lgon;

    iput-object p2, p0, Lgon$79;->a:Lcma;

    iput-object p3, p0, Lgon$79;->b:Ljava/lang/String;

    iput-object p4, p0, Lgon$79;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 4021
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "getLinkShareAcl: spaceId:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lgon$79;->b:Ljava/lang/String;

    .line 4022
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", folderId:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lgon$79;->c:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4021
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4023
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    .line 4024
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 4023
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4025
    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 4016
    iget-object v0, p0, Lgon$79;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4017
    invoke-direct {p0, p1, p2, p3}, Lgon$79;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4018
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

    .line 3996
    check-cast p1, Lgjw;

    .line 4999
    if-eqz p1, :cond_0

    iget-object v0, p1, Lgjw;->a:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 5000
    :cond_0
    iget-object v0, p0, Lgon$79;->a:Lcma;

    const-string/jumbo v1, "500"

    const-string/jumbo v2, "data error"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 5001
    const-string/jumbo v0, "(result is null)"

    invoke-direct {p0, v0, v3, v3}, Lgon$79;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5007
    :goto_0
    return-void

    .line 5005
    :cond_1
    iget-object v0, p1, Lgjw;->a:Ljava/lang/Long;

    .line 5044
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 5005
    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 5006
    iget-object v0, p0, Lgon$79;->a:Lcma;

    invoke-static {p1}, Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;->fromIDLModel(Lgjw;)Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 5010
    :cond_2
    iget-object v0, p0, Lgon$79;->a:Lcma;

    iget-object v1, p1, Lgjw;->a:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lgjw;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 5011
    iget-object v0, p1, Lgjw;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lgjw;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lgon$79;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
