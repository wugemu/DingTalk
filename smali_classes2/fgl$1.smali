.class final Lfgl$1;
.super Ljava/lang/Object;
.source "EditorOrgDeptViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfgl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

.field final synthetic c:Lfgl;


# direct methods
.method constructor <init>(Lfgl;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)V
    .locals 0
    .param p1, "this$0"    # Lfgl;

    .prologue
    .line 69
    iput-object p1, p0, Lfgl$1;->c:Lfgl;

    iput-object p2, p0, Lfgl$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iput-object p3, p0, Lfgl$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.add.new.fragment"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "node"

    iget-object v2, p0, Lfgl$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 74
    const-string/jumbo v1, "fragment_key"

    const-string/jumbo v2, "OrgContactFragment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string/jumbo v1, "display_enterprise_oid"

    iget-object v2, p0, Lfgl$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lfgl$1;->c:Lfgl;

    .line 1036
    iget-object v1, v1, Lfgl;->a:Landroid/app/Activity;

    .line 76
    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 77
    return-void
.end method
