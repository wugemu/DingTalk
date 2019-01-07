.class final Lewm$1$1;
.super Ljava/lang/Object;
.source "TeleConfPushManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewm$1;->a(Lcjo$b;)V
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

.field final synthetic b:Lewm$1;


# direct methods
.method constructor <init>(Lewm$1;Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;)V
    .locals 0
    .param p1, "this$1"    # Lewm$1;

    .prologue
    .line 119
    iput-object p1, p0, Lewm$1$1;->b:Lewm$1;

    iput-object p2, p0, Lewm$1$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 119
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1123
    if-nez p1, :cond_0

    .line 1124
    new-instance p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 1125
    iget-object v0, p0, Lewm$1$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 1126
    iget-object v0, p0, Lewm$1$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->nickName:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 1129
    :cond_0
    iget-object v0, p0, Lewm$1$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->mediaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lewm$1$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->mediaId:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1131
    :try_start_0
    iget-object v0, p0, Lewm$1$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->mediaId:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    :goto_0
    iget-object v0, p0, Lewm$1$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1141
    iget-object v1, p0, Lewm$1$1;->b:Lewm$1;

    iget-object v1, v1, Lewm$1;->a:Lewm;

    invoke-static {v1}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v1

    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;ZI)V

    .line 1142
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1143
    iget-object v0, p0, Lewm$1$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->canSpeek:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1144
    iget-object v0, p0, Lewm$1$1;->b:Lewm$1;

    iget-object v0, v0, Lewm$1;->a:Lewm;

    invoke-static {v0}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v0

    iget-object v1, p0, Lewm$1$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v5, v4}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(JZZ)V

    .line 1149
    :cond_1
    :goto_1
    iget-object v0, p0, Lewm$1$1;->b:Lewm$1;

    iget-object v0, v0, Lewm$1;->a:Lewm;

    invoke-static {v0}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v0

    .line 2041
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->notifyDataSetChanged()V

    .line 119
    return-void

    .line 1133
    :catch_0
    move-exception v0

    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewm;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Transfer url exception"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    :cond_2
    iget-object v0, p0, Lewm$1$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->mediaId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    goto :goto_0

    .line 1146
    :cond_3
    iget-object v0, p0, Lewm$1$1;->b:Lewm$1;

    iget-object v0, v0, Lewm$1;->a:Lewm;

    invoke-static {v0}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v0

    iget-object v1, p0, Lewm$1$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v4, v4}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(JZZ)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 159
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewm;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "User "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lewm$1$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    .line 160
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " add fail "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    .line 159
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 155
    return-void
.end method
