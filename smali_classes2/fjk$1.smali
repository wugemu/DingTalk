.class final Lfjk$1;
.super Ljava/lang/Object;
.source "OrgNavigatorInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfjk;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field final synthetic b:J

.field final synthetic c:Lfjk;


# direct methods
.method constructor <init>(Lfjk;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;J)V
    .locals 1
    .param p1, "this$0"    # Lfjk;

    .prologue
    .line 82
    iput-object p1, p0, Lfjk$1;->c:Lfjk;

    iput-object p2, p0, Lfjk$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iput-wide p3, p0, Lfjk$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 86
    iget-object v1, p0, Lfjk$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-nez v1, :cond_2

    .line 87
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;-><init>()V

    .line 88
    .local v0, "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    iget-object v1, p0, Lfjk$1;->c:Lfjk;

    iget-wide v2, p0, Lfjk$1;->b:J

    .line 1101
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 1102
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 1103
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 1104
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1105
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1106
    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v5, v6, v2

    if-nez v5, :cond_0

    .line 1107
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    .line 88
    :goto_0
    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    .line 89
    iget-wide v2, p0, Lfjk$1;->b:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    .line 90
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    .line 94
    :goto_1
    const-string/jumbo v1, "dept_object"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 95
    return-object p1

    .line 1112
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0

    .line 92
    .end local v0    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_2
    iget-object v1, p0, Lfjk$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .restart local v0    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    goto :goto_1
.end method
