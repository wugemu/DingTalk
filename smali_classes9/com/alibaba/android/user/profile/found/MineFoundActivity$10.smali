.class final Lcom/alibaba/android/user/profile/found/MineFoundActivity$10;
.super Ljava/lang/Object;
.source "MineFoundActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/found/MineFoundActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/user/model/OrgScoreDataObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$10;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 362
    check-cast p1, Lcom/alibaba/android/user/model/OrgScoreDataObject;

    .line 1366
    if-nez p1, :cond_0

    .line 1367
    iget-object v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$10;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v1, v0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a(Lcom/alibaba/android/user/profile/found/MineFoundActivity;II)V

    .line 1368
    :goto_0
    return-void

    .line 1371
    :cond_0
    iget-object v1, p1, Lcom/alibaba/android/user/model/OrgScoreDataObject;->dingIndexObject:Lcom/alibaba/android/user/model/DingIndexObject;

    if-nez v1, :cond_1

    .line 1372
    :goto_1
    iget-wide v2, p1, Lcom/alibaba/android/user/model/OrgScoreDataObject;->increment:D

    double-to-int v1, v2

    .line 1374
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$10;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v2, v0, v1}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a(Lcom/alibaba/android/user/profile/found/MineFoundActivity;II)V

    goto :goto_0

    .line 1371
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/user/model/OrgScoreDataObject;->dingIndexObject:Lcom/alibaba/android/user/model/DingIndexObject;

    iget-wide v0, v0, Lcom/alibaba/android/user/model/DingIndexObject;->idxTotal:D

    double-to-int v0, v0

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 384
    const-string/jumbo v0, "MineFoundActivity"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Error loadOrgScoreData : "

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$10;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0, v3, v3}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a(Lcom/alibaba/android/user/profile/found/MineFoundActivity;II)V

    .line 386
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 380
    return-void
.end method
