.class final Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12$1;
.super Ljava/lang/Object;
.source "NewMsgUnreadActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12;
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
.field final synthetic a:Ldrs;

.field final synthetic b:Ldrs;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Ljava/util/Map;

.field final synthetic f:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12;Ldrs;Ldrs;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12;

    .prologue
    .line 719
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12$1;->f:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12$1;->a:Ldrs;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12$1;->b:Ldrs;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12$1;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12$1;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12$1;->e:Ljava/util/Map;

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
    .line 719
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 1722
    const-string/jumbo v0, "im"

    const/4 v2, 0x0

    const-string/jumbo v3, "NewMsgUnreadActivity.getUserProfileList complete"

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12$1;->f:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12$1;->a:Ldrs;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12$1;->b:Ldrs;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12$1;->c:Ljava/util/List;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12$1;->d:Ljava/util/List;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12$1;->e:Ljava/util/Map;

    invoke-static/range {v0 .. v6}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->a(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Ljava/util/List;Ldrs;Ldrs;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 719
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 732
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12$1;->f:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->q(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V

    .line 733
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12$1;->f:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12$1;->f:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 728
    return-void
.end method
