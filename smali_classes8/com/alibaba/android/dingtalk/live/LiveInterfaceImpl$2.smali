.class final Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl$2;
.super Ljava/lang/Object;
.source "LiveInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl;->a(Lcom/alibaba/wukong/Callback;)V
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
        "Ljava/util/List",
        "<",
        "Lbyb;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl$2;->b:Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl$2;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl$2;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 308
    check-cast p1, Ljava/util/List;

    .line 2211
    if-nez p1, :cond_0

    .line 2212
    const/4 v0, 0x0

    .line 1312
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl$2;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 308
    return-void

    .line 2215
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2216
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbyb;

    .line 2217
    if-eqz v0, :cond_1

    iget-object v3, v0, Lbyb;->a:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    if-eqz v3, :cond_1

    .line 2220
    new-instance v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveConversationObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/livebase/model/LiveConversationObject;-><init>()V

    .line 2221
    iget-object v4, v0, Lbyb;->c:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveConversationObject;->cid:Ljava/lang/String;

    .line 2222
    iget-object v4, v0, Lbyb;->b:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveConversationObject;->cidName:Ljava/lang/String;

    .line 2223
    iget-object v4, v0, Lbyb;->a:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->uuid:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveConversationObject;->liveUuid:Ljava/lang/String;

    .line 2224
    iget-object v4, v0, Lbyb;->a:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->title:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveConversationObject;->title:Ljava/lang/String;

    .line 2225
    iget-object v0, v0, Lbyb;->a:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->coverUrl:Ljava/lang/String;

    iput-object v0, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveConversationObject;->coverUrl:Ljava/lang/String;

    .line 2226
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 2229
    goto :goto_0
.end method
