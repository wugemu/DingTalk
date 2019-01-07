.class Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$8;
.super Ljava/lang/Object;
.source "InternalChat.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->transmitMsg(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Ljava/lang/Long;)V
    .locals 6
    .param p1, "uid"    # Ljava/lang/Long;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 526
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 527
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 528
    .local v0, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$2500(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$2600(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Landroid/content/Context;)V

    .line 532
    .end local v0    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :goto_0
    return-void

    .line 530
    :cond_0
    const-string/jumbo v1, "lightapp"

    sget-object v2, Lcom/alibaba/lightapp/runtime/Plugin;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getUidByCorpIdAndStaffId uid is null !"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 523
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$8;->onDataReceived(Ljava/lang/Long;)V

    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 541
    const-string/jumbo v0, "lightapp"

    sget-object v1, Lcom/alibaba/lightapp/runtime/Plugin;->TAG:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getUidByCorpIdAndStaffId error code"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 542
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 541
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 537
    return-void
.end method
