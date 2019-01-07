.class Lcom/alibaba/lightapp/runtime/plugin/retail/Chat$1;
.super Lcmi;
.source "Chat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/retail/Chat;->open(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/util/List",
        "<",
        "Lhjk;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/retail/Chat;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/retail/Chat;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/retail/Chat;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Chat$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/retail/Chat;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Chat$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "code:"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "reason:"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "callMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Chat$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/retail/Chat;

    const/4 v2, 0x3

    invoke-static {v2, v0}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Chat$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/retail/Chat;->access$400(Lcom/alibaba/lightapp/runtime/plugin/retail/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public bridge synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/retail/Chat$1;->onLoadSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onLoadSuccess(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhjk;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "memberModels":Ljava/util/List;, "Ljava/util/List<Lhjk;>;"
    const/4 v11, 0x3

    const/4 v6, 0x0

    .line 60
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lhjk;

    .line 62
    .local v9, "memberModel":Lhjk;
    iget-object v1, v9, Lhjk;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 64
    .local v4, "uid":J
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    .line 65
    .local v2, "currentUid":J
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(JJZ)Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, "cid":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam$a;-><init>()V

    .line 1054
    .local v0, "builder":Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam$a;
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam$a;->a:Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;

    invoke-static {v1, v8}, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->access$002(Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;Ljava/lang/String;)Ljava/lang/String;

    .line 1059
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam$a;->a:Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;

    invoke-static {v1, v6}, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->access$102(Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;Z)Z

    .line 1064
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam$a;->a:Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;

    const/16 v11, 0x10

    invoke-static {v1, v11}, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->access$202(Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;I)I

    .line 1069
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam$a;->a:Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;

    const/4 v11, 0x1

    invoke-static {v1, v11}, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->access$302(Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;Z)Z

    .line 1074
    iget-object v10, v0, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam$a;->a:Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;

    .line 69
    .local v10, "navConversationParam":Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Chat$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/retail/Chat;

    invoke-static {v11}, Lcom/alibaba/lightapp/runtime/plugin/retail/Chat;->access$000(Lcom/alibaba/lightapp/runtime/plugin/retail/Chat;)Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v10, v12, v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;Landroid/os/Bundle;Z)V

    .line 70
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Chat$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/retail/Chat;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Chat$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/alibaba/lightapp/runtime/plugin/retail/Chat;->access$100(Lcom/alibaba/lightapp/runtime/plugin/retail/Chat;Ljava/lang/String;)V

    .line 78
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam$a;
    .end local v2    # "currentUid":J
    .end local v4    # "uid":J
    .end local v8    # "cid":Ljava/lang/String;
    .end local v9    # "memberModel":Lhjk;
    .end local v10    # "navConversationParam":Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;
    :goto_0
    return-void

    .line 72
    .restart local v2    # "currentUid":J
    .restart local v4    # "uid":J
    .restart local v8    # "cid":Ljava/lang/String;
    .restart local v9    # "memberModel":Lhjk;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Chat$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/retail/Chat;

    const-string/jumbo v6, "cid null"

    invoke-static {v11, v6}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Chat$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v11, v11, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v1, v6, v11}, Lcom/alibaba/lightapp/runtime/plugin/retail/Chat;->access$200(Lcom/alibaba/lightapp/runtime/plugin/retail/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    .end local v2    # "currentUid":J
    .end local v4    # "uid":J
    .end local v8    # "cid":Ljava/lang/String;
    .end local v9    # "memberModel":Lhjk;
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v6, "reason: uid null"

    invoke-virtual {v1, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "callMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Chat$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/retail/Chat;

    invoke-static {v11, v7}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Chat$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v11, v11, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v1, v6, v11}, Lcom/alibaba/lightapp/runtime/plugin/retail/Chat;->access$300(Lcom/alibaba/lightapp/runtime/plugin/retail/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
