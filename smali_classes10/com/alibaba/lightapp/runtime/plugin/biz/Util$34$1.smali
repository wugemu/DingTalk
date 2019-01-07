.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$34$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util$34;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$34;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util$34;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util$34;

    .prologue
    .line 4025
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$34$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$34;

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
    .line 4028
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$34$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$34;

    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$34;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$34$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$34;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$34;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$12000(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$34$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$34;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$34;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$34$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$34;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$34;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v2, v3, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$12200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/Activity;)V

    .line 4029
    return-void
.end method
