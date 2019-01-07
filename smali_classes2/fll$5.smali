.class public final Lfll$5;
.super Ljava/lang/Object;
.source "ManagerOrgPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfll;


# direct methods
.method public constructor <init>(Lfll;)V
    .locals 0
    .param p1, "this$0"    # Lfll;

    .prologue
    .line 485
    iput-object p1, p0, Lfll$5;->a:Lfll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 485
    check-cast p1, Ljava/lang/Integer;

    .line 1488
    iget-object v0, p0, Lfll$5;->a:Lfll;

    invoke-static {v0}, Lfll;->a(Lfll;)Lflk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1489
    iget-object v0, p0, Lfll$5;->a:Lfll;

    invoke-static {v0}, Lfll;->a(Lfll;)Lflk;

    move-result-object v0

    .line 2033
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 1489
    invoke-interface {v0, v1}, Lflk;->a(I)V

    .line 485
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 500
    const-string/jumbo v0, "ManagerOrgPresenter"

    const-string/jumbo v1, "loadOrgCloudSearchType exception"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 496
    return-void
.end method
