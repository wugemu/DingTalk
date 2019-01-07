.class final Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$1;
.super Ljava/lang/Object;
.source "GroupAdminActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;
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
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 114
    check-cast p1, Ljava/util/List;

    .line 1117
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->dismissLoadingDialog()V

    .line 1118
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1119
    :cond_0
    :goto_0
    return-void

    .line 1122
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$1$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$1;)V

    .line 1141
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->showLoadingDialog()V

    .line 1142
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const/4 v2, 0x1

    const-class v3, Lcma;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    invoke-static {v0, v3, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, p1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(ZLjava/util/List;Lcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->dismissLoadingDialog()V

    .line 150
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "GroupAdminActivity getAdminList listMembers exception code: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " msg: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 146
    return-void
.end method
