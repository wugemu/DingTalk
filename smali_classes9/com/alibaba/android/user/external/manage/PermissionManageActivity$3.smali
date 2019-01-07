.class final Lcom/alibaba/android/user/external/manage/PermissionManageActivity$3;
.super Ljava/lang/Object;
.source "PermissionManageActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$3;->e:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    iput p2, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$3;->a:I

    iput-object p3, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$3;->c:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$3;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 283
    const-string/jumbo v0, "choose_mode"

    iget v1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$3;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$3;->e:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    sget v2, Lezg$l;->select_contact_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string/jumbo v0, "show_local_contact"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 287
    const-string/jumbo v0, "show_friends"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 288
    const-string/jumbo v0, "show_common_friends"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 289
    const-string/jumbo v0, "show_crm_customer"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 290
    const-string/jumbo v0, "can_choose_current_user"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 292
    const-string/jumbo v0, "key_need_change_dept"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 293
    const-string/jumbo v0, "activity_identify"

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$3;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string/jumbo v0, "choose_enterprise_oid"

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$3;->e:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    .line 295
    invoke-static {v1}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 294
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 296
    const-string/jumbo v0, "display_enterprise_oid"

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$3;->e:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    .line 297
    invoke-static {v1}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 296
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 298
    const-string/jumbo v0, "hide_org_external"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 299
    const-string/jumbo v0, "seleced_members"

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$3;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 301
    const-string/jumbo v0, "seleced_departments"

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$3;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 304
    return-object p1
.end method
