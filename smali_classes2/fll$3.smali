.class public final Lfll$3;
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
        "Lcom/alibaba/android/user/model/OrgTrendDataObject;",
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
    .line 310
    iput-object p1, p0, Lfll$3;->a:Lfll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 310
    check-cast p1, Lcom/alibaba/android/user/model/OrgTrendDataObject;

    .line 1313
    if-eqz p1, :cond_0

    iget-object v0, p0, Lfll$3;->a:Lfll;

    invoke-static {v0}, Lfll;->a(Lfll;)Lflk;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1314
    :cond_0
    const-string/jumbo v0, "ManagerOrgPresenter"

    const-string/jumbo v1, "Load trend is null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1315
    :goto_0
    return-void

    .line 1318
    :cond_1
    iget-object v0, p0, Lfll$3;->a:Lfll;

    iget v1, p1, Lcom/alibaba/android/user/model/OrgTrendDataObject;->orgAuthLeve:I

    invoke-static {v0, v1}, Lfll;->b(Lfll;I)I

    .line 1319
    iget-object v0, p0, Lfll$3;->a:Lfll;

    iget v1, p1, Lcom/alibaba/android/user/model/OrgTrendDataObject;->orgRightLevel:I

    invoke-static {v0, v1}, Lfll;->c(Lfll;I)I

    .line 1320
    iget-object v0, p0, Lfll$3;->a:Lfll;

    invoke-static {v0}, Lfll;->a(Lfll;)Lflk;

    .line 1321
    iget-object v0, p0, Lfll$3;->a:Lfll;

    iget v1, p1, Lcom/alibaba/android/user/model/OrgTrendDataObject;->orgRightLevel:I

    invoke-static {v0, v1}, Lfll;->d(Lfll;I)V

    .line 1322
    const-string/jumbo v0, "ManagerOrgPresenter"

    const-string/jumbo v1, "Load trend suc,auth:%d,right:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lfll$3;->a:Lfll;

    .line 1323
    invoke-static {v3}, Lfll;->d(Lfll;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget v4, p1, Lcom/alibaba/android/user/model/OrgTrendDataObject;->orgRightLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1322
    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 333
    iget-object v0, p0, Lfll$3;->a:Lfll;

    invoke-static {v0}, Lfll;->a(Lfll;)Lflk;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lflk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string/jumbo v0, "ManagerOrgPresenter"

    const-string/jumbo v1, "Load trend err,code:%s,reason:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 329
    return-void
.end method
