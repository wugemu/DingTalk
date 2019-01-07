.class final Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity$2;
.super Ljava/lang/Object;
.source "TeleConfAlarmActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 134
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;)Leun;

    move-result-object v3

    if-nez v3, :cond_0

    .line 158
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;)Leun;

    move-result-object v3

    invoke-virtual {v3}, Leun;->getCount()I

    move-result v0

    .line 138
    .local v0, "count":I
    if-le v0, v4, :cond_2

    .line 139
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/content/Context;)V

    .line 157
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->finish()V

    goto :goto_0

    .line 140
    :cond_2
    if-ne v0, v4, :cond_1

    .line 141
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;)Leun;

    move-result-object v3

    invoke-virtual {v3, p3}, Leun;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 142
    .local v2, "recordItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    if-eqz v2, :cond_1

    .line 143
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 145
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 146
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    .line 1109
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 146
    iput-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 149
    :cond_3
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->phoneNum:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 150
    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isUserActive()Z

    move-result v3

    iput-boolean v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    .line 151
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 152
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 154
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;

    invoke-static {v3, v1}, Lewb;->b(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    goto :goto_1
.end method
