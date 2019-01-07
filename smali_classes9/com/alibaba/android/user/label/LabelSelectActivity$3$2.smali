.class final Lcom/alibaba/android/user/label/LabelSelectActivity$3$2;
.super Ljava/lang/Object;
.source "LabelSelectActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/label/LabelSelectActivity$3;->run()V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/label/LabelSelectActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/label/LabelSelectActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/label/LabelSelectActivity$3;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$3$2;->a:Lcom/alibaba/android/user/label/LabelSelectActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 336
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;

    .line 1339
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$3$2;->a:Lcom/alibaba/android/user/label/LabelSelectActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/label/LabelSelectActivity$3;->a:Lcom/alibaba/android/user/label/LabelSelectActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;->labelGroups:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1340
    :cond_0
    :goto_0
    return-void

    .line 1343
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$3$2;->a:Lcom/alibaba/android/user/label/LabelSelectActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/label/LabelSelectActivity$3;->a:Lcom/alibaba/android/user/label/LabelSelectActivity;

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;->canManage:Z

    invoke-static {v0, v1}, Lcom/alibaba/android/user/label/LabelSelectActivity;->a(Lcom/alibaba/android/user/label/LabelSelectActivity;Z)Z

    .line 1344
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$3$2;->a:Lcom/alibaba/android/user/label/LabelSelectActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/label/LabelSelectActivity$3;->a:Lcom/alibaba/android/user/label/LabelSelectActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->supportInvalidateOptionsMenu()V

    .line 1346
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$3$2;->a:Lcom/alibaba/android/user/label/LabelSelectActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/label/LabelSelectActivity$3;->a:Lcom/alibaba/android/user/label/LabelSelectActivity;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;->labelGroups:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/label/LabelSelectActivity;->a(Lcom/alibaba/android/user/label/LabelSelectActivity;Ljava/util/List;)V

    .line 1347
    invoke-static {}, Lcom/alibaba/android/user/label/LabelSelectActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "showLabels from remote"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1349
    invoke-static {}, Lcom/alibaba/android/user/label/LabelSelectActivity;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 1350
    new-instance v1, Lcom/alibaba/android/user/label/LabelSelectActivity$3$2$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/label/LabelSelectActivity$3$2$1;-><init>(Lcom/alibaba/android/user/label/LabelSelectActivity$3$2;Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 367
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-static {}, Lcom/alibaba/android/user/label/LabelSelectActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "getLabelGroupModels err %s,%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 363
    return-void
.end method
