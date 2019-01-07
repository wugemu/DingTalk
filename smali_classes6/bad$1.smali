.class final Lbad$1;
.super Ljava/lang/Object;
.source "CreateEventActivityPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbad;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/android/ding/base/objects/draft/DingDraftMergeResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbad;


# direct methods
.method constructor <init>(Lbad;)V
    .locals 0
    .param p1, "this$0"    # Lbad;

    .prologue
    .line 248
    iput-object p1, p0, Lbad$1;->a:Lbad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 265
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CreateEvent]mergeDraft failed, code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lbad$1;->a:Lbad;

    invoke-static {v0}, Lbad;->a(Lbad;)V

    .line 267
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 248
    check-cast p1, Lcom/alibaba/android/ding/base/objects/draft/DingDraftMergeResult;

    .line 1251
    if-eqz p1, :cond_0

    .line 1252
    iget-object v0, p0, Lbad$1;->a:Lbad;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftMergeResult;->getDingMergedCreateInfo()Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    move-result-object v1

    iput-object v1, v0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 1253
    iget-object v0, p0, Lbad$1;->a:Lbad;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftMergeResult;->getDbDraftObject()Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;

    move-result-object v1

    .line 2077
    iput-object v1, v0, Lbad;->t:Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;

    .line 1255
    :cond_0
    iget-object v0, p0, Lbad$1;->a:Lbad;

    iget-object v0, v0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    if-nez v0, :cond_1

    .line 1256
    const-string/jumbo v0, "[CreateEvent]loadDate failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "createInfo is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    iget-object v0, p0, Lbad$1;->a:Lbad;

    iget-object v0, v0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->e()V

    .line 1258
    :goto_0
    return-void

    .line 1260
    :cond_1
    iget-object v0, p0, Lbad$1;->a:Lbad;

    invoke-static {v0}, Lbad;->a(Lbad;)V

    goto :goto_0
.end method
