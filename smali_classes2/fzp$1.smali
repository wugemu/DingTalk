.class final Lfzp$1;
.super Lgqq;
.source "CSpaceSDKInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzp;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfzp;


# direct methods
.method constructor <init>(Lfzp;)V
    .locals 0
    .param p1, "this$0"    # Lfzp;

    .prologue
    .line 56
    iput-object p1, p0, Lfzp$1;->a:Lfzp;

    invoke-direct {p0}, Lgqq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Void;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 60
    iget-object v0, p0, Lfzp$1;->a:Lfzp;

    .line 1023
    const/4 v1, 0x0

    iput-boolean v1, v0, Lfzp;->a:Z

    .line 61
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "CSpaceSDKInvoker"

    const-string/jumbo v2, "CSpaceSDKInvoker handleAccountShouldRelogin success"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfzp$1;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 73
    iget-object v0, p0, Lfzp$1;->a:Lfzp;

    .line 2023
    const/4 v1, 0x0

    iput-boolean v1, v0, Lfzp;->a:Z

    .line 74
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "CSpaceSDKInvoker"

    const-string/jumbo v2, "CSpaceSDKInvoker handleAccountShouldRelogin"

    const/4 v3, 0x0

    .line 75
    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 68
    return-void
.end method
