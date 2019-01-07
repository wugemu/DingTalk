.class final Lazz$1;
.super Ljava/lang/Object;
.source "DingCreateActivityV2Presenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazz;->b(Z)V
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
.field final synthetic a:Lazz;


# direct methods
.method constructor <init>(Lazz;)V
    .locals 0
    .param p1, "this$0"    # Lazz;

    .prologue
    .line 171
    iput-object p1, p0, Lazz$1;->a:Lazz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, Lazz$1;->a:Lazz;

    invoke-static {v0}, Lazz;->a(Lazz;)V

    .line 184
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 171
    check-cast p1, Lcom/alibaba/android/ding/base/objects/draft/DingDraftMergeResult;

    .line 1174
    if-eqz p1, :cond_0

    .line 1175
    iget-object v0, p0, Lazz$1;->a:Lazz;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftMergeResult;->getDingMergedCreateInfo()Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    move-result-object v1

    iput-object v1, v0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 1176
    iget-object v0, p0, Lazz$1;->a:Lazz;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftMergeResult;->getDbDraftObject()Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;

    move-result-object v1

    .line 2066
    iput-object v1, v0, Lazz;->C:Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;

    .line 1178
    :cond_0
    iget-object v0, p0, Lazz$1;->a:Lazz;

    invoke-static {v0}, Lazz;->a(Lazz;)V

    .line 171
    return-void
.end method
