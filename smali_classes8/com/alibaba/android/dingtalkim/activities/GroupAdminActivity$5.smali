.class final Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;
.super Ljava/lang/Object;
.source "GroupAdminActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 313
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->showLoadingDialog()V

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 318
    .local v0, "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->c(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;Ljava/util/List;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    invoke-static {v1, v3, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v2, v0, v1}, Ldjt;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
