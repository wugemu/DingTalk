.class Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;
.super Ljava/lang/Object;
.source "CommonWeexActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->loadUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;

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
    .line 222
    invoke-static {}, Lhfc;->a()Lhfc;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->access$000(Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1;-><init>(Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lhfc;->a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;Lhfb$a;)V

    .line 243
    return-void
.end method
