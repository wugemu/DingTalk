.class final Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$1;
.super Lcmi;
.source "UrlPlaceHolderReplaceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil;->wrapperVersionHolderUrl(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$UrlPlaceHolderReplaceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lhkb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$UrlPlaceHolderReplaceCallback;

.field final synthetic val$originUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$UrlPlaceHolderReplaceCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$1;->val$callback:Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$UrlPlaceHolderReplaceCallback;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$1;->val$originUrl:Ljava/lang/String;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    const-string/jumbo v0, "UrlPlaceHolderReplaceUtil"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "getWeexMainVersion lwp is wrong, code=>"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " &reason==>"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceNet(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$1;->val$callback:Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$UrlPlaceHolderReplaceCallback;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$1;->val$callback:Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$UrlPlaceHolderReplaceCallback;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$1;->val$originUrl:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$UrlPlaceHolderReplaceCallback;->callback(Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method

.method public final onLoadSuccess(Lhkb;)V
    .locals 5
    .param p1, "recruitmentVersionModel"    # Lhkb;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    if-eqz p1, :cond_1

    .line 53
    const-string/jumbo v0, "UrlPlaceHolderReplaceUtil"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "version from lwp=>"

    aput-object v2, v1, v3

    iget-object v2, p1, Lhkb;->a:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceNet(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$1;->val$callback:Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$UrlPlaceHolderReplaceCallback;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$1;->val$callback:Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$UrlPlaceHolderReplaceCallback;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$1;->val$originUrl:Ljava/lang/String;

    iget-object v2, p1, Lhkb;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$UrlPlaceHolderReplaceCallback;->callback(Ljava/lang/String;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string/jumbo v0, "UrlPlaceHolderReplaceUtil"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "getWeexMainVersion versionMap is null"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceNet(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$1;->val$callback:Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$UrlPlaceHolderReplaceCallback;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$1;->val$callback:Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$UrlPlaceHolderReplaceCallback;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$1;->val$originUrl:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$UrlPlaceHolderReplaceCallback;->callback(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bridge synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 49
    check-cast p1, Lhkb;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$1;->onLoadSuccess(Lhkb;)V

    return-void
.end method
