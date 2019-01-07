.class final Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$2;
.super Ljava/lang/Object;
.source "NewMsgUnreadActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ldrs;

.field final synthetic c:Ldrs;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Ljava/util/Map;Ldrs;Ldrs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 783
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$2;->d:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$2;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$2;->b:Ldrs;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$2;->c:Ldrs;

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
    .line 783
    check-cast p1, Ljava/util/List;

    .line 1786
    if-eqz p1, :cond_1

    .line 1787
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1788
    if-eqz v0, :cond_0

    .line 1789
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$2;->a:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldsa;

    .line 1790
    if-eqz v1, :cond_0

    .line 1791
    iput-object v0, v1, Ldsa;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    goto :goto_0

    .line 1796
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$2;->d:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->a:Lcma;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$2;->b:Ldrs;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1797
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$2;->d:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->b:Lcma;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$2;->c:Ldrs;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1798
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$2;->d:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->r(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V

    .line 783
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 807
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$2;->d:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->q(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V

    .line 808
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$2;->d:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$2;->d:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 803
    return-void
.end method
