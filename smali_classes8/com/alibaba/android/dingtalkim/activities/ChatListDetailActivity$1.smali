.class final Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity$1;
.super Ljava/lang/Object;
.source "ChatListDetailActivity.java"

# interfaces
.implements Ldnu$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;)V
    .locals 9
    .param p1, "messageId"    # J
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;)Ldoj;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p3

    move-wide v2, p1

    invoke-static/range {v1 .. v7}, Ldoi;->a(Ljava/lang/String;JLcom/alibaba/wukong/im/Conversation;Landroid/content/Context;Ldoi$b;Ldoi$a;)V

    goto :goto_0
.end method
