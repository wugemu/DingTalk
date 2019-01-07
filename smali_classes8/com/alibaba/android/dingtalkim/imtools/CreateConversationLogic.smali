.class public Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic;
.super Ljava/lang/Object;
.source "CreateConversationLogic.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "objects"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 35
    const/4 v4, 0x0

    aget-object v1, p2, v4

    check-cast v1, Landroid/content/Intent;

    .line 36
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "choose_user_identities"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 37
    .local v3, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-string/jumbo v4, "im_navigator_from"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "statisticFrom":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 39
    new-instance v0, Ldji;

    invoke-direct {v0, p1}, Ldji;-><init>(Landroid/app/Activity;)V

    .line 40
    .local v0, "helper":Ldji;
    new-instance v4, Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;

    invoke-direct {v4, p0, p1, v2}, Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;-><init>(Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic;Landroid/app/Activity;Ljava/lang/String;)V

    .line 1176
    iput-object v4, v0, Ldji;->b:Ldca;

    .line 105
    invoke-virtual {v0, v3}, Ldji;->a(Ljava/util/List;)V

    .line 110
    .end local v0    # "helper":Ldji;
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method
