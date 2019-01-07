.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$118;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aE()V
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
        "Ldsr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 3912
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$118;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 3912
    check-cast p1, Ldsr;

    .line 4915
    if-eqz p1, :cond_2

    iget-object v0, p1, Ldsr;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p1, Ldsr;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4916
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$118;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->W(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 4917
    iget-object v0, p1, Ldsr;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Ldsr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4918
    iget-object v0, p1, Ldsr;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    .line 4919
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->content:Lcom/alibaba/wukong/idl/im/models/ContentModel;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->content:Lcom/alibaba/wukong/idl/im/models/ContentModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/ContentModel;->textContent:Lcom/alibaba/wukong/idl/im/models/TextContentModel;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->content:Lcom/alibaba/wukong/idl/im/models/ContentModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/ContentModel;->textContent:Lcom/alibaba/wukong/idl/im/models/TextContentModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/TextContentModel;->text:Ljava/lang/String;

    .line 4921
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4925
    :cond_0
    :goto_0
    return-void

    .line 4924
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$118;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->content:Lcom/alibaba/wukong/idl/im/models/ContentModel;

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/ContentModel;->textContent:Lcom/alibaba/wukong/idl/im/models/TextContentModel;

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/TextContentModel;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$118;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->p:Lcom/alibaba/wukong/im/MessageListener;

    invoke-static {v1, v0, v2}, Lddq;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Lcom/alibaba/wukong/im/MessageListener;)V

    goto :goto_0

    .line 4928
    :cond_2
    const-string/jumbo v1, "im"

    const/4 v2, 0x0

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "check o2o status suc cid:"

    aput-object v0, v3, v5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$118;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$118;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v4

    const/4 v0, 0x2

    const-string/jumbo v4, "model is "

    aput-object v4, v3, v0

    const/4 v4, 0x3

    if-nez p1, :cond_4

    const-string/jumbo v0, "null"

    :goto_2
    aput-object v0, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, " null\uff0c"

    goto :goto_1

    :cond_4
    iget-object v0, p1, Ldsr;->a:Ljava/lang/Boolean;

    .line 5022
    invoke-static {v0, v5}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 4928
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3934
    const-string/jumbo v1, "im"

    const/4 v2, 0x0

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v4, "check o2o status fail cid:"

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$118;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$118;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    const/4 v0, 0x2

    const-string/jumbo v4, " s:"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object p1, v3, v0

    const/4 v0, 0x4

    const-string/jumbo v4, " s1:"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    aput-object p2, v3, v0

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3935
    return-void

    .line 3934
    :cond_0
    const-string/jumbo v0, " null\uff0c"

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 3940
    return-void
.end method
