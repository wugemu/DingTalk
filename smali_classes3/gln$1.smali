.class final Lgln$1;
.super Lgqq;
.source "SpaceTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgln;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgln;


# direct methods
.method constructor <init>(Lgln;)V
    .locals 0
    .param p1, "this$0"    # Lgln;

    .prologue
    .line 66
    iput-object p1, p0, Lgln$1;->a:Lgln;

    invoke-direct {p0}, Lgqq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 69
    iget-object v0, p0, Lgln$1;->a:Lgln;

    .line 1042
    invoke-virtual {v0}, Lgln;->b()V

    .line 70
    return-void
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 66
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lgln$1;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 74
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceTransferManager"

    const-string/jumbo v2, "SpaceTransferManager.transfer.checkAccountLogin"

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string/jumbo v0, "2016"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lgln$1;->a:Lgln;

    .line 2042
    iget-object v0, v0, Lgln;->c:Lcma;

    .line 77
    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lgln$1;->a:Lgln;

    .line 3042
    iget-object v0, v0, Lgln;->c:Lcma;

    .line 78
    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method
