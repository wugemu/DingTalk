.class final Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$3;
.super Ljava/lang/Object;
.source "GroupAdminActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


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
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ldjt$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$3;->c:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$3;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$3;->b:Ljava/util/List;

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
    .line 253
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$3;->c:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->dismissLoadingDialog()V

    .line 254
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
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

    .line 256
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 225
    check-cast p1, Ldjt$a;

    .line 1228
    sget-object v1, Lcom/alibaba/wukong/im/Member$RoleType;->ADMIN:Lcom/alibaba/wukong/im/Member$RoleType;

    .line 1229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$3;->c:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->c(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$3;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$3;->b:Ljava/util/List;

    const/4 v4, 0x1

    invoke-static {p1, v0, v4}, Ldjt;->a(Ldjt$a;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v4

    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$3$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$3$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$3;)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$3;->c:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    invoke-static {v0, v5, v6}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v2, v3, v4, v1, v0}, Lcom/alibaba/wukong/im/Conversation;->updateMemberRoles(Ljava/util/List;Ljava/util/List;Lcom/alibaba/wukong/im/Member$RoleType;Lcom/alibaba/wukong/Callback;)V

    .line 225
    return-void
.end method
