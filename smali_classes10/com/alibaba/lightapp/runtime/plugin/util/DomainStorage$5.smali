.class Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$5;
.super Ljava/lang/Object;
.source "DomainStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;->clearItems(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$5;->val$host:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$5;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 217
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$5;->val$host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e(Ljava/lang/String;)I

    move-result v0

    .line 218
    .local v0, "ret":I
    const-string/jumbo v1, "lightapp"

    sget-object v2, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "DomainStorage clearItems count"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;->access$900(Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$5;->val$host:Ljava/lang/String;

    invoke-static {v1, v2, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 220
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$5;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;Ljava/lang/String;)V

    .line 221
    return-void
.end method
