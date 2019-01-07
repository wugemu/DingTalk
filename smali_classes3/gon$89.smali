.class public final Lgon$89;
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
        "Lgig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lgon;


# direct methods
.method public constructor <init>(Lgon;Lcma;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 4300
    iput-object p1, p0, Lgon$89;->c:Lgon;

    iput-object p2, p0, Lgon$89;->a:Lcma;

    iput-object p3, p0, Lgon$89;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 4308
    .line 5313
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "SpaceRPC.getLastSyncTime"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ", spaceId: "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lgon$89;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5314
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4309
    iget-object v0, p0, Lgon$89;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4310
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 4300
    check-cast p1, Lgig;

    .line 6303
    iget-object v1, p0, Lgon$89;->a:Lcma;

    .line 7017
    if-nez p1, :cond_0

    .line 7018
    const/4 v0, 0x0

    .line 6303
    :goto_0
    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 4300
    return-void

    .line 7021
    :cond_0
    new-instance v0, Lgny;

    invoke-direct {v0}, Lgny;-><init>()V

    .line 7022
    iget-object v2, p1, Lgig;->a:Ljava/lang/Long;

    .line 7044
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 7022
    iput-wide v2, v0, Lgny;->a:J

    goto :goto_0
.end method
