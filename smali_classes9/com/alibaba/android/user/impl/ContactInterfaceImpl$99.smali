.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$99;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->i(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    .prologue
    .line 4670
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$99;->c:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$99;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$99;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4673
    if-ltz p2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$99;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p2, v2, :cond_1

    .line 4692
    :cond_0
    :goto_0
    return-void

    .line 4677
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$99;->a:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 4680
    .local v0, "orgChosen":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.lightapp.smart.device.choose.org.complete"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4681
    .local v1, "resultBroadcastIntent":Landroid/content/Intent;
    const-string/jumbo v2, "org_id"

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4682
    iget-object v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$99;->b:Landroid/content/Context;

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 4684
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v3, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$99;->b:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/contact/alpha_device.html"

    new-instance v4, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$99$1;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$99$1;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl$99;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
