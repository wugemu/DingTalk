.class Lcom/alibaba/lightapp/runtime/plugin/internal/Util$3;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->showAddExternalContactDialog(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

.field final synthetic val$orgId:J


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    iput-wide p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$3;->val$orgId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 405
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 406
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$1300(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$3;->val$orgId:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(Landroid/app/Activity;J)V

    .line 408
    :cond_0
    return-void
.end method
