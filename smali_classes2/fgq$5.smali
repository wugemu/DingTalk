.class final Lfgq$5;
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

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

.field final synthetic c:Lfgq;


# direct methods
.method constructor <init>(Lfgq;ILcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)V
    .locals 0
    .param p1, "this$0"    # Lfgq;

    .prologue
    .line 392
    iput-object p1, p0, Lfgq$5;->c:Lfgq;

    iput p2, p0, Lfgq$5;->a:I

    iput-object p3, p0, Lfgq$5;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

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
    .line 395
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.add.new.fragment"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lfgq$5;->c:Lfgq;

    invoke-static {v1}, Lfgq;->d(Lfgq;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.workapp.add.new.search_fragment"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "search_mode"

    iget-object v2, p0, Lfgq$5;->c:Lfgq;

    invoke-static {v2}, Lfgq;->d(Lfgq;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 401
    :cond_0
    const-string/jumbo v2, "node"

    iget-object v1, p0, Lfgq$5;->c:Lfgq;

    invoke-static {v1}, Lfgq;->a(Lfgq;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lfgq$5;->a:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 402
    const-string/jumbo v1, "display_enterprise_oid"

    iget-object v2, p0, Lfgq$5;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 404
    const-string/jumbo v1, "fragment_key"

    const-string/jumbo v2, "OrgContactFragment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    iget-object v1, p0, Lfgq$5;->c:Lfgq;

    invoke-static {v1}, Lfgq;->b(Lfgq;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 407
    return-void
.end method
