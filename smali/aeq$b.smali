.class final Laeq$b;
.super Landroid/os/Handler;
.source "Chat2MailHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laeq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Laeq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laeq;)V
    .locals 1
    .param p1, "ref"    # Laeq;

    .prologue
    .line 138
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 139
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Laeq$b;->a:Ljava/lang/ref/WeakReference;

    .line 140
    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/16 v9, 0x2710

    const/16 v7, 0x316

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 144
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 145
    iget-object v0, p0, Laeq$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laeq;

    .line 146
    .local v8, "ref":Laeq;
    if-eqz v8, :cond_0

    .line 1061
    iget-boolean v0, v8, Laeq;->p:Z

    .line 146
    if-eqz v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2235
    :pswitch_0
    iget-object v0, v8, Laeq;->m:Ljava/util/List;

    iget v1, v8, Laeq;->h:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alibaba/wukong/im/Message;

    .line 2236
    invoke-static {v6}, Lafh;->b(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2274
    iget-object v0, v8, Laeq;->m:Ljava/util/List;

    iget v1, v8, Laeq;->h:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 2275
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 2276
    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    .line 2277
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->spaceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->fileId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->fileType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lafh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2278
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "imageContent.fileType():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->fileType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lafh;->e()V

    .line 2280
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2281
    invoke-static {}, Lafh;->e()V

    .line 2283
    :cond_2
    iput-object v1, v8, Laeq;->i:Ljava/lang/String;

    .line 2284
    iget-object v2, v8, Laeq;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    invoke-interface {v2, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->hasImageCache(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2285
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handleNextEncryptImageMessage, hasImageCache:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v8, Laeq;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    invoke-interface {v3, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->hasImageCache(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lafh;->e()V

    .line 2286
    invoke-static {}, Lgzp;->b()Lgzn;

    move-result-object v2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->fileName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v8, Laeq;->q:Lcom/alibaba/wukong/Callback;

    invoke-interface {v2, v1, v4, v0, v3}, Lgzn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 2298
    :goto_1
    iget-object v0, v8, Laeq;->f:Landroid/util/SparseArray;

    iget v1, v8, Laeq;->h:I

    iget-object v2, v8, Laeq;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2289
    :cond_3
    invoke-static {}, Lafh;->e()V

    .line 2290
    new-instance v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>()V

    .line 2291
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAccountName(Ljava/lang/String;)V

    .line 2292
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->spaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSpaceId(Ljava/lang/String;)V

    .line 2293
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->fileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setServerId(Ljava/lang/String;)V

    .line 2294
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->fileType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setExtension(Ljava/lang/String;)V

    .line 2295
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lth;->a(Ljava/lang/String;)Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->download(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 2296
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->fileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Laeq;->n:Ljava/lang/String;

    goto :goto_1

    .line 2241
    :cond_4
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 2242
    if-eqz v0, :cond_0

    .line 2243
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->url()Ljava/lang/String;

    move-result-object v5

    .line 2246
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2247
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v7, v9, v2}, Lhcj;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v1

    .line 2252
    :goto_2
    if-eqz v1, :cond_7

    .line 2253
    iget-object v2, v8, Laeq;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    invoke-interface {v2, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->hasImageCache(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2255
    iput-object v1, v8, Laeq;->i:Ljava/lang/String;

    .line 2256
    invoke-static {}, Lgzp;->b()Lgzn;

    move-result-object v2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->filename()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v8, Laeq;->q:Lcom/alibaba/wukong/Callback;

    invoke-interface {v2, v1, v4, v0, v3}, Lgzn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 2267
    :goto_3
    iget-object v0, v8, Laeq;->g:Ljava/util/HashMap;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, v8, Laeq;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2268
    iget-object v0, v8, Laeq;->f:Landroid/util/SparseArray;

    iget v1, v8, Laeq;->h:I

    iget-object v2, v8, Laeq;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2249
    :cond_5
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v1

    invoke-virtual {v1, v5, v7, v9, v3}, Lhcj;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 2259
    :cond_6
    iput-object v1, v8, Laeq;->i:Ljava/lang/String;

    .line 2260
    iget-object v0, v8, Laeq;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    const-string/jumbo v2, "Chat2MailHelper_BIG"

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/image/ImageMagician;->preDownloadImage(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)V

    goto :goto_3

    .line 2264
    :cond_7
    iput-object v5, v8, Laeq;->i:Ljava/lang/String;

    .line 2265
    iget-object v0, v8, Laeq;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    const-string/jumbo v2, "Chat2MailHelper_BIG"

    move-object v1, v5

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/image/ImageMagician;->preDownloadImage(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)V

    goto :goto_3

    .line 3414
    :pswitch_1
    iget-object v0, v8, Laeq;->l:Ljava/util/List;

    iget v1, v8, Laeq;->j:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/alibaba/wukong/im/Message;

    .line 3417
    iget-object v0, v8, Laeq;->e:Lfp;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    .line 4096
    invoke-virtual {v0, v2, v3, v4}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3417
    if-eqz v0, :cond_9

    .line 3418
    iget v0, v8, Laeq;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Laeq;->j:I

    .line 3419
    iget v0, v8, Laeq;->j:I

    iget-object v1, v8, Laeq;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 3420
    iget-object v0, v8, Laeq;->d:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3422
    :cond_8
    iget-object v0, v8, Laeq;->d:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3427
    :cond_9
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    .line 3428
    iget-object v1, v8, Laeq;->k:Lcom/alibaba/wukong/im/Conversation;

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;->CHAT:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    move-result-object v6

    .line 3430
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v0

    iget-object v1, v8, Laeq;->k:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Laeq;->k:Lcom/alibaba/wukong/im/Conversation;

    .line 3431
    invoke-static {v2}, Lajl;->a(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    .line 3432
    invoke-interface {v7}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v4

    new-instance v9, Laeq$4;

    invoke-direct {v9, v8, v7}, Laeq$4;-><init>(Laeq;Lcom/alibaba/wukong/im/Message;)V

    const-class v7, Lcom/alibaba/wukong/Callback;

    iget-object v10, v8, Laeq;->c:Landroid/app/Activity;

    .line 3434
    invoke-static {v9, v7, v10}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/Callback;

    .line 3430
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 159
    :pswitch_2
    invoke-static {v8}, Laeq;->a(Laeq;)V

    goto/16 :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
