.class final Lemz$5;
.super Ljava/lang/Object;
.source "SearchAdapter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lemz;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic b:Lcom/alibaba/android/search/model/BaseModel;

.field final synthetic c:Landroid/widget/CheckBox;

.field final synthetic d:Lemz;


# direct methods
.method constructor <init>(Lemz;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/android/search/model/BaseModel;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lemz;

    .prologue
    .line 509
    iput-object p1, p0, Lemz$5;->d:Lemz;

    iput-object p2, p0, Lemz$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object p3, p0, Lemz$5;->b:Lcom/alibaba/android/search/model/BaseModel;

    iput-object p4, p0, Lemz$5;->c:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 509
    check-cast p1, Ljava/util/List;

    .line 1512
    iget-object v0, p0, Lemz$5;->d:Lemz;

    invoke-static {v0}, Lemz;->c(Lemz;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1513
    iget-object v0, p0, Lemz$5;->d:Lemz;

    invoke-static {v0}, Lemz;->c(Lemz;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 1515
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1516
    :cond_1
    :goto_0
    return-void

    .line 1519
    :cond_2
    iget-object v1, p0, Lemz$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 1520
    iget-object v0, p0, Lemz$5;->d:Lemz;

    iget-object v1, p0, Lemz$5;->b:Lcom/alibaba/android/search/model/BaseModel;

    iget-object v2, p0, Lemz$5;->c:Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2}, Lemz;->a(Lemz;Lcom/alibaba/android/search/model/BaseModel;Landroid/widget/CheckBox;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 530
    iget-object v0, p0, Lemz$5;->d:Lemz;

    invoke-static {v0}, Lemz;->c(Lemz;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lemz$5;->d:Lemz;

    invoke-static {v0}, Lemz;->c(Lemz;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 533
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 526
    return-void
.end method
