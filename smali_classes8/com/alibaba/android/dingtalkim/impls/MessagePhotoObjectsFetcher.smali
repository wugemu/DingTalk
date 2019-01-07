.class public Lcom/alibaba/android/dingtalkim/impls/MessagePhotoObjectsFetcher;
.super Ljava/lang/Object;
.source "MessagePhotoObjectsFetcher.java"

# interfaces
.implements Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;


# instance fields
.field public mConversation:Lcom/alibaba/wukong/im/Conversation;

.field public mCursorMessage:Lcom/alibaba/wukong/im/Message;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchPhotoObjects(Lcom/alibaba/wukong/Callback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<[",
            "Lcom/alibaba/laiwang/photokit/browser/PhotoObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;>;"
    const/16 v3, 0x3e8

    const/4 v5, 0x1

    .line 29
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MessagePhotoObjectsFetcher;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 30
    const/4 v0, 0x2

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    .line 32
    .local v4, "imageTypes":[I
    new-instance v8, Lcom/alibaba/android/dingtalkim/impls/MessagePhotoObjectsFetcher$1;

    invoke-direct {v8, p0, p1}, Lcom/alibaba/android/dingtalkim/impls/MessagePhotoObjectsFetcher$1;-><init>(Lcom/alibaba/android/dingtalkim/impls/MessagePhotoObjectsFetcher;Lcom/alibaba/wukong/Callback;)V

    .line 68
    .local v8, "callbackAdapter":Lcom/alibaba/wukong/Callback;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MessagePhotoObjectsFetcher;->mCursorMessage:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_im_photo_fetch_middle_cursor"

    .line 1083
    invoke-virtual {v0, v1, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 68
    if-nez v0, :cond_2

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MessagePhotoObjectsFetcher;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v3, v4, v8}, Lcom/alibaba/wukong/im/Conversation;->listPreviousLocalMessages(Lcom/alibaba/wukong/im/Message;I[ILcom/alibaba/wukong/Callback;)V

    .line 74
    .end local v4    # "imageTypes":[I
    .end local v8    # "callbackAdapter":Lcom/alibaba/wukong/Callback;
    :cond_1
    :goto_0
    return-void

    .line 71
    .restart local v4    # "imageTypes":[I
    .restart local v8    # "callbackAdapter":Lcom/alibaba/wukong/Callback;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MessagePhotoObjectsFetcher;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MessagePhotoObjectsFetcher;->mCursorMessage:Lcom/alibaba/wukong/im/Message;

    const-wide/16 v6, 0x0

    invoke-interface/range {v1 .. v8}, Lcom/alibaba/wukong/im/Conversation;->listLocalMessages(Lcom/alibaba/wukong/im/Message;I[IZJLcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 30
    nop

    :array_0
    .array-data 4
        0xfb
        0x2
    .end array-data
.end method
