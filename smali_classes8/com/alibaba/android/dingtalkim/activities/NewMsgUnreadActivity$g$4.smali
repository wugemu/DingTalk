.class final Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$4;
.super Ljava/lang/Object;
.source "NewMsgUnreadActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;
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
        "Ljava/util/List",
        "<",
        "Ldqw;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;Ljava/util/Set;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;

    .prologue
    .line 944
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$4;->b:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$4;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 969
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "fetchObjects failed, code="

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

    .line 971
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 944
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 944
    check-cast p1, Ljava/util/List;

    .line 1947
    if-nez p1, :cond_2

    move v0, v1

    .line 1948
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1949
    if-eqz p1, :cond_3

    .line 1950
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqw;

    .line 1951
    if-eqz v0, :cond_0

    .line 1954
    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;

    invoke-direct {v4, v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;-><init>(B)V

    .line 1955
    iput-object v0, v4, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;->a:Ldqw;

    .line 1956
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$4;->a:Ljava/util/Set;

    if-eqz v5, :cond_1

    iget-object v5, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v5, :cond_1

    .line 1957
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$4;->a:Ljava/util/Set;

    iget-object v0, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;->b:Z

    .line 1959
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1947
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 1962
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$4;->b:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->a(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Ljava/util/List;)V

    .line 1963
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$4;->b:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;Ljava/util/List;)V

    .line 944
    return-void
.end method