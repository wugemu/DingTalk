.class final Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$21;
.super Ljava/lang/Object;
.source "MsgForwardActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$21;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$21;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 612
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 596
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 596
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1603
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$21;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->D:Z

    if-eqz v0, :cond_0

    .line 1604
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$21;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$21;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Z)V

    :goto_0
    return-void

    .line 1606
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$21;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$21;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method
