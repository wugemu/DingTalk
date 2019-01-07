.class public final Lgon$46;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lgon;


# direct methods
.method public constructor <init>(Lgon;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 2661
    iput-object p1, p0, Lgon$46;->b:Lgon;

    iput-object p2, p0, Lgon$46;->a:Lcma;

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
    .line 2669
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceRPC"

    const-string/jumbo v2, "getIndustryOperationUrl"

    invoke-static {v2, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2670
    iget-object v0, p0, Lgon$46;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2671
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 2661
    check-cast p1, Ljava/lang/String;

    .line 3664
    iget-object v0, p0, Lgon$46;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2661
    return-void
.end method
