.class final Lfgp$1$2;
.super Ljava/lang/Object;
.source "OrgApplyAdapter.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgp$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lfgp$1;


# direct methods
.method constructor <init>(Lfgp$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lfgp$1;

    .prologue
    .line 210
    iput-object p1, p0, Lfgp$1$2;->b:Lfgp$1;

    iput-object p2, p0, Lfgp$1$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 213
    const-string/jumbo v0, "manage_staff_mode"

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->ADD_EXISTED_STAFF:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    .line 214
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->ordinal()I

    move-result v1

    .line 213
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lfgp$1$2;->b:Lfgp$1;

    iget-object v1, v1, Lfgp$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->orgId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 216
    const-string/jumbo v0, "user_name"

    iget-object v1, p0, Lfgp$1$2;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string/jumbo v0, "user_mobile"

    iget-object v1, p0, Lfgp$1$2;->b:Lfgp$1;

    iget-object v1, v1, Lfgp$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    invoke-static {v1}, Lfrb;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string/jumbo v0, "list_view_position"

    iget-object v1, p0, Lfgp$1$2;->b:Lfgp$1;

    iget v1, v1, Lfgp$1;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    const-string/jumbo v0, "dept_object"

    iget-object v1, p0, Lfgp$1$2;->b:Lfgp$1;

    iget-object v1, v1, Lfgp$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->dept:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 220
    return-object p1
.end method
