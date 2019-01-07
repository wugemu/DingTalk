.class final Lfjq$4;
.super Ljava/lang/Object;
.source "LocalContactViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfjq;->b(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V
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
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

.field final synthetic c:Lfjq;


# direct methods
.method constructor <init>(Lfjq;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V
    .locals 0
    .param p1, "this$0"    # Lfjq;

    .prologue
    .line 351
    iput-object p1, p0, Lfjq$4;->c:Lfjq;

    iput-object p2, p0, Lfjq$4;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p3, p0, Lfjq$4;->b:Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

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
    .line 351
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1354
    iget-object v0, p0, Lfjq$4;->c:Lfjq;

    invoke-static {v0}, Lfjq;->h(Lfjq;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1357
    iget-object v0, p0, Lfjq$4;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lfjq$4;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 1360
    :cond_0
    if-eqz p1, :cond_1

    .line 1363
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 1365
    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 1366
    iget-object v1, p0, Lfjq$4;->b:Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 1367
    iget-object v1, p0, Lfjq$4;->b:Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 1368
    iget-object v1, p0, Lfjq$4;->c:Lfjq;

    invoke-static {v1}, Lfjq;->i(Lfjq;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->removeChooseObject(Ljava/lang/Object;)Z

    .line 1369
    iget-object v1, p0, Lfjq$4;->c:Lfjq;

    invoke-static {v1}, Lfjq;->j(Lfjq;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->addChooseObject(Ljava/lang/Object;)Z

    .line 351
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 379
    iget-object v0, p0, Lfjq$4;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lfjq$4;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 382
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 375
    return-void
.end method
