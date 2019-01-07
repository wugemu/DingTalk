.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$121;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ldnu$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aJ()V
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
    .line 4219
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$121;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;)V
    .locals 7
    .param p1, "messageId"    # J
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 4223
    if-eqz p3, :cond_0

    .line 4224
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4225
    .local v0, "targetUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "dtmd"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "/page/profile"

    .line 4226
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$121;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 4227
    invoke-static {v1}, Ldjl;->k(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4229
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "intent_key_forbidden_add_friend"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 4233
    .end local v0    # "targetUri":Landroid/net/Uri;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$121;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$121;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$121$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$121$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$121;)V

    move-object v1, p3

    move-wide v2, p1

    invoke-static/range {v1 .. v6}, Ldoi;->a(Ljava/lang/String;JLcom/alibaba/wukong/im/Conversation;Landroid/content/Context;Ldoi$a;)V

    .line 4241
    return-void
.end method
