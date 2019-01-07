.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$101;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lddw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 3308
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$101;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V
    .locals 4
    .param p1, "botModelObject"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3312
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$101;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->G(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$101;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->G(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botUid:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3313
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$101;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .line 3314
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$101;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    if-eqz v0, :cond_0

    .line 3315
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$101;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$101;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    move-result-object v1

    invoke-static {v1}, Lddw;->a(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldvw;->a(Ljava/lang/String;)V

    .line 3318
    :cond_0
    return-void
.end method
