.class public final Lgll;
.super Ljava/lang/Object;
.source "SpaceSaveMessageManager.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/alibaba/wukong/im/Message;

.field public c:Lcom/alibaba/wukong/im/Conversation;

.field public d:Lcma;

.field public e:Lcom/alibaba/wukong/im/MessageContent;

.field public f:I

.field public g:Z

.field public h:J

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;Lcma;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p4, "callback"    # Lcma;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lgll;->a:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lgll;->b:Lcom/alibaba/wukong/im/Message;

    .line 59
    iput-object p3, p0, Lgll;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 60
    iput-object p4, p0, Lgll;->d:Lcma;

    .line 61
    invoke-static {p3}, Lgri;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgll;->i:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;IIJ)Ljava/lang/String;
    .locals 5
    .param p0, "contentType"    # I
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "extenstion"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "fileSize"    # J

    .prologue
    .line 328
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 366
    .end local p1    # "fileName":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 331
    .restart local p1    # "fileName":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 1370
    .local v1, "sbFileName":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->g()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "saveTime":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 334
    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 335
    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/16 v2, 0xfb

    if-ne p0, v2, :cond_7

    .line 336
    :cond_1
    const-string/jumbo v2, "pic"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 337
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 338
    const-string/jumbo p2, "jpg"

    .line 348
    :cond_2
    :goto_1
    if-lez p3, :cond_3

    .line 349
    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 350
    invoke-virtual {v1, p3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 352
    :cond_3
    if-lez p4, :cond_4

    .line 353
    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 354
    invoke-virtual {v1, p4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 357
    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-lez v2, :cond_5

    .line 358
    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 359
    invoke-virtual {v1, p5, p6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 362
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 363
    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 364
    invoke-virtual {v1, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 366
    :cond_6
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 340
    :cond_7
    const/4 v2, 0x4

    if-ne p0, v2, :cond_8

    .line 341
    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 342
    :cond_8
    const/16 v2, 0x67

    if-eq p0, v2, :cond_9

    const/16 v2, 0xfd

    if-ne p0, v2, :cond_2

    .line 343
    :cond_9
    const-string/jumbo v2, "sight"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 344
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 345
    const-string/jumbo p2, "mp4"

    goto :goto_1
.end method

.method public static a(Lcom/alibaba/wukong/im/MessageContent$ImageContent;)Ljava/lang/String;
    .locals 2
    .param p0, "imageContent"    # Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .prologue
    .line 252
    const-string/jumbo v0, "jpg"

    .line 1257
    if-nez p0, :cond_0

    .line 1258
    :goto_0
    return-object v0

    .line 1261
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->fileType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1275
    invoke-static {p0, v0}, Lgll;->a(Lcom/alibaba/wukong/im/MessageContent$ImageContent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1263
    :pswitch_0
    const-string/jumbo v0, "png"

    goto :goto_0

    .line 1266
    :pswitch_1
    const-string/jumbo v0, "gif"

    goto :goto_0

    .line 1269
    :pswitch_2
    const-string/jumbo v0, "jpg"

    goto :goto_0

    .line 1272
    :pswitch_3
    const-string/jumbo v0, "webp"

    goto :goto_0

    .line 1261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Lcom/alibaba/wukong/im/MessageContent$ImageContent;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "imageContent"    # Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 283
    if-nez p0, :cond_1

    .line 324
    .end local p1    # "defaultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 286
    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->url()Ljava/lang/String;

    move-result-object v5

    .line 287
    .local v5, "url":Ljava/lang/String;
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 290
    invoke-static {v5}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "mediaIdString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 296
    :try_start_0
    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 301
    .local v2, "mediaId":Lcom/laiwang/protocol/media/MediaId;
    if-eqz v2, :cond_0

    .line 305
    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaId;->getExtType()Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "extension":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object p1, v1

    .line 307
    goto :goto_0

    .line 286
    .end local v1    # "extension":Ljava/lang/String;
    .end local v2    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    .end local v3    # "mediaIdString":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_2
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 297
    .restart local v3    # "mediaIdString":Ljava/lang/String;
    .restart local v5    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0

    .line 309
    .end local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    .restart local v1    # "extension":Ljava/lang/String;
    .restart local v2    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    :cond_3
    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaId;->getType()Lcom/laiwang/protocol/media/MediaType;

    move-result-object v4

    .line 310
    .local v4, "mediaType":Lcom/laiwang/protocol/media/MediaType;
    if-eqz v4, :cond_0

    .line 311
    sget-object v6, Lgll$3;->a:[I

    invoke-virtual {v4}, Lcom/laiwang/protocol/media/MediaType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 313
    :pswitch_0
    const-string/jumbo p1, "jpg"

    goto :goto_0

    .line 315
    :pswitch_1
    const-string/jumbo p1, "gif"

    goto :goto_0

    .line 317
    :pswitch_2
    const-string/jumbo p1, "png"

    goto :goto_0

    .line 319
    :pswitch_3
    const-string/jumbo p1, "bmp"

    goto :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lgll;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lgll;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 44
    .line 1386
    iget-object v0, p0, Lgll;->d:Lcma;

    if-eqz v0, :cond_0

    .line 1387
    iget-object v0, p0, Lgll;->d:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lgll;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lgll;->a:Landroid/content/Context;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 202
    :cond_0
    return-void
.end method
