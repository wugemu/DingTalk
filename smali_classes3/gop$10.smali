.class final Lgop$10;
.super Lcmi;
.source "SpaceShareRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgop;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lgis;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcma;)V
    .locals 0

    .prologue
    .line 794
    iput-object p1, p0, Lgop$10;->a:Ljava/lang/String;

    iput-object p2, p0, Lgop$10;->b:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 815
    iget-object v0, p0, Lgop$10;->b:Lcma;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lgop$10;->b:Lcma;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 818
    :cond_0
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceShareRPC"

    const-string/jumbo v2, "getMemberBySpaceId"

    .line 819
    invoke-static {v2, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 818
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 794
    check-cast p1, Lgis;

    .line 1797
    if-eqz p1, :cond_2

    iget-object v0, p1, Lgis;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lgis;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lgis;->d:Lgiq;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lgis;->d:Lgiq;

    iget-object v0, v0, Lgiq;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1799
    iget-object v0, p1, Lgis;->d:Lgiq;

    iget-object v0, v0, Lgiq;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1800
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v1

    iget-object v2, p0, Lgop$10;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lfzv;->a(Ljava/lang/String;I)V

    .line 1801
    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    if-ne v0, v3, :cond_2

    .line 1802
    :cond_0
    iget-object v0, p0, Lgop$10;->b:Lcma;

    if-eqz v0, :cond_2

    .line 1803
    iget-object v0, p0, Lgop$10;->b:Lcma;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1804
    :cond_1
    :goto_0
    return-void

    .line 1808
    :cond_2
    iget-object v0, p0, Lgop$10;->b:Lcma;

    if-eqz v0, :cond_1

    .line 1809
    iget-object v0, p0, Lgop$10;->b:Lcma;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
