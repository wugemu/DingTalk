.class final Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;
.super Ljava/lang/Object;
.source "TowerSelectActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->b()V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

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
    .line 412
    check-cast p1, Ljava/util/List;

    .line 1415
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->a(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;Ljava/util/List;)Ljava/util/List;

    .line 1417
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2$1;-><init>(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1434
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->k(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Lfgw;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->m(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfgw;->a(Ljava/util/List;)V

    .line 1435
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->p(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V

    .line 1437
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .line 1541
    iget-object v1, v0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    if-eqz v1, :cond_1

    .line 1542
    iget-object v1, v0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->b:Lfgw;

    .line 2050
    iget-object v1, v1, Lfgf;->b:Ljava/util/List;

    .line 1542
    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->b:Lfgw;

    .line 3050
    iget-object v1, v1, Lfgf;->b:Ljava/util/List;

    .line 1542
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1543
    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    .line 1545
    :cond_2
    iget-object v1, v0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 1546
    iget-object v1, v0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v2, Lezg$g;->icon_empty_people:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 1547
    iget-object v1, v0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v2, Lezg$l;->empty_no_people:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 1548
    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyDescription(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 447
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->q(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V

    .line 449
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 443
    return-void
.end method
