.class public final Lgon$18;
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
        "Lgqw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcma;

.field final synthetic e:Lgon;


# direct methods
.method public constructor <init>(Lgon;ILjava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 1638
    iput-object p1, p0, Lgon$18;->e:Lgon;

    iput p2, p0, Lgon$18;->a:I

    iput-object p3, p0, Lgon$18;->b:Ljava/lang/String;

    iput-object p4, p0, Lgon$18;->c:Ljava/lang/String;

    iput-object p5, p0, Lgon$18;->d:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1652
    iget-object v0, p0, Lgon$18;->d:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "createNewLikeWithMsgId"

    invoke-static {v1, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1638
    check-cast p1, Lgqw;

    .line 2641
    iget v0, p0, Lgon$18;->a:I

    if-nez v0, :cond_0

    .line 2643
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lth;->a(Ljava/lang/String;)Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    move-result-object v0

    iget-object v1, p0, Lgon$18;->b:Ljava/lang/String;

    iget-object v2, p0, Lgon$18;->c:Ljava/lang/String;

    iget-object v3, p1, Lgqw;->a:Ljava/lang/Long;

    .line 2644
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 2643
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->updateDentryModelLastCommentId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxv;)V

    .line 2647
    :cond_0
    iget-object v0, p0, Lgon$18;->d:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1638
    return-void
.end method
