.class public Lcom/alibaba/android/search/model/LocalContactChooseSingleModel;
.super Lcom/alibaba/android/search/model/LocalContactModel;
.source "LocalContactChooseSingleModel.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V
    .locals 1
    .param p1, "localContactObject"    # Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/android/search/model/LocalContactModel;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/alibaba/android/search/model/LocalContactChooseSingleModel;->mLocalContactObject:Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 34
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->LocalContactChooseSingle:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/LocalContactChooseSingleModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/LocalContactChooseSingleModel;->setChooseMode(I)V

    .line 36
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/LocalContactChooseSingleModel;->setUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 37
    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Activity;Landroid/view/View;)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 42
    const-string/jumbo v0, "search_click_type"

    const-string/jumbo v1, "type=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "mobilecontact"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Letd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method
