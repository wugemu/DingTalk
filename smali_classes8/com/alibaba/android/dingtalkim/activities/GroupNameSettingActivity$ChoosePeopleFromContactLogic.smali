.class public Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic;
.super Ljava/lang/Object;
.source "GroupNameSettingActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChoosePeopleFromContactLogic"
.end annotation


# instance fields
.field public avatar:Ljava/lang/String;

.field public inputTitle:Ljava/lang/String;

.field public orgId:Ljava/lang/String;

.field public useEnterpriseIcon:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "params"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 166
    if-eqz p1, :cond_0

    instance-of v6, p1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v6, :cond_0

    if-eqz p2, :cond_0

    array-length v6, p2

    if-eqz v6, :cond_0

    aget-object v6, p2, v7

    instance-of v6, v6, Landroid/content/Intent;

    if-nez v6, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    aget-object v2, p2, v7

    check-cast v2, Landroid/content/Intent;

    .local v2, "intent":Landroid/content/Intent;
    move-object v0, p1

    .line 170
    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 171
    .local v0, "dingtalkActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    const-string/jumbo v6, "choose_user_ids"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v5

    .line 172
    .local v5, "uids":[J
    if-eqz v5, :cond_0

    array-length v6, v5

    if-lez v6, :cond_0

    .line 173
    array-length v6, v5

    new-array v3, v6, [Ljava/lang/Long;

    .line 174
    .local v3, "oUidList":[Ljava/lang/Long;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v4, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_2

    .line 176
    aget-wide v6, v5, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v1

    .line 177
    aget-wide v6, v5, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 179
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    const-string/jumbo v6, "EVENTBUTLER"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v8, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;

    invoke-direct {v8, p0, v0, v3}, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;[Ljava/lang/Long;)V

    const-class v9, Lcma;

    invoke-interface {v6, v8, v9, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    invoke-virtual {v7, v4, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method
