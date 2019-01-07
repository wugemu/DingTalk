.class Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$1;
.super Ljava/lang/Object;
.source "WMLLegacyAppAdapter.java"

# interfaces
.implements Ljpr$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->backup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$res:Ljpq$a;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;Ljpq$a;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$1;->val$res:Ljpq$a;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeadersReceived(ILjava/util/Map;)V
    .locals 0
    .param p1, "var1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p2, "var2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    return-void
.end method

.method public onHttpFinish(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "statusCode"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 113
    const-string/jumbo v0, "200"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$1;->val$res:Ljpq$a;

    iput-object p2, v0, Ljpq$a;->d:Ljava/lang/Object;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 117
    return-void
.end method

.method public onHttpResponseProgress(I)V
    .locals 0
    .param p1, "var1"    # I

    .prologue
    .line 109
    return-void
.end method

.method public onHttpStart()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public onHttpUploadProgress(I)V
    .locals 0
    .param p1, "var1"    # I

    .prologue
    .line 104
    return-void
.end method
