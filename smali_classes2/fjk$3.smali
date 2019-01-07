.class final Lfjk$3;
.super Ljava/lang/Object;
.source "OrgNavigatorInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfjk;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field final synthetic d:Lfjk;


# direct methods
.method constructor <init>(Lfjk;JLjava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 0
    .param p1, "this$0"    # Lfjk;

    .prologue
    .line 134
    iput-object p1, p0, Lfjk$3;->d:Lfjk;

    iput-wide p2, p0, Lfjk$3;->a:J

    iput-object p4, p0, Lfjk$3;->b:Ljava/lang/String;

    iput-object p5, p0, Lfjk$3;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

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
    .line 137
    const-string/jumbo v0, "manage_staff_mode"

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->ADD_STAFF:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    const-string/jumbo v0, "org_id"

    iget-wide v2, p0, Lfjk$3;->a:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 139
    iget-object v0, p0, Lfjk$3;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    const-string/jumbo v0, "key_org_title_name"

    iget-object v1, p0, Lfjk$3;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    :cond_0
    iget-object v0, p0, Lfjk$3;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfjk$3;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v0, :cond_1

    .line 143
    const-string/jumbo v0, "dept_object"

    iget-object v1, p0, Lfjk$3;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 145
    :cond_1
    return-object p1
.end method
