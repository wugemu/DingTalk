.class final Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;
.super Ljava/lang/Object;
.source "ShareTypeForwardHandler.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->showNativeShareAlertDialog(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;->c:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 200
    .line 1203
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {v1}, Ldhy;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;)V

    invoke-static {v0, v1, v2}, Ldhy;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;Ldhy$b;)V

    .line 200
    return-void
.end method
