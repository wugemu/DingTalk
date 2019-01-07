.class public final Lgom$1;
.super Lcmi;
.source "CloudPrintRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lgjs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lgom;


# direct methods
.method public constructor <init>(Lgom;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgom;

    .prologue
    .line 38
    iput-object p1, p0, Lgom$1;->b:Lgom;

    iput-object p2, p0, Lgom$1;->a:Lcma;

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
    .line 48
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "CloudPrintRPC"

    const-string/jumbo v2, "isUserCanPrint"

    .line 49
    invoke-static {v2, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lgom$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lgom$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 38
    check-cast p1, Lgjs;

    .line 1041
    iget-object v0, p0, Lgom$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lgom$1;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 38
    :cond_0
    return-void
.end method
