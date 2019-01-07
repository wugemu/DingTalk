.class final Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher$1;
.super Ljava/lang/Object;
.source "MessageEncryptPhotoObjectsFetcher.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;->fetchPhotoObjects(Lcom/alibaba/wukong/Callback;)V
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
        "Lcom/alibaba/wukong/im/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher$1;->b:Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 53
    check-cast p1, Ljava/util/List;

    .line 1091
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    .line 53
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 53
    check-cast p1, Ljava/util/List;

    .line 2057
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2059
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2060
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 2061
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 2063
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v3

    if-eq v3, v5, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->shieldStatus()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 2064
    invoke-static {v0}, Ldrp;->e(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2065
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2060
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2067
    :cond_1
    invoke-static {v0}, Ldrp;->c(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v3

    .line 2068
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-static {v3, v4}, Ldrp;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/wukong/im/Conversation;)V

    .line 2069
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v4, "e_id"

    .line 2071
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2072
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2079
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 2080
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 53
    :cond_4
    return-void
.end method
