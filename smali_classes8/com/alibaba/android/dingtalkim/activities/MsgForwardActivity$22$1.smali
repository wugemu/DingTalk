.class final Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$22$1;
.super Ljava/lang/Object;
.source "MsgForwardActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$22;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$22;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$22;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$22;

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$22$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$22;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$22$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1067
    .line 2070
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2071
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$22$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 2072
    if-eqz v0, :cond_0

    .line 2075
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->fromConversation(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2077
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$22$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$22;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$22;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a(Ljava/util/List;)Z

    .line 2078
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$22$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$22;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$22;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    if-eqz v0, :cond_2

    .line 2079
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$22$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$22;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$22;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    invoke-static {v1}, Ldhy;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcvm;->a(Ljava/util/List;)V

    .line 1067
    :cond_2
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1090
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "fetchSingleChatUserProfile failed, code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1086
    return-void
.end method
