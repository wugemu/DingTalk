.class Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;
.super Ljava/lang/Object;
.source "DDDefaultWXHttpAdapter.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$UrlPlaceHolderReplaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;

.field final synthetic val$reporter:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;

.field final synthetic val$response:Lcom/taobao/weex/common/WXResponse;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;Lcom/taobao/weex/common/WXResponse;Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;->val$response:Lcom/taobao/weex/common/WXResponse;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;->val$reporter:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 2
    .param p1, "replaceUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iput-object p1, v0, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    .line 134
    const-string/jumbo v0, "DDDefaultWXHttpAdapter"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1$1;-><init>(Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method
