.class public final Ldhz$1;
.super Ljava/lang/Object;
.source "SendFileHandler.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldhz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic d:Ldhz;


# direct methods
.method public constructor <init>(Ldhz;Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Ldhz;

    .prologue
    .line 33
    iput-object p1, p0, Ldhz$1;->d:Ldhz;

    iput-object p2, p0, Ldhz$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;

    iput-object p3, p0, Ldhz$1;->b:Ljava/lang/String;

    iput-object p4, p0, Ldhz$1;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 48
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1036
    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Ldhz$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;->content:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Ldhz$1;->b:Ljava/lang/String;

    iget-object v12, p0, Ldhz$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;

    iget-object v12, v12, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;->linkUrl:Ljava/lang/String;

    iget-object v13, p0, Ldhz$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;

    iget-object v13, v13, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;->iconUrl:Ljava/lang/String;

    iget-object v14, p0, Ldhz$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;

    iget-object v14, v14, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;->title:Ljava/lang/String;

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;-><init>(Lcom/alibaba/wukong/im/Message;IIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->setIsAliFile(Z)V

    .line 1041
    invoke-static/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v1

    .line 1042
    iget-object v2, p0, Ldhz$1;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v1, v3}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->share2SingleConversation(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V

    .line 33
    return-void
.end method
