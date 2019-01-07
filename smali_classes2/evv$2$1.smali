.class final Levv$2$1;
.super Ljava/lang/Object;
.source "TeleConfPushListeners.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Levv$2;->a(Lcjo$b;)V
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
.field final synthetic a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

.field final synthetic b:Levv$2;


# direct methods
.method constructor <init>(Levv$2;Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;)V
    .locals 0
    .param p1, "this$1"    # Levv$2;

    .prologue
    .line 223
    iput-object p1, p0, Levv$2$1;->b:Levv$2;

    iput-object p2, p0, Levv$2$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 223
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1227
    if-nez p1, :cond_0

    .line 1228
    new-instance p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 1229
    iget-object v0, p0, Levv$2$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 1230
    iget-object v0, p0, Levv$2$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->nickName:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 1233
    :cond_0
    iget-object v0, p0, Levv$2$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->mediaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Levv$2$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->mediaId:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1235
    :try_start_0
    iget-object v0, p0, Levv$2$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->mediaId:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1244
    :goto_0
    iget-object v0, p0, Levv$2$1;->b:Levv$2;

    iget-object v0, v0, Levv$2;->a:Levv;

    invoke-static {v0}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Z)V

    .line 1245
    iget-object v0, p0, Levv$2$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1246
    iget-object v1, p0, Levv$2$1;->b:Levv$2;

    iget-object v1, v1, Levv$2;->a:Levv;

    invoke-static {v1}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v1

    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;ZI)V

    .line 1247
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1248
    iget-object v0, p0, Levv$2$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->canSpeek:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1249
    iget-object v0, p0, Levv$2$1;->b:Levv$2;

    iget-object v0, v0, Levv$2;->a:Levv;

    invoke-static {v0}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v0

    iget-object v1, p0, Levv$2$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(JZZ)V

    .line 1254
    :cond_1
    :goto_1
    iget-object v0, p0, Levv$2$1;->b:Levv$2;

    iget-object v0, v0, Levv$2;->a:Levv;

    invoke-static {v0}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Levv$2$1;->b:Levv$2;

    iget-object v1, v1, Levv$2;->a:Levv;

    invoke-static {v1}, Levv;->g(Levv;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1255
    invoke-static {}, Lewg;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1256
    invoke-static {}, Levv;->a()Ljava/lang/String;

    .line 1258
    iget-object v0, p0, Levv$2$1;->b:Levv$2;

    iget-object v0, v0, Levv$2;->a:Levv;

    invoke-static {v0}, Levv;->f(Levv;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-result-object v0

    sget v1, Leuj$l;->conf_txt_guide_add_member_tip:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Levv$2$1;->b:Levv$2;

    iget-object v3, v3, Levv$2;->a:Levv;

    invoke-static {v3}, Levv;->g(Levv;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1259
    iget-object v1, p0, Levv$2$1;->b:Levv$2;

    iget-object v1, v1, Levv$2;->a:Levv;

    invoke-static {v1}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/String;Z)V

    .line 1262
    :cond_2
    iget-object v0, p0, Levv$2$1;->b:Levv$2;

    iget-object v0, v0, Levv$2;->a:Levv;

    invoke-static {v0}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->notifyDataSetChanged()V

    .line 223
    return-void

    .line 1236
    :catch_0
    move-exception v0

    .line 1237
    iget-object v1, p0, Levv$2$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->mediaId:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 1238
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1241
    :cond_3
    iget-object v0, p0, Levv$2$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->mediaId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    goto/16 :goto_0

    .line 1251
    :cond_4
    iget-object v0, p0, Levv$2$1;->b:Levv$2;

    iget-object v0, v0, Levv$2;->a:Levv;

    invoke-static {v0}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v0

    iget-object v1, p0, Levv$2$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v5, v5}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(JZZ)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 274
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 269
    return-void
.end method
