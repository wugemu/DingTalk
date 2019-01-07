.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1;

.field final synthetic val$savedPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1;

    .prologue
    .line 4215
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1$1;->val$savedPath:Ljava/lang/String;

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
    .line 4217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;->val$context:Landroid/content/Context;

    sget v3, Lcig$j;->save_to_phone:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1$1;->val$savedPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4218
    .local v0, "toastText":Ljava/lang/String;
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 4219
    return-void
.end method
