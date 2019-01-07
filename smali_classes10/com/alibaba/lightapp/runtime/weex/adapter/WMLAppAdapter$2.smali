.class Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$2;
.super Ljava/lang/Object;
.source "WMLAppAdapter.java"

# interfaces
.implements Lhfb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;->getResponse(Ljava/lang/String;)Ljpq$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;

.field final synthetic val$appCode:Ljava/lang/String;

.field final synthetic val$appCodeModel:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$response:[Ljpq$a;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;Ljava/lang/String;[Ljpq$a;Lcom/taobao/windmill/bundle/container/core/AppCodeModel;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$2;->val$appCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$2;->val$response:[Ljpq$a;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$2;->val$appCodeModel:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 195
    const-string/jumbo v1, "WMLAppAdapter"

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "getResponse"

    aput-object v0, v2, v4

    const/4 v0, 0x1

    const-string/jumbo v3, "onException"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v3, "errorCode="

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object p1, v2, v0

    const/4 v0, 0x4

    const-string/jumbo v3, "errorMessage="

    aput-object v3, v2, v0

    const/4 v0, 0x5

    aput-object p2, v2, v0

    const/4 v0, 0x6

    const-string/jumbo v3, "throwable="

    aput-object v3, v2, v0

    const/4 v3, 0x7

    if-eqz p3, :cond_0

    .line 198
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    .line 195
    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$2;->val$response:[Ljpq$a;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;

    invoke-static {v1, p1, p2}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;->access$100(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;

    move-result-object v1

    aput-object v1, v0, v4

    .line 202
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 203
    return-void

    .line 198
    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method public onSuccess(Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;)V
    .locals 7
    .param p1, "appInfo"    # Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 170
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->package_url:Ljava/lang/String;

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->version:Ljava/lang/String;

    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    const-string/jumbo v0, "WMLAppAdapter"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "getResponse"

    aput-object v2, v1, v5

    const-string/jumbo v2, "onSuccess"

    aput-object v2, v1, v3

    const-string/jumbo v2, "appCode="

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$2;->val$appCode:Ljava/lang/String;

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string/jumbo v3, "package_url="

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->package_url:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "version="

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->version:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$2;->val$response:[Ljpq$a;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$2;->val$appCodeModel:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->package_url:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->version:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;->access$000(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;Lcom/taobao/windmill/bundle/container/core/AppCodeModel;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;

    move-result-object v1

    aput-object v1, v0, v5

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 191
    return-void

    .line 181
    :cond_0
    const-string/jumbo v1, "WMLAppAdapter"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v0, "getResponse"

    aput-object v0, v2, v5

    const-string/jumbo v0, "onSuccess"

    aput-object v0, v2, v3

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->package_url:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->version:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$2;->val$response:[Ljpq$a;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;

    const-string/jumbo v2, "ERR_NO_RESULT"

    const-string/jumbo v3, "either packageUrl or version is empty"

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;->access$100(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_0

    .line 181
    :cond_1
    const-string/jumbo v0, "appInfo = null"

    goto :goto_1
.end method
