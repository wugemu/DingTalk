.class Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$3;
.super Ljava/lang/Object;
.source "Telephone.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->createFreeCall(Ljava/lang/String;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 6
    .param p1, "user"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 215
    if-eqz p1, :cond_0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 216
    :cond_0
    sget v1, Lhdn$k;->ding_call_fail_tip:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_1
    const-class v1, Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;

    invoke-static {v1}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;

    .line 221
    .local v0, "createCallProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;->createACall(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    goto :goto_0
.end method

.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 212
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$3;->onDataReceived(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 231
    sget v0, Lhdn$k;->ding_call_fail_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 232
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 227
    return-void
.end method
