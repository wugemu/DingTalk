.class public Lcom/alibaba/android/search/model/NonRelationO2OContactSingleModel;
.super Lcom/alibaba/android/search/model/NonRelationO2OContactModel;
.source "NonRelationO2OContactSingleModel.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 1
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/model/NonRelationO2OContactModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/NonRelationO2OContactSingleModel;->setChooseMode(I)V

    .line 34
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
    .line 38
    const-string/jumbo v0, "search_click_type"

    const-string/jumbo v1, "type=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "dingfriend"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Letd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    return-void
.end method
