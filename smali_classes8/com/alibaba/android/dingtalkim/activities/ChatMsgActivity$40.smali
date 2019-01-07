.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$40;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
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

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 8070
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$40;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$40;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 8085
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "show reply draft exception, code:  "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", msg"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8087
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 8070
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 8070
    move-object v3, p1

    check-cast v3, Lcom/alibaba/wukong/im/Message;

    .line 9073
    new-instance v0, Lcng;

    const/16 v1, 0x11

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Lcng;-><init>(ILjava/lang/String;)V

    .line 9074
    invoke-static {}, Ldoo;->a()Ldoo;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldoo;->a(Lcng;)Ldon;

    move-result-object v0

    .line 9075
    instance-of v1, v0, Ldpi;

    if-eqz v1, :cond_0

    .line 9076
    check-cast v0, Ldpi;

    .line 9077
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$40;->a:Ljava/lang/String;

    .line 9091
    iput-object v1, v0, Ldpi;->a:Ljava/lang/String;

    .line 9095
    const/4 v1, 0x0

    iput-boolean v1, v0, Ldpi;->b:Z

    .line 9079
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$40;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$40;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$40;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->J:J

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ldpi;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V

    .line 8070
    :cond_0
    return-void
.end method
