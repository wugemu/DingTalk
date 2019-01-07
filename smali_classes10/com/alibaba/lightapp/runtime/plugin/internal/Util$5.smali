.class Lcom/alibaba/lightapp/runtime/plugin/internal/Util$5;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->getBindSmartDeviceOrgList(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 544
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$1800(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->i(Landroid/content/Context;)V

    .line 545
    return-void
.end method
