.class final Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$2;
.super Ljava/lang/Object;
.source "SpaceLinkForwardHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->createSpaceLink(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
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
        "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$2;->d:Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$2;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 124
    check-cast p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    .line 1127
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$2;->d:Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$2;->b:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$2;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->access$100(Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 124
    :cond_0
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
    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$2;->d:Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->access$200(Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 140
    sget v0, Lctk$i;->space_send_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$2;->d:Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;

    const-string/jumbo v1, "share2SingleConversationWithAppend: createSpaceLink"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$2;->d:Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;

    .line 142
    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->access$300(Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$2;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    .line 141
    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->access$400(Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 135
    return-void
.end method
