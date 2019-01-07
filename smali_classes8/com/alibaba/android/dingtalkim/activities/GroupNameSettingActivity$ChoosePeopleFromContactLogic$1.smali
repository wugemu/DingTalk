.class final Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;
.super Ljava/lang/Object;
.source "GroupNameSettingActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic;->doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V
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
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:[Ljava/lang/Long;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;[Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;->c:Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;->b:[Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 179
    check-cast p1, Ljava/util/List;

    .line 1182
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1183
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v2

    .line 1184
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;->c:Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic;->inputTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;->c:Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic;

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic;->inputTitle:Ljava/lang/String;

    .line 1187
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    .line 1188
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->createEnterprise:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/util/List;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;)Lcom/alibaba/wukong/im/Message;

    move-result-object v4

    .line 1192
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1193
    const-string/jumbo v0, "id"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;->c:Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic;->orgId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    const-string/jumbo v0, "icon"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;->c:Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic;->avatar:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    const-string/jumbo v0, "use_enterprise_icon"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;->c:Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic;->useEnterpriseIcon:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 1197
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;)V

    const-class v6, Lcom/alibaba/wukong/Callback;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v1, v5, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    const/4 v5, 0x2

    const-wide/16 v6, 0x2

    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;->b:[Ljava/lang/Long;

    invoke-interface/range {v0 .. v9}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;IJLjava/util/Map;[Ljava/lang/Long;)V

    .line 179
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 230
    return-void
.end method
