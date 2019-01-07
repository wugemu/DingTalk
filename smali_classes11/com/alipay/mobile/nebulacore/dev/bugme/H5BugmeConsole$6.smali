.class Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$6;
.super Ljava/lang/Object;
.source "H5BugmeConsole.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->recordLog(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

.field final synthetic val$jsonObject:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;ILcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$6;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    iput p2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$6;->val$pos:I

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$6;->val$jsonObject:Lcom/alibaba/fastjson/JSONObject;

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
    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$6;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->access$100(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$6;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->access$100(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$6;->val$pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeLogMsg;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$6;->val$jsonObject:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeLogMsg;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$6;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->access$200(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$6;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->access$300(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$6;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->access$300(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$6;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->access$200(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$6;->val$pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;->refresh()V

    .line 245
    :cond_1
    return-void
.end method
