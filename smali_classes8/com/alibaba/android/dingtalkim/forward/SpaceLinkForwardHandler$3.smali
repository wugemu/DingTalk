.class final Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$3;
.super Ljava/lang/Object;
.source "SpaceLinkForwardHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->sendSpaceLinkWithAppendText(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

.field final synthetic c:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$3;->e:Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$3;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$3;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$3;->c:Lcom/alibaba/wukong/im/Conversation;

    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataReceived(Ljava/lang/Object;)V
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$3;->e:Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$3;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$3;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$3;->c:Lcom/alibaba/wukong/im/Conversation;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$3;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->access$500(Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$3;->e:Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$3;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->access$200(Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 175
    sget v0, Lctk$i;->space_send_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 176
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$3;->e:Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;

    const-string/jumbo v1, "sendSpaceLinkWithAppendText: sendCustomMessage"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$3;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$3;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 177
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    .line 176
    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->access$400(Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 170
    return-void
.end method
