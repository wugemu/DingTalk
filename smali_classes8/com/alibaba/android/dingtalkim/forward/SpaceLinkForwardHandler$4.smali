.class final Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$4;
.super Ljava/lang/Object;
.source "SpaceLinkForwardHandler.java"

# interfaces
.implements Ldiz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->sendAppendText(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

.field final synthetic c:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$4;->d:Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$4;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$4;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$4;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/Message;)V
    .locals 4
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$4;->d:Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$4;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$4;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$4;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->access$600(Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;)V

    .line 212
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;I)V
    .locals 0
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "progress"    # I

    .prologue
    .line 224
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 216
    sget v0, Lctk$i;->space_send_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 217
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$4;->d:Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$4;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->access$200(Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 218
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$4;->d:Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;

    const-string/jumbo v1, "sendAppendText: sendText"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$4;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$4;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 219
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    move-object v4, p2

    move-object v5, p3

    .line 218
    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->access$400(Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method
