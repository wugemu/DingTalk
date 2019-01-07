.class Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$18;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->createCallFromRecord([Ljava/lang/String;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$18;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 6
    .param p1, "data"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1170
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 1171
    .local v0, "object1":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v0, :cond_0

    .line 1172
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$18;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v2, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$6500(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 1174
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1175
    .local v1, "property":Ljava/util/HashMap;
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "single"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    const-string/jumbo v2, "kw"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "meeting_creat_from_confrecord"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1181
    .end local v1    # "property":Ljava/util/HashMap;
    :cond_0
    return-void
.end method

.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1167
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$18;->onDataReceived(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$18;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    const/4 v1, 0x3

    invoke-static {v1, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$18;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$6600(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$6700(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1192
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1186
    return-void
.end method
