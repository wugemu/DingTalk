.class public final Lfll$1;
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
        "Ljava/lang/String;",
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
    .line 223
    iput-object p1, p0, Lfll$1;->a:Lfll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 223
    check-cast p1, Ljava/lang/String;

    .line 1227
    iget-object v0, p0, Lfll$1;->a:Lfll;

    invoke-static {v0}, Lfll;->a(Lfll;)Lflk;

    move-result-object v0

    invoke-interface {v0, p1}, Lflk;->c(Ljava/lang/String;)V

    .line 223
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
    .line 237
    iget-object v0, p0, Lfll$1;->a:Lfll;

    invoke-static {v0}, Lfll;->a(Lfll;)Lflk;

    move-result-object v0

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lfll$1;->a:Lfll;

    invoke-static {v0}, Lfll;->a(Lfll;)Lflk;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lflk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string/jumbo v0, "ManagerOrgPresenter"

    const-string/jumbo v1, "Org info err,code:%s,reason:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 233
    return-void
.end method
