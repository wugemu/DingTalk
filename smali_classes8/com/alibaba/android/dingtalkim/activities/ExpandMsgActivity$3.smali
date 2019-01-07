.class final Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$3;
.super Ljava/lang/Object;
.source "ExpandMsgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$3;->c:Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$3;->a:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$3;->b:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$3;->c:Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;J)J

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$3;->c:Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$3;->a:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$3;->b:Lcom/alibaba/wukong/im/Message;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$3;->c:Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;)J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Ldjm;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;J)V

    .line 87
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_image_view_send_task_double_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 88
    return-void
.end method
