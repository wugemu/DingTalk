.class final Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$3;
.super Ljava/lang/Object;
.source "DocScanForwardHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->sendImageMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ldiz;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;Ljava/util/List;Ldiz;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$3;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$3;->b:Ldiz;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 290
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$3;->a:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$3;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$3;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 292
    .local v0, "filePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$3;->b:Ldiz;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v4, v3}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 294
    .end local v0    # "filePath":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$3;->b:Ldiz;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$3;->c:Ljava/lang/String;

    .line 1413
    invoke-virtual {v1, v2, v4, v4}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    .line 296
    :cond_1
    return-void
.end method
