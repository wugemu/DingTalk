.class final Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1$1;
.super Ljava/lang/Object;
.source "GroupAdminActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 335
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->dismissLoadingDialog()V

    .line 336
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "GroupAdminActivity remove admin updateMemberRoles exception code: "

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

    .line 338
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 325
    .line 1328
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->dismissLoadingDialog()V

    .line 1329
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;)Lcvv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v0, v1}, Lcvv;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 1330
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->b(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;)V

    .line 325
    return-void
.end method
