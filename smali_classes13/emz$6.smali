.class final Lemz$6;
.super Ljava/lang/Object;
.source "SearchAdapter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lemz;->a(Lcom/alibaba/android/search/model/BaseModel;Landroid/widget/CheckBox;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Lcom/alibaba/android/search/model/BaseModel;

.field final synthetic d:Lemz;


# direct methods
.method constructor <init>(Lemz;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/widget/CheckBox;Lcom/alibaba/android/search/model/BaseModel;)V
    .locals 0
    .param p1, "this$0"    # Lemz;

    .prologue
    .line 560
    iput-object p1, p0, Lemz$6;->d:Lemz;

    iput-object p2, p0, Lemz$6;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object p3, p0, Lemz$6;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Lemz$6;->c:Lcom/alibaba/android/search/model/BaseModel;

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
    .line 560
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1563
    iget-object v0, p0, Lemz$6;->d:Lemz;

    invoke-static {v0}, Lemz;->c(Lemz;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1564
    iget-object v0, p0, Lemz$6;->d:Lemz;

    invoke-static {v0}, Lemz;->c(Lemz;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 1566
    :cond_0
    if-nez p1, :cond_1

    .line 1567
    iget-object v0, p0, Lemz$6;->d:Lemz;

    iget-object v1, p0, Lemz$6;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, p0, Lemz$6;->b:Landroid/widget/CheckBox;

    iget-object v3, p0, Lemz$6;->c:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v3}, Lcom/alibaba/android/search/model/BaseModel;->getChooseMode()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lemz;->a(Lemz;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/widget/CheckBox;I)V

    .line 1568
    :goto_0
    return-void

    .line 1570
    :cond_1
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 1571
    iget-object v1, p0, Lemz$6;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1572
    iget-object v1, p0, Lemz$6;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 1574
    :cond_2
    iget-object v1, p0, Lemz$6;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 1575
    iget v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1576
    iget-object v1, p0, Lemz$6;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 1578
    :cond_3
    iget-object v1, p0, Lemz$6;->c:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/search/model/BaseModel;->setUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 1579
    iget-object v1, p0, Lemz$6;->d:Lemz;

    iget-object v2, p0, Lemz$6;->b:Landroid/widget/CheckBox;

    iget-object v3, p0, Lemz$6;->c:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v3}, Lcom/alibaba/android/search/model/BaseModel;->getChooseMode()I

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lemz;->a(Lemz;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/widget/CheckBox;I)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 589
    iget-object v0, p0, Lemz$6;->d:Lemz;

    invoke-static {v0}, Lemz;->c(Lemz;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lemz$6;->d:Lemz;

    invoke-static {v0}, Lemz;->c(Lemz;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 592
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 585
    return-void
.end method
