.class Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1$1;
.super Ljava/lang/Object;
.source "CommonWeexActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1;->onSuccess(Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1;

.field final synthetic val$loader:Lhfj;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1;Lhfj;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1$1;->this$2:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1$1;->val$loader:Lhfj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1$1;->this$2:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->access$300(Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;)Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1$1;->this$2:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->access$100(Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1$1;->this$2:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->access$200(Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1$1;->val$loader:Lhfj;

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1$1;->this$2:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->access$200(Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;)Ljava/lang/String;

    move-result-object v5

    .line 1031
    new-instance v0, Ljava/io/File;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v4, v4, Lhfj;->b:Ljava/lang/String;

    aput-object v4, v6, v7

    const/4 v4, 0x1

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v7, v6, v4

    const/4 v4, 0x2

    aput-object v5, v6, v4

    invoke-static {v6}, Lieo;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 230
    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->renderByFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 231
    return-void

    .line 1035
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
