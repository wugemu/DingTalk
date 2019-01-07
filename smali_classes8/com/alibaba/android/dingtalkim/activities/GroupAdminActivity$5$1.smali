.class final Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;
.super Ljava/lang/Object;
.source "GroupAdminActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;->onClick(Landroid/content/DialogInterface;I)V
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
        "Ldjt$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;->a:Ljava/util/List;

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
    .line 347
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->dismissLoadingDialog()V

    .line 348
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "GroupAdminActivity getSystemMessageNameString exception code: "

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

    .line 350
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 319
    check-cast p1, Ldjt$a;

    .line 1322
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ldjt;->a(Ldjt$a;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 1323
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1324
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1325
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->c(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    sget-object v4, Lcom/alibaba/wukong/im/Member$RoleType;->ORDINARY:Lcom/alibaba/wukong/im/Member$RoleType;

    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    invoke-static {v0, v5, v6}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v3, v2, v1, v4, v0}, Lcom/alibaba/wukong/im/Conversation;->updateMemberRoles(Ljava/util/List;Ljava/util/List;Lcom/alibaba/wukong/im/Member$RoleType;Lcom/alibaba/wukong/Callback;)V

    .line 319
    return-void
.end method
