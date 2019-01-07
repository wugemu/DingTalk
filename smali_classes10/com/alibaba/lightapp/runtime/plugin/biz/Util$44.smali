.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$44;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->setScreenBrightnessAndKeepOn(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

.field final synthetic val$finalBrightness:F

.field final synthetic val$isKeep:Z


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;ZF)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 4543
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$44;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iput-boolean p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$44;->val$isKeep:Z

    iput p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$44;->val$finalBrightness:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 4547
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$44;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$14300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 4548
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$44;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$14400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 4549
    .local v0, "activity":Landroid/app/Activity;
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$44;->val$isKeep:Z

    iget v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$44;->val$finalBrightness:F

    invoke-static {v0, v1, v2}, Lcms;->a(Landroid/app/Activity;ZF)V

    .line 4551
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method
