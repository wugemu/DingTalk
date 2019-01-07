.class public abstract Lcuw;
.super Lctv;
.source "EncryptImageViewHolder.java"


# instance fields
.field protected S:Landroid/widget/ImageView;

.field protected Y:Landroid/widget/TextView;

.field private Z:Ljava/lang/String;

.field protected final a:Z

.field private aa:Landroid/view/View;

.field protected b:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcuw;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 69
    iput-boolean p1, p0, Lcuw;->a:Z

    .line 70
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcuw;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 71
    return-void
.end method

.method static synthetic a(Lcuw;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcuw;

    .prologue
    .line 58
    iget-object v0, p0, Lcuw;->Z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcuw;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcuw;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcuw;->Z:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcuw;Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 4
    .param p0, "x0"    # Lcuw;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v3, 0x0

    .line 58
    .line 7277
    invoke-static {p2}, Lcuw;->c(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    move-result-object v0

    .line 7278
    if-eqz v0, :cond_0

    .line 7279
    invoke-interface {v0, v3}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->setThumbId(Ljava/lang/String;)V

    .line 7281
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7282
    const-string/jumbo v1, "thumb_id_invalid"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7283
    invoke-interface {p2, v0}, Lcom/alibaba/wukong/im/Message;->updateLocalExtrasByKeys(Ljava/util/Map;)V

    .line 7285
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "thumb invalid then download source"

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7286
    invoke-virtual {p0, p1, p2}, Lcuw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 58
    return-void
.end method

.method static synthetic a(Lcuw;Lcom/alibaba/wukong/im/Message;)Z
    .locals 1
    .param p0, "x0"    # Lcuw;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcuw;->d(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .locals 3
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 238
    if-nez p1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-object v1

    .line 241
    :cond_1
    invoke-static {p1}, Lcuw;->c(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    move-result-object v0

    .line 242
    .local v0, "imageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    if-eqz v0, :cond_0

    .line 245
    invoke-static {p1}, Ldrp;->d(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v1

    .line 246
    .local v1, "result":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    invoke-direct {p0, p1}, Lcuw;->d(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getThumbId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic b(Lcuw;)Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2
    .param p0, "x0"    # Lcuw;

    .prologue
    .line 7231
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 7232
    const-string/jumbo v1, "EncryptImageViewHolder"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 7233
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 58
    return-object v0
.end method

.method private static c(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    .locals 1
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 254
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 257
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    goto :goto_0
.end method

.method static synthetic c(Lcuw;)Z
    .locals 1
    .param p0, "x0"    # Lcuw;

    .prologue
    .line 58
    invoke-static {}, Lcuw;->u()Z

    move-result v0

    return v0
.end method

.method private d(Lcom/alibaba/wukong/im/Message;)Z
    .locals 8
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 261
    invoke-static {p1}, Lcuw;->c(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    move-result-object v1

    .line 262
    .local v1, "imageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getThumbId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v4

    .line 263
    .local v0, "hasThumb":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 264
    const/4 v2, 0x1

    .line 265
    .local v2, "valid":Z
    invoke-static {}, Lcuw;->u()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 266
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "1"

    .line 267
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v6

    const-string/jumbo v7, "thumb_id_invalid"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_0
    move v2, v4

    .line 272
    .end local v2    # "valid":Z
    :cond_1
    :goto_1
    return v2

    .end local v0    # "hasThumb":Z
    :cond_2
    move v0, v3

    .line 262
    goto :goto_0

    .restart local v0    # "hasThumb":Z
    .restart local v2    # "valid":Z
    :cond_3
    move v2, v3

    .line 267
    goto :goto_1

    .end local v2    # "valid":Z
    :cond_4
    move v2, v3

    .line 272
    goto :goto_1
.end method

.method private static u()Z
    .locals 3

    .prologue
    .line 291
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_thumb_id_invalid_comp_enable"

    .line 7083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 291
    return v0
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    iget-object v0, p0, Lcuw;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcuw;->S:Landroid/widget/ImageView;

    .line 91
    iget-object v0, p0, Lcuw;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_size:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcuw;->Y:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcuw;->r:Landroid/view/View;

    sget v1, Lctk$f;->ic_gif:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcuw;->aa:Landroid/view/View;

    .line 93
    invoke-virtual {p0, p2}, Lcuw;->c(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 8
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 295
    if-eqz p2, :cond_1

    .line 296
    invoke-direct {p0, p2}, Lcuw;->b(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v1

    .line 297
    .local v1, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz v1, :cond_1

    .line 298
    invoke-virtual {p0}, Lcuw;->r()V

    .line 299
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "EncryptImageViewHolder"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "EncryptImageViewHolder downloadImage start msgId "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ", spaceDo spaceId "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, ", fileId "

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-object v6, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v0, Lcuw$2;

    invoke-direct {v0, p0, p2, p1, v1}, Lcuw$2;-><init>(Lcuw;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 366
    .local v0, "downloadListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    iget-object v2, p0, Lcuw;->d:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 367
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcma;

    iget-object v4, p0, Lcuw;->d:Landroid/app/Activity;

    invoke-interface {v2, v0, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "downloadListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    check-cast v0, Lcma;

    .line 370
    .restart local v0    # "downloadListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V

    .line 373
    .end local v0    # "downloadListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    .end local v1    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_1
    return-void
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 13
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    invoke-virtual {p0}, Lcuw;->q()V

    .line 100
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_2

    .line 101
    const/4 v8, 0x1

    .line 102
    .local v8, "hasLoadingDrawable":Z
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v9

    check-cast v9, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    .line 103
    .local v9, "imageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    invoke-direct {p0, p2}, Lcuw;->b(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v12

    .line 104
    .local v12, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v0, v12, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iget-object v1, v12, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    iget-object v2, v12, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ldrp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 105
    .local v11, "imageKey":Ljava/lang/String;
    const-string/jumbo v0, "gif"

    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->fileType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    iget-object v0, p0, Lcuw;->aa:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :goto_0
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcuw;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    invoke-interface {v0, v11}, Lcom/alibaba/doraemon/image/ImageMagician;->hasImageCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 111
    iput-object v11, p0, Lcuw;->Z:Ljava/lang/String;

    .line 1078
    new-instance v6, Lhcg$a;

    invoke-direct {v6}, Lhcg$a;-><init>()V

    .line 113
    .local v6, "imageProperty":Lhcg$a;
    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getOrientation()I

    move-result v0

    .line 1114
    iput v0, v6, Lhcg$a;->e:I

    .line 114
    const/4 v0, 0x0

    .line 2109
    iput-boolean v0, v6, Lhcg$a;->c:Z

    .line 115
    const/16 v0, 0xa

    .line 2119
    iput v0, v6, Lhcg$a;->f:I

    .line 116
    const/4 v0, 0x0

    .line 2124
    iput-boolean v0, v6, Lhcg$a;->d:Z

    .line 117
    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getPicHeight()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getPicWidth()I

    move-result v0

    if-lez v0, :cond_4

    .line 118
    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getPicHeight()I

    move-result v0

    .line 2134
    iput v0, v6, Lhcg$a;->h:I

    .line 119
    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getPicWidth()I

    move-result v0

    .line 3129
    iput v0, v6, Lhcg$a;->g:I

    .line 126
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcuw;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 127
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 128
    iget-object v1, p0, Lcuw;->S:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcuw;->Z:Ljava/lang/String;

    iget-object v4, p0, Lcuw;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v5, p0, Lcuw;->L:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lhcg;->b(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/AbsListView;Lhcg$a;)V

    .line 6389
    :cond_0
    :goto_2
    iget-object v0, p0, Lcuw;->S:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcuw;->S:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;

    if-eqz v0, :cond_2

    .line 6390
    iget-object v0, p0, Lcuw;->S:Landroid/widget/ImageView;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;

    .line 6391
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 6392
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 6394
    if-eqz v8, :cond_d

    .line 6395
    invoke-static {}, Lcms;->c()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcms;->f()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 6396
    :cond_1
    sget v2, Lctk$e;->chatting_default_encrypt_image:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->setLoadingDrawable(I)V

    .line 6403
    :goto_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lctk$e;->im_chat_arrow_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->setForgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6404
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    .end local v6    # "imageProperty":Lhcg$a;
    .end local v8    # "hasLoadingDrawable":Z
    .end local v9    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    .end local v11    # "imageKey":Ljava/lang/String;
    .end local v12    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_2
    iget-object v0, p0, Lcuw;->S:Landroid/widget/ImageView;

    new-instance v1, Lcuw$1;

    invoke-direct {v1, p0, p1, p2}, Lcuw$1;-><init>(Lcuw;Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcuw;->S:Landroid/widget/ImageView;

    sget-object v1, Lcuw;->c:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 223
    iget-object v0, p0, Lcuw;->S:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcuw;->a(Landroid/widget/ImageView;)V

    .line 224
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    invoke-virtual {p0, p1, p2}, Lcuw;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 227
    iget-object v0, p0, Lcuw;->S:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcuw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 228
    return-void

    .line 108
    .restart local v8    # "hasLoadingDrawable":Z
    .restart local v9    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    .restart local v11    # "imageKey":Ljava/lang/String;
    .restart local v12    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_3
    iget-object v0, p0, Lcuw;->aa:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 121
    .restart local v6    # "imageProperty":Lhcg$a;
    :cond_4
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    .line 122
    .local v7, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v0, "message has not width or height  "

    invoke-virtual {v7, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcuw;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 123
    const-string/jumbo v0, "crypto"

    const/4 v1, 0x0

    invoke-virtual {v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 130
    .end local v7    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_5
    iget-object v1, p0, Lcuw;->S:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcuw;->Z:Ljava/lang/String;

    iget-object v4, p0, Lcuw;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v5, p0, Lcuw;->L:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lhcg;->b(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/AbsListView;Lhcg$a;)V

    goto/16 :goto_2

    .line 4078
    .end local v6    # "imageProperty":Lhcg$a;
    :cond_6
    new-instance v6, Lhcg$a;

    invoke-direct {v6}, Lhcg$a;-><init>()V

    .line 134
    .restart local v6    # "imageProperty":Lhcg$a;
    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getOrientation()I

    move-result v0

    .line 4114
    iput v0, v6, Lhcg$a;->e:I

    .line 135
    const/4 v0, 0x0

    .line 5109
    iput-boolean v0, v6, Lhcg$a;->c:Z

    .line 136
    const/16 v0, 0xa

    .line 5119
    iput v0, v6, Lhcg$a;->f:I

    .line 137
    const/4 v0, 0x0

    .line 5124
    iput-boolean v0, v6, Lhcg$a;->d:Z

    .line 138
    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getPicHeight()I

    move-result v0

    if-lez v0, :cond_8

    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getPicWidth()I

    move-result v0

    if-lez v0, :cond_8

    .line 139
    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getPicHeight()I

    move-result v0

    .line 5134
    iput v0, v6, Lhcg$a;->h:I

    .line 140
    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getPicWidth()I

    move-result v0

    .line 6129
    iput v0, v6, Lhcg$a;->g:I

    .line 147
    :goto_4
    const/4 v10, 0x0

    .line 148
    .local v10, "imageFile":Ljava/io/File;
    iget-object v0, v12, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v12, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-static {v0}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 149
    new-instance v10, Ljava/io/File;

    .end local v10    # "imageFile":Ljava/io/File;
    iget-object v0, v12, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .restart local v10    # "imageFile":Ljava/io/File;
    :cond_7
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 152
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcuw;->Z:Ljava/lang/String;

    .line 154
    invoke-virtual {p0, p1, p2}, Lcuw;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 155
    iget-object v1, p0, Lcuw;->S:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcuw;->Z:Ljava/lang/String;

    iget-object v4, p0, Lcuw;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v5, p0, Lcuw;->L:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lhcg;->b(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/AbsListView;Lhcg$a;)V

    goto/16 :goto_2

    .line 142
    .end local v10    # "imageFile":Ljava/io/File;
    :cond_8
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    .line 143
    .restart local v7    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v0, "message has not width or height  "

    invoke-virtual {v7, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcuw;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 144
    const-string/jumbo v0, "crypto"

    const/4 v1, 0x0

    invoke-virtual {v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 157
    .end local v7    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v10    # "imageFile":Ljava/io/File;
    :cond_9
    iget-object v0, p0, Lcuw;->S:Landroid/widget/ImageView;

    iget-object v1, p0, Lcuw;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    invoke-static {v0, v1, v6}, Lhcg;->a(Landroid/widget/ImageView;Lcom/alibaba/doraemon/image/ImageMagician;Lhcg$a;)V

    .line 158
    if-eqz v12, :cond_0

    .line 160
    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->size()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    .line 161
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    .line 162
    .restart local v7    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->size()J

    move-result-wide v4

    long-to-float v3, v4

    const/high16 v4, 0x49800000    # 1048576.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "MB"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcuw;->d:Landroid/app/Activity;

    sget v2, Lctk$i;->dt_chat_image_encrypt_tap:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 163
    iget-object v0, p0, Lcuw;->Y:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcuw;->Y:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    const/4 v8, 0x0

    .line 166
    invoke-direct {p0, p2}, Lcuw;->d(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 167
    iget-object v0, p0, Lcuw;->X:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {p0, p1, v0}, Lcuw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    goto/16 :goto_2

    .line 170
    :cond_a
    invoke-static {p1}, Lcms;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcuw;->X:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {p0, p1, v0}, Lcuw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    goto/16 :goto_2

    .line 175
    .end local v7    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_b
    iget-object v0, p0, Lcuw;->Y:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcuw;->X:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {p0, p1, v0}, Lcuw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    goto/16 :goto_2

    .line 6398
    .end local v10    # "imageFile":Ljava/io/File;
    :cond_c
    sget v2, Lctk$e;->chatting_default_encrypt_image_en:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->setLoadingDrawable(I)V

    goto/16 :goto_3

    .line 6401
    :cond_d
    sget v2, Lctk$e;->transprent:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->setLoadingDrawable(I)V

    goto/16 :goto_3
.end method

.method protected abstract b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end method

.method protected abstract c(Landroid/view/View;)V
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 410
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcuw;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_image:I

    invoke-static {v2}, Lcuw;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    sget v0, Lctk$i;->lst_msg_tip_pic:I

    invoke-static {v0}, Lcuw;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 74
    iget-object v1, p0, Lcuw;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcuw;->X:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0, v1}, Lcuw;->b(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    .line 76
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 79
    :cond_0
    iput-object v2, p0, Lcuw;->Z:Ljava/lang/String;

    .line 80
    iput-object v2, p0, Lcuw;->X:Lcom/alibaba/wukong/im/Message;

    .line 83
    .end local v0    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_1
    iget-object v1, p0, Lcuw;->Y:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Lcuw;->Y:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    :cond_2
    return-void
.end method

.method protected abstract q()V
.end method

.method protected abstract r()V
.end method

.method protected abstract s()V
.end method

.method protected abstract t()V
.end method
