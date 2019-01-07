.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2$1;
.super Ljava/lang/Object;
.source "SessionPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->run()V
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;

    .prologue
    .line 1967
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1967
    check-cast p1, Ljava/util/List;

    .line 2970
    if-eqz p1, :cond_3

    .line 2971
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2972
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 2973
    new-array v1, v11, [Ljava/lang/String;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    const-string/jumbo v3, ":"

    aput-object v3, v1, v9

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v10

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2974
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 2975
    if-eqz v1, :cond_1

    .line 2976
    invoke-static {v1, v0}, Ldza;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 2978
    :cond_1
    new-array v1, v11, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    const-string/jumbo v3, ":"

    aput-object v3, v1, v9

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v10

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2979
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 2980
    if-eqz v1, :cond_0

    .line 2981
    invoke-static {v1, v0}, Ldza;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_0

    .line 2984
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 3116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 2984
    invoke-interface {v0}, Ldyy$b;->a()V

    .line 1967
    :cond_3
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1997
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1992
    return-void
.end method
