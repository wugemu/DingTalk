.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$90;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
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
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 2595
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$90;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$90;->a:J

    iput-wide p4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$90;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2595
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 3599
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3600
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->K()Ljava/lang/String;

    .line 3601
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v0

    invoke-virtual {v0}, Ldyn;->c()Ldxx;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$90;->a:J

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$90;->b:J

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$90$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$90$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$90;)V

    invoke-interface/range {v1 .. v6}, Ldxx;->a(JJLcma;)V

    .line 2595
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2629
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->K()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "checkIfShouldSendMessageBySMS onException code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 2625
    return-void
.end method
