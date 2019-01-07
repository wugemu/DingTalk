.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$9;
.super Ljava/lang/Object;
.source "ChatMsgBaseActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->b(Lcom/alibaba/wukong/im/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .prologue
    .line 706
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$9;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$9;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$9;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 740
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "reeditRecallMsg getMessage failed, error="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 706
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 706
    move-object v3, p1

    check-cast v3, Lcom/alibaba/wukong/im/Message;

    .line 1709
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$9;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1712
    if-nez v3, :cond_1

    .line 1713
    const-string/jumbo v0, "im"

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "reeditRecallMsg getMessage with null"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$9;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$9;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$9;->b:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1724
    :cond_0
    :goto_0
    return-void

    .line 1719
    :cond_1
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->shieldStatus()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1720
    :cond_2
    const-string/jumbo v0, "im"

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "reeditRecallMsg getMessage is recall"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$9;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$9;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$9;->b:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 1727
    :cond_3
    invoke-static {}, Ldoo;->a()Ldoo;

    move-result-object v0

    sget-object v1, Ldoq$a;->t:Lcng;

    invoke-virtual {v0, v1}, Ldoo;->a(Lcng;)Ldon;

    move-result-object v0

    .line 1728
    if-eqz v0, :cond_0

    .line 1729
    instance-of v1, v0, Ldpi;

    if-eqz v1, :cond_4

    move-object v1, v0

    .line 1730
    check-cast v1, Ldpi;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$9;->a:Ljava/lang/String;

    .line 2091
    iput-object v2, v1, Ldpi;->a:Ljava/lang/String;

    move-object v1, v0

    .line 1731
    check-cast v1, Ldpi;

    .line 2095
    iput-boolean v4, v1, Ldpi;->b:Z

    move-object v1, v0

    .line 1732
    check-cast v1, Ldpi;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$9;->b:Ljava/util/HashMap;

    .line 2099
    iput-object v2, v1, Ldpi;->c:Ljava/util/HashMap;

    .line 1734
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$9;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$9;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->J:J

    invoke-interface/range {v0 .. v6}, Ldon;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V

    goto :goto_0
.end method
