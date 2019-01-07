.class final Lfgq$3;
.super Ljava/lang/Object;
.source "OrgContactAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgq;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

.field final synthetic c:Lfgq;


# direct methods
.method constructor <init>(Lfgq;ILcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)V
    .locals 0
    .param p1, "this$0"    # Lfgq;

    .prologue
    .line 241
    iput-object p1, p0, Lfgq$3;->c:Lfgq;

    iput p2, p0, Lfgq$3;->a:I

    iput-object p3, p0, Lfgq$3;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

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
    .line 244
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.add.new.fragment"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "node"

    iget-object v1, p0, Lfgq$3;->c:Lfgq;

    invoke-static {v1}, Lfgq;->a(Lfgq;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lfgq$3;->a:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 246
    const-string/jumbo v1, "fragment_key"

    const-string/jumbo v2, "OrgContactFragment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string/jumbo v1, "display_enterprise_oid"

    iget-object v2, p0, Lfgq$3;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 248
    iget-object v1, p0, Lfgq$3;->c:Lfgq;

    invoke-static {v1}, Lfgq;->b(Lfgq;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 249
    return-void
.end method
