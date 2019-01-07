.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->saveImage(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Landroid/view/View;Lcom/alibaba/lightapp/runtime/ActionRequest;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 4204
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;->val$context:Landroid/content/Context;

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
    .line 4207
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;->val$view:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$12100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$12002(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 4208
    const-string/jumbo v0, "bizUtil"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 4225
    return-void
.end method
