.class public final Ldiz;
.super Ljava/lang/Object;
.source "ChatMessageSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldiz$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field public a:Ldkh;

.field public b:Ldiz$a;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-class v0, Ldiz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldiz;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ldkh;

    invoke-direct {v0, p1}, Ldkh;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    iput-object v0, p0, Ldiz;->a:Ldkh;

    .line 127
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iput-object v0, p0, Ldiz;->d:Landroid/os/Handler;

    .line 128
    return-void
.end method

.method private static a(Ljava/io/File;)I
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 1416
    const/4 v1, 0x1

    .line 1419
    .local v1, "orientation":I
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1420
    .local v0, "exif":Landroid/media/ExifInterface;
    const-string/jumbo v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1424
    .end local v0    # "exif":Landroid/media/ExifInterface;
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic a(Ldiz;)Ldiz$a;
    .locals 1
    .param p0, "x0"    # Ldiz;

    .prologue
    .line 100
    iget-object v0, p0, Ldiz;->b:Ldiz$a;

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 10
    .param p0, "shareThumbData"    # [B

    .prologue
    .line 737
    const/4 v5, 0x0

    .line 738
    .local v5, "picUrl":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 739
    const/4 v7, 0x0

    array-length v8, p0

    invoke-static {p0, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 741
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 743
    :try_start_0
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyyMMddHHmmssSSS"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 744
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/io/File;

    invoke-static {}, Ldhw;->a()Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 745
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 746
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    :cond_0
    const/4 v1, 0x0

    .line 750
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 751
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    :try_start_2
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 755
    :try_start_3
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 757
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 760
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1
    if-eqz v0, :cond_2

    .line 761
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 766
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    return-object v5

    .line 752
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v3

    .line 753
    .local v3, "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 755
    :try_start_5
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 760
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    :catchall_0
    move-exception v7

    if-eqz v0, :cond_3

    .line 761
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    throw v7

    .line 755
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "sdf":Ljava/text/SimpleDateFormat;
    :catchall_1
    move-exception v7

    :goto_2
    :try_start_6
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v7

    move-object v1, v2

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_2

    .line 752
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method

.method private a(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;Z)V
    .locals 8
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "isAutoSending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 208
    .local p2, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 7236
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    const/4 v0, 0x0

    .line 4066
    .local v0, "encrypted":Z
    invoke-static {}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$a;->a()Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;

    .line 212
    iget-object v1, p0, Ldiz;->a:Ldkh;

    .line 5021
    iget-object v1, v1, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 212
    invoke-static {v1}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    .line 5071
    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->a(J)Z

    move-result v1

    .line 212
    if-nez v1, :cond_6

    .line 213
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v1

    iget-object v2, p0, Ldiz;->a:Ldkh;

    .line 6021
    iget-object v2, v2, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 213
    invoke-virtual {v1, v2}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 214
    iget-object v1, p0, Ldiz;->a:Ldkh;

    .line 7021
    iget-object v1, v1, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 214
    invoke-static {v1}, Lddq;->h(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 7225
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7228
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7229
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 7230
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 7231
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7234
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7235
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;ZZ)V

    goto/16 :goto_0

    .line 7238
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    new-instance v3, Ldiz$1;

    invoke-direct {v3, p0, p1, p2, p3}, Ldiz$1;-><init>(Ldiz;Lcom/alibaba/wukong/im/Message;Ljava/util/Map;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto/16 :goto_0

    .line 218
    :cond_5
    const/4 v0, 0x1

    .line 221
    :cond_6
    invoke-direct {p0, p1, p2, p3, v0}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;ZZ)V

    goto/16 :goto_0
.end method

.method private a(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;ZZ)V
    .locals 2
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "isAutoSending"    # Z
    .param p4, "encrypted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 274
    .local p2, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 292
    :goto_0
    return-void

    .line 277
    :cond_0
    const/4 v0, 0x0

    .line 278
    .local v0, "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    if-eqz p4, :cond_1

    .line 279
    new-instance v0, Lcom/alibaba/wukong/im/MessageSendInfo;

    .end local v0    # "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    invoke-direct {v0}, Lcom/alibaba/wukong/im/MessageSendInfo;-><init>()V

    .line 280
    .restart local v0    # "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    iput-object v1, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->messageType:Lcom/alibaba/wukong/im/Message$MessageType;

    .line 282
    :cond_1
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 283
    if-nez v0, :cond_2

    .line 284
    new-instance v0, Lcom/alibaba/wukong/im/MessageSendInfo;

    .end local v0    # "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    invoke-direct {v0}, Lcom/alibaba/wukong/im/MessageSendInfo;-><init>()V

    .line 286
    .restart local v0    # "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->extension:Ljava/util/Map;

    .line 288
    :cond_3
    if-eqz v0, :cond_4

    .line 289
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v1, p1, v0}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageSendInfo;)Lcom/alibaba/wukong/im/Message;

    move-result-object p1

    .line 291
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p3}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZ)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/wukong/im/Message;ZZLjava/lang/String;)V
    .locals 7
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "sendSMS"    # Z
    .param p3, "isAutoSending"    # Z
    .param p4, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1531
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZLjava/lang/String;Ljava/lang/String;Z)V

    .line 1532
    return-void
.end method

.method static synthetic a(Ldiz;I)V
    .locals 3
    .param p0, "x0"    # Ldiz;
    .param p1, "x1"    # I

    .prologue
    .line 100
    .line 33039
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 33040
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 33041
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    sget-object v2, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 33042
    iget-object v0, p0, Ldiz;->a:Ldkh;

    .line 34021
    iget-object v0, v0, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 33042
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/Message;->sendToLocal(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V

    .line 100
    return-void
.end method

.method static synthetic a(Ldiz;J)V
    .locals 7
    .param p0, "x0"    # Ldiz;
    .param p1, "x1"    # J

    .prologue
    .line 100
    .line 30046
    iget-object v0, p0, Ldiz;->a:Ldkh;

    .line 31021
    iget-object v0, v0, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 30046
    if-eqz v0, :cond_0

    iget-object v0, p0, Ldiz;->a:Ldkh;

    .line 32021
    iget-object v0, v0, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 30046
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 30047
    iget-object v0, p0, Ldiz;->a:Ldkh;

    .line 33021
    iget-object v0, v0, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 30047
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 30049
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 30050
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendMessageBySms receiverId\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " msgId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30051
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v0

    invoke-virtual {v0}, Ldyn;->c()Ldxx;

    move-result-object v1

    new-instance v6, Ldiz$5;

    invoke-direct {v6, p0}, Ldiz$5;-><init>(Ldiz;)V

    move-wide v4, p1

    invoke-interface/range {v1 .. v6}, Ldxx;->a(JJLcma;)V

    .line 100
    :cond_0
    return-void
.end method

.method static synthetic a(Ldiz;Lcom/alibaba/wukong/im/Message;Ljava/util/Map;ZZ)V
    .locals 0
    .param p0, "x0"    # Ldiz;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;ZZ)V

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;)Z
    .locals 4
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 791
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 792
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "picUrl"    # Ljava/lang/String;
    .param p4, "isAutoSending"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 705
    invoke-virtual {p0}, Ldiz;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldiz;->a:Ldkh;

    .line 9021
    iget-object v0, v0, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 705
    invoke-static {v0}, Lddq;->k(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lddq;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    const-string/jumbo v0, "reaction_card"

    const-string/jumbo v1, "1"

    invoke-interface {p1, v0, v1}, Lcom/alibaba/wukong/im/Message;->updateLocalExtension(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    :cond_0
    invoke-virtual {p0}, Ldiz;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v0, p1, v3}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;I)Lcom/alibaba/wukong/im/Message;

    move-result-object p1

    .line 712
    :cond_1
    invoke-static {p3}, Lieb;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 713
    invoke-direct {p0, p1, v2, p4, p3}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZLjava/lang/String;)V

    .line 717
    :goto_0
    return v3

    .line 715
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, p4, v0}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZLjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Ldiz;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Ldiz;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ldiz;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private final a(Ljava/io/File;Ljava/lang/String;ILhcg$b;I)Z
    .locals 11
    .param p1, "file"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "picFlag"    # I
    .param p4, "size"    # Lhcg$b;
    .param p5, "orientation"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 958
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhcs;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 959
    .local v5, "fileType":Ljava/lang/String;
    if-eqz p4, :cond_1

    .line 13164
    iget v7, p4, Lhcg$b;->a:I

    .line 960
    .local v7, "width":I
    :goto_0
    if-eqz p4, :cond_2

    .line 13168
    iget v8, p4, Lhcg$b;->b:I

    .line 962
    .local v8, "height":I
    :goto_1
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 963
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    move-object v4, p2

    move v6, p3

    move/from16 v9, p5

    .line 962
    invoke-interface/range {v0 .. v9}, Lcom/alibaba/wukong/im/MessageBuilder;->buildEncryptImageMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IIII)Lcom/alibaba/wukong/im/Message;

    move-result-object v10

    .line 964
    .local v10, "message":Lcom/alibaba/wukong/im/Message;
    invoke-virtual {p0}, Ldiz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const/4 v1, 0x1

    invoke-interface {v0, v10, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;I)Lcom/alibaba/wukong/im/Message;

    move-result-object v10

    .line 967
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v10, v0, v1}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V

    .line 968
    const/4 v0, 0x1

    return v0

    .line 959
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v10    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 960
    .restart local v7    # "width":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILdcu;)Z
    .locals 22
    .param p1, "emotionPackageId"    # Ljava/lang/String;
    .param p2, "emotionId"    # J
    .param p4, "emotionType"    # I
    .param p5, "emotionMediaId"    # Ljava/lang/String;
    .param p6, "authMediaId"    # Ljava/lang/String;
    .param p7, "praiseUuid"    # Ljava/lang/String;
    .param p8, "emotionCustomName"    # Ljava/lang/String;
    .param p9, "praiseType"    # I
    .param p10, "urlPrefix"    # Ljava/lang/String;
    .param p11, "praiseThumbMediaId"    # Ljava/lang/String;
    .param p12, "praiseTag"    # I
    .param p13, "messageInfoListener"    # Ldcu;

    .prologue
    .line 1259
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 1260
    .local v20, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "packagename"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    const-string/jumbo v4, "emotionid"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "chat_emoji_send_click"

    move-object/from16 v0, v20

    invoke-interface {v4, v5, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1266
    invoke-virtual/range {p0 .. p0}, Ldiz;->a()V

    .line 1268
    :try_start_0
    invoke-static/range {p5 .. p5}, Ldjy;->b(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v17

    .line 1269
    .local v17, "mediaIdObject":Lcom/laiwang/protocol/media/MediaId;
    invoke-static/range {p6 .. p6}, Ldjy;->b(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v13

    .line 1270
    .local v13, "authMediaIdObject":Lcom/laiwang/protocol/media/MediaId;
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-wide/from16 v0, p2

    invoke-virtual {v4, v6, v7, v0, v1}, Ldpt;->a(JJ)Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    move-result-object v14

    .line 1271
    .local v14, "emotionDetailObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    const/4 v15, 0x0

    .line 1272
    .local v15, "emotionLocalPath":Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 1273
    iget-object v15, v14, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->originPath:Ljava/lang/String;

    .line 1275
    :cond_0
    if-nez v17, :cond_1

    if-nez p6, :cond_1

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1276
    const/4 v4, 0x0

    .line 1331
    .end local v13    # "authMediaIdObject":Lcom/laiwang/protocol/media/MediaId;
    .end local v14    # "emotionDetailObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    .end local v15    # "emotionLocalPath":Ljava/lang/String;
    .end local v17    # "mediaIdObject":Lcom/laiwang/protocol/media/MediaId;
    :goto_0
    return v4

    .line 16346
    .restart local v13    # "authMediaIdObject":Lcom/laiwang/protocol/media/MediaId;
    .restart local v14    # "emotionDetailObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    .restart local v15    # "emotionLocalPath":Ljava/lang/String;
    .restart local v17    # "mediaIdObject":Lcom/laiwang/protocol/media/MediaId;
    :cond_1
    if-nez v17, :cond_2

    if-nez v13, :cond_2

    .line 16347
    const/4 v4, 0x1

    .line 1278
    :goto_1
    if-eqz v4, :cond_4

    .line 1279
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ldiz;->a(Ljava/lang/String;)Z

    .line 1331
    .end local v13    # "authMediaIdObject":Lcom/laiwang/protocol/media/MediaId;
    .end local v14    # "emotionDetailObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    .end local v15    # "emotionLocalPath":Ljava/lang/String;
    .end local v17    # "mediaIdObject":Lcom/laiwang/protocol/media/MediaId;
    :goto_2
    const/4 v4, 0x0

    goto :goto_0

    .line 16350
    .restart local v13    # "authMediaIdObject":Lcom/laiwang/protocol/media/MediaId;
    .restart local v14    # "emotionDetailObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    .restart local v15    # "emotionLocalPath":Ljava/lang/String;
    .restart local v17    # "mediaIdObject":Lcom/laiwang/protocol/media/MediaId;
    :cond_2
    if-eqz v15, :cond_3

    .line 16353
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16354
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 16357
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 16358
    const/4 v4, 0x1

    goto :goto_1

    .line 16360
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 1281
    :cond_4
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1282
    .local v12, "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "p_id"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    const-string/jumbo v4, "e_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    const-string/jumbo v4, "p_type"

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    const-string/jumbo v4, "isPraise"

    invoke-static/range {p12 .. p12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17109
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1287
    const-wide/16 v6, -0xa

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    .line 1288
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1289
    const-string/jumbo v4, "pr_uuid"

    move-object/from16 v0, p7

    invoke-virtual {v12, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    :cond_5
    const-string/jumbo v4, "pr_type"

    invoke-static/range {p9 .. p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1293
    const-string/jumbo v4, "pr_url"

    move-object/from16 v0, p10

    invoke-virtual {v12, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    :cond_6
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1296
    const-string/jumbo v4, "thumb"

    move-object/from16 v0, p11

    invoke-virtual {v12, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    :cond_7
    move-object/from16 v16, p8

    .line 1300
    .local v16, "emotionName":Ljava/lang/String;
    if-eqz v14, :cond_8

    .line 1301
    iget-object v0, v14, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1303
    :cond_8
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1304
    const-string/jumbo v4, "p_name"

    move-object/from16 v0, v16

    invoke-virtual {v12, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    :cond_9
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1307
    const-string/jumbo v16, "\u8868\u60c5"

    .line 1309
    :cond_a
    const-class v4, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageBuilder;

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-interface/range {v4 .. v12}, Lcom/alibaba/wukong/im/MessageBuilder;->buildImageMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v18

    .line 1310
    .local v18, "message":Lcom/alibaba/wukong/im/Message;
    invoke-virtual/range {p0 .. p0}, Ldiz;->b()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1311
    const-class v4, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageBuilder;

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-interface {v4, v0, v5}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;I)Lcom/alibaba/wukong/im/Message;

    move-result-object v18

    .line 1323
    :cond_b
    :goto_3
    if-eqz p13, :cond_c

    .line 1324
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p13

    invoke-interface {v0, v4}, Ldcu;->a(Ljava/lang/String;)V

    .line 1326
    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v4, v2}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V

    .line 1327
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1314
    :cond_d
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1315
    new-instance v21, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct/range {v21 .. v21}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    .line 1318
    .local v21, "xpnInfo":Lcom/alibaba/wukong/im/XPNInfo;
    const-string/jumbo v19, "\u8868\u60c5"

    .line 1319
    .local v19, "name":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "["

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v19, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "]"

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/alibaba/wukong/im/XPNInfo;->msgText:Ljava/lang/String;

    .line 1320
    const-class v4, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v4, v0, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/XPNInfo;)Lcom/alibaba/wukong/im/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    goto :goto_3

    .end local v12    # "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "authMediaIdObject":Lcom/laiwang/protocol/media/MediaId;
    .end local v14    # "emotionDetailObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    .end local v15    # "emotionLocalPath":Ljava/lang/String;
    .end local v16    # "emotionName":Ljava/lang/String;
    .end local v17    # "mediaIdObject":Lcom/laiwang/protocol/media/MediaId;
    .end local v18    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v19    # "name":Ljava/lang/String;
    .end local v21    # "xpnInfo":Lcom/alibaba/wukong/im/XPNInfo;
    :catch_0
    move-exception v4

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p4, "isAutoSending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .local p3, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    invoke-virtual {p0}, Ldiz;->a()V

    .line 196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 204
    :goto_0
    return v1

    .line 199
    :cond_0
    invoke-static {p1}, Ldiz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 201
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v1, p1, p2}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 202
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v1, v0, v3}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;I)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 203
    invoke-direct {p0, v0, p3, v2}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;Z)V

    move v1, v3

    .line 204
    goto :goto_0
.end method

.method static synthetic b(Ldiz;)Ldkh;
    .locals 1
    .param p0, "x0"    # Ldiz;

    .prologue
    .line 100
    iget-object v0, p0, Ldiz;->a:Ldkh;

    return-object v0
.end method

.method private static b(Ljava/io/File;)Lhcg$b;
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 1428
    const/4 v2, 0x0

    .line 1431
    .local v2, "size":Lhcg$b;
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1432
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1433
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1434
    new-instance v3, Lhcg$b;

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v3, v4, v5}, Lhcg$b;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "size":Lhcg$b;
    .local v3, "size":Lhcg$b;
    move-object v2, v3

    .line 1439
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "size":Lhcg$b;
    .restart local v2    # "size":Lhcg$b;
    :goto_0
    return-object v2

    .line 1435
    :catch_0
    move-exception v0

    .line 1436
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 162
    if-eqz p0, :cond_0

    .line 163
    const-string/jumbo v0, "\r"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string/jumbo v0, "\\r\\n"

    const-string/jumbo v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 165
    const-string/jumbo v0, "\\r"

    const-string/jumbo v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 168
    :cond_0
    return-object p0
.end method

.method public static b(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 786
    if-eqz p0, :cond_0

    .line 787
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p4, "isAutoSending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 312
    .local p2, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .local p3, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ldiz;->a()V

    .line 314
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    const/4 v1, 0x0

    .line 320
    :goto_0
    return v1

    .line 317
    :cond_0
    invoke-static {p1}, Ldiz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 318
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v1, p1, p2}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 319
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    invoke-direct {p0, v0, p3, p4}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;Z)V

    .line 320
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private final b(Ljava/lang/String;Z)Z
    .locals 19
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "sendByNonEncrypt"    # Z

    .prologue
    .line 447
    invoke-virtual/range {p0 .. p0}, Ldiz;->a()V

    .line 449
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->p(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v18

    .line 450
    .local v18, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-nez v18, :cond_0

    .line 451
    const/4 v2, 0x0

    .line 490
    :goto_0
    return v2

    .line 453
    :cond_0
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    const-wide/16 v10, 0x0

    cmp-long v2, v4, v10

    if-gtz v2, :cond_1

    .line 454
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v4, Ldiz$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Ldiz$3;-><init>(Ldiz;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    invoke-virtual {v2, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 462
    const/4 v2, 0x0

    goto :goto_0

    .line 465
    :cond_1
    if-nez p2, :cond_2

    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Ldiz;->a:Ldkh;

    .line 8021
    iget-object v4, v4, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 465
    invoke-virtual {v2, v4}, Ldho;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 466
    const/16 v2, 0x1f6

    move-object/from16 v0, v18

    iput v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    .line 467
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 468
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 469
    .local v3, "file":Ljava/io/File;
    invoke-static {v3}, Ldiz;->a(Ljava/io/File;)I

    move-result v7

    .line 470
    .local v7, "orientation":I
    invoke-static {v3}, Ldiz;->b(Ljava/io/File;)Lhcg$b;

    move-result-object v6

    .line 472
    .local v6, "size":Lhcg$b;
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Ldiz;->a(Ljava/io/File;Ljava/lang/String;ILhcg$b;I)Z

    .line 473
    const/4 v2, 0x1

    goto :goto_0

    .line 475
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "size":Lhcg$b;
    .end local v7    # "orientation":I
    :cond_2
    invoke-direct/range {p0 .. p0}, Ldiz;->e()Z

    move-result v2

    if-nez v2, :cond_5

    .line 476
    const/16 v2, 0x1f5

    move-object/from16 v0, v18

    iput v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    .line 480
    :cond_3
    :goto_1
    move-object/from16 v0, v18

    iget v9, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    .line 481
    .local v9, "type":I
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/im/MessageBuilder;

    const-string/jumbo v11, "url"

    const-wide/16 v12, 0x0

    invoke-static/range {v18 .. v18}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v14

    move v10, v9

    invoke-interface/range {v8 .. v14}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v17

    .line 482
    .local v17, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lcom/alibaba/wukong/im/MessageBuilder;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v16

    .line 483
    .local v16, "message":Lcom/alibaba/wukong/im/Message;
    new-instance v15, Lcom/alibaba/wukong/im/MessageSendInfo;

    invoke-direct {v15}, Lcom/alibaba/wukong/im/MessageSendInfo;-><init>()V

    .line 484
    .local v15, "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    invoke-virtual/range {p0 .. p0}, Ldiz;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 485
    new-instance v2, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    iput-object v2, v15, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 486
    iget-object v2, v15, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    .line 488
    :cond_4
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v16

    invoke-interface {v2, v0, v15}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageSendInfo;)Lcom/alibaba/wukong/im/Message;

    move-result-object v16

    .line 489
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v4}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZ)V

    .line 490
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 478
    .end local v9    # "type":I
    .end local v15    # "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    .end local v16    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v17    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    :cond_5
    const/16 v2, 0x1f4

    move-object/from16 v0, v18

    iput v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    goto :goto_1
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Ldiz;->c:Ljava/lang/String;

    return-object v0
.end method

.method private e()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 796
    iget-object v0, p0, Ldiz;->a:Ldkh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldiz;->a:Ldkh;

    .line 11021
    iget-object v0, v0, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 796
    if-eqz v0, :cond_0

    iget-object v0, p0, Ldiz;->a:Ldkh;

    .line 12021
    iget-object v0, v0, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 796
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;
    .locals 3
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 333
    .local p1, "atUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .local p4, "markdownExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    invoke-virtual {p0}, Ldiz;->a()V

    .line 335
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 336
    :cond_0
    const/4 v0, 0x0

    .line 341
    :goto_0
    return-object v0

    .line 338
    :cond_1
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    .line 339
    .local v1, "messageBuilder":Lcom/alibaba/wukong/im/MessageBuilder;
    invoke-interface {v1, p3, p2, p4, p5}, Lcom/alibaba/wukong/im/MessageBuilder;->buildRobotMarkdownMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 340
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    invoke-interface {v1, v0, p1}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAtOpenIdInfo(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 341
    goto :goto_0
.end method

.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    iget-object v3, p0, Ldiz;->a:Ldkh;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ldiz;->a:Ldkh;

    .line 4021
    iget-object v3, v3, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 152
    if-nez v3, :cond_3

    .line 153
    :cond_0
    iget-object v3, p0, Ldiz;->a:Ldkh;

    if-nez v3, :cond_1

    move v0, v1

    .line 154
    .local v0, "isPeerVoNull":Z
    :goto_0
    const-string/jumbo v3, "im"

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "[ChatMessageSender] doValidPeer,"

    aput-object v6, v5, v2

    if-eqz v0, :cond_2

    const-string/jumbo v2, "isPeerVo null"

    :goto_1
    aput-object v2, v5, v1

    .line 155
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {v3, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Invalid peer "

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "isPeerVoNull":Z
    :cond_1
    move v0, v2

    .line 153
    goto :goto_0

    .line 154
    .restart local v0    # "isPeerVoNull":Z
    :cond_2
    const-string/jumbo v2, "PeerVo conversation is null"

    goto :goto_1

    .line 159
    .end local v0    # "isPeerVoNull":Z
    :cond_3
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 135
    if-eqz p1, :cond_0

    iget-object v0, p0, Ldiz;->a:Ldkh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldiz;->a:Ldkh;

    .line 3021
    iget-object v0, v0, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ldkh;

    invoke-direct {v0, p1}, Ldkh;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    iput-object v0, p0, Ldiz;->a:Ldkh;

    .line 138
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "sendSMS"    # Z
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 1510
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZLjava/lang/String;)V

    .line 1511
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;ZZ)V
    .locals 2
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "sendSMS"    # Z
    .param p3, "isAutoSending"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1520
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p3, v1}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZLjava/lang/String;)V

    .line 1521
    return-void
.end method

.method public a(Lcom/alibaba/wukong/im/Message;ZZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 18
    .param p1, "messageParam"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "sendSMS"    # Z
    .param p3, "isAutoSending"    # Z
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "path2"    # Ljava/lang/String;
    .param p6, "autoDelete"    # Z

    .prologue
    .line 1544
    move-object/from16 v0, p0

    iget-object v4, v0, Ldiz;->g:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Ldiz;->e:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Ldiz;->f:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1545
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v2

    .line 1546
    .local v2, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 1547
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1549
    .restart local v2    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v4, "share_origin_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Ldiz;->g:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    const-string/jumbo v4, "share_origin_name"

    move-object/from16 v0, p0

    iget-object v5, v0, Ldiz;->e:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    const-string/jumbo v4, "share_origin_icon"

    move-object/from16 v0, p0

    iget-object v5, v0, Ldiz;->f:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    const-class v4, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->tag()J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v6, v7, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;JLjava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object p1

    .line 1554
    .end local v2    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move-object/from16 v10, p1

    .line 1556
    .local v10, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz p3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1557
    .local v8, "time":J
    :goto_0
    const-string/jumbo v4, "im"

    sget-object v5, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->m:Ljava/lang/String;

    invoke-static {v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v17

    .line 1558
    .local v17, "trace":Lcom/alibaba/doraemon/trace/Trace;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "send msg "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 1559
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 1561
    new-instance v3, Ldiz$4;

    move-object/from16 v4, p0

    move-object/from16 v5, p4

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v11, p6

    move-object/from16 v12, p5

    invoke-direct/range {v3 .. v12}, Ldiz$4;-><init>(Ldiz;Ljava/lang/String;ZZJLcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V

    .line 1997
    .local v3, "callback":Lcom/alibaba/wukong/Callback;
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1998
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x384

    if-eq v4, v5, :cond_2

    .line 1999
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x38c

    if-eq v4, v5, :cond_2

    .line 2000
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x385

    if-eq v4, v5, :cond_2

    .line 2001
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x386

    if-eq v4, v5, :cond_2

    .line 2002
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x389

    if-ne v4, v5, :cond_4

    .line 2003
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Ldiz;->a:Ldkh;

    .line 19021
    iget-object v4, v4, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 2003
    new-instance v5, Ldkn;

    invoke-direct {v5}, Ldkn;-><init>()V

    invoke-interface {v10, v4, v5, v3}, Lcom/alibaba/wukong/im/Message;->passSendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    .line 2036
    :goto_1
    return-void

    .line 1556
    .end local v3    # "callback":Lcom/alibaba/wukong/Callback;
    .end local v8    # "time":J
    .end local v17    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :cond_3
    const-wide/16 v8, 0x0

    goto/16 :goto_0

    .line 2004
    .restart local v3    # "callback":Lcom/alibaba/wukong/Callback;
    .restart local v8    # "time":J
    .restart local v17    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :cond_4
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0xca

    if-eq v4, v5, :cond_5

    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0xfe

    if-ne v4, v5, :cond_6

    .line 2005
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Ldiz;->a:Ldkh;

    .line 20021
    iget-object v4, v4, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 2005
    new-instance v5, Lebm;

    invoke-direct {v5}, Lebm;-><init>()V

    new-instance v6, Ldkn;

    invoke-direct {v6}, Ldkn;-><init>()V

    invoke-interface {v10, v4, v5, v6, v3}, Lcom/alibaba/wukong/im/Message;->sendToVideo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    goto :goto_1

    .line 2006
    :cond_6
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0xce

    if-ne v4, v5, :cond_7

    .line 2007
    move-object/from16 v0, p0

    iget-object v4, v0, Ldiz;->a:Ldkh;

    .line 21021
    iget-object v11, v4, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 2007
    new-instance v12, Lebm;

    invoke-direct {v12}, Lebm;-><init>()V

    new-instance v13, Lgrf;

    invoke-direct {v13}, Lgrf;-><init>()V

    new-instance v14, Ldkn;

    invoke-direct {v14}, Ldkn;-><init>()V

    move-object v15, v3

    invoke-interface/range {v10 .. v15}, Lcom/alibaba/wukong/im/Message;->sendEncryptVideo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    goto :goto_1

    .line 2008
    :cond_7
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0xcc

    if-eq v4, v5, :cond_8

    .line 2009
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0xcd

    if-ne v4, v5, :cond_9

    .line 2010
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Ldiz;->a:Ldkh;

    .line 22021
    iget-object v4, v4, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 2010
    new-instance v5, Lgrf;

    invoke-direct {v5}, Lgrf;-><init>()V

    new-instance v6, Ldkn;

    invoke-direct {v6}, Ldkn;-><init>()V

    invoke-interface {v10, v4, v5, v6, v3}, Lcom/alibaba/wukong/im/Message;->sendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_1

    .line 2011
    :cond_9
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0xcb

    if-ne v4, v5, :cond_a

    .line 2012
    move-object/from16 v0, p0

    iget-object v4, v0, Ldiz;->a:Ldkh;

    .line 23021
    iget-object v4, v4, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 2012
    new-instance v5, Ldpv;

    invoke-direct {v5}, Ldpv;-><init>()V

    new-instance v6, Ldkn;

    invoke-direct {v6}, Ldkn;-><init>()V

    invoke-interface {v10, v4, v5, v6, v3}, Lcom/alibaba/wukong/im/Message;->sendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_1

    .line 2013
    :cond_a
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x38a

    if-ne v4, v5, :cond_b

    .line 2015
    move-object/from16 v0, p0

    iget-object v4, v0, Ldiz;->a:Ldkh;

    .line 24021
    iget-object v4, v4, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 2015
    new-instance v5, Ldkn;

    invoke-direct {v5}, Ldkn;-><init>()V

    invoke-interface {v10, v4, v5, v3}, Lcom/alibaba/wukong/im/Message;->passSendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_1

    .line 2016
    :cond_b
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x190

    if-ne v4, v5, :cond_c

    .line 2017
    move-object/from16 v0, p0

    iget-object v4, v0, Ldiz;->a:Ldkh;

    .line 25021
    iget-object v4, v4, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 2017
    new-instance v5, Ldiv;

    invoke-direct {v5}, Ldiv;-><init>()V

    new-instance v6, Ldkn;

    invoke-direct {v6}, Ldkn;-><init>()V

    invoke-interface {v10, v4, v5, v6, v3}, Lcom/alibaba/wukong/im/Message;->sendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_1

    .line 2019
    :cond_c
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x1f6

    if-eq v4, v5, :cond_d

    .line 2020
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x1f4

    if-eq v4, v5, :cond_d

    .line 2021
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x1f5

    if-eq v4, v5, :cond_d

    .line 2022
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x1f7

    if-ne v4, v5, :cond_e

    .line 2023
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Ldiz;->a:Ldkh;

    .line 26021
    iget-object v4, v4, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 2023
    new-instance v5, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;-><init>(Landroid/content/Context;)V

    new-instance v6, Ldkn;

    invoke-direct {v6}, Ldkn;-><init>()V

    invoke-interface {v10, v4, v5, v6, v3}, Lcom/alibaba/wukong/im/Message;->sendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_1

    .line 2024
    :cond_e
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_f

    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0xfb

    if-ne v4, v5, :cond_11

    .line 2025
    :cond_f
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v16

    check-cast v16, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 2026
    .local v16, "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_10

    const-string/jumbo v4, "1"

    invoke-interface/range {v16 .. v16}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v6, "is_3rd_emotion"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2028
    move-object/from16 v0, p0

    iget-object v4, v0, Ldiz;->a:Ldkh;

    .line 27021
    iget-object v4, v4, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 2028
    new-instance v5, Ldpw;

    invoke-direct {v5}, Ldpw;-><init>()V

    new-instance v6, Ldkn;

    invoke-direct {v6}, Ldkn;-><init>()V

    invoke-interface {v10, v4, v5, v6, v3}, Lcom/alibaba/wukong/im/Message;->sendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_1

    .line 2030
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Ldiz;->a:Ldkh;

    .line 28021
    iget-object v4, v4, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 2030
    new-instance v5, Ldkn;

    invoke-direct {v5}, Ldkn;-><init>()V

    invoke-interface {v10, v4, v5, v3}, Lcom/alibaba/wukong/im/Message;->sendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_1

    .line 2033
    .end local v16    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Ldiz;->a:Ldkh;

    .line 29021
    iget-object v4, v4, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 2033
    new-instance v5, Ldkn;

    invoke-direct {v5}, Ldkn;-><init>()V

    invoke-interface {v10, v4, v5, v3}, Lcom/alibaba/wukong/im/Message;->sendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_1
.end method

.method public final a(Lfzm;Z)V
    .locals 13
    .param p1, "mailData"    # Lfzm;
    .param p2, "only2Self"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 503
    if-nez p1, :cond_0

    .line 528
    :goto_0
    return-void

    .line 508
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v12

    .line 509
    .local v12, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v11, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-wide v0, v12, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v8, p1, Lfzm;->a:Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    .line 513
    .local v8, "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const/16 v1, 0x190

    const/16 v2, 0x190

    const-string/jumbo v3, ""

    const-wide/16 v4, 0x0

    invoke-static {v8}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v10

    .line 514
    .local v10, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v0, v10}, Lcom/alibaba/wukong/im/MessageBuilder;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v9

    .line 516
    .local v9, "message":Lcom/alibaba/wukong/im/Message;
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v0, v9, v11}, Lcom/alibaba/wukong/im/MessageBuilder;->setMessageReceivers(Lcom/alibaba/wukong/im/Message;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v9

    .line 518
    new-instance v7, Lcom/alibaba/wukong/im/MessageSendInfo;

    invoke-direct {v7}, Lcom/alibaba/wukong/im/MessageSendInfo;-><init>()V

    .line 519
    .local v7, "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    invoke-virtual {p0}, Ldiz;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    new-instance v0, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    iput-object v0, v7, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 521
    iget-object v0, v7, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    .line 526
    :goto_1
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v0, v9, v7}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageSendInfo;)Lcom/alibaba/wukong/im/Message;

    move-result-object v9

    .line 527
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v9, v0, v1}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZ)V

    goto :goto_0

    .line 523
    :cond_1
    new-instance v0, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    iput-object v0, v7, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 524
    iget-object v0, v7, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    goto :goto_1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2
    .param p1, "thirdDo"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 531
    const/4 v0, 0x0

    const-string/jumbo v1, "url"

    invoke-virtual {p0, p1, v0, v1}, Ldiz;->a(Ljava/lang/Object;ILjava/lang/String;)V

    .line 532
    return-void
.end method

.method public final a(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 26
    .param p1, "thirdDo"    # Ljava/lang/Object;
    .param p2, "messageType"    # I
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 535
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    const-string/jumbo p3, "url"

    .line 538
    :cond_0
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    if-eqz v2, :cond_3

    move-object/from16 v18, p1

    .line 539
    check-cast v18, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    .line 540
    .local v18, "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    const/16 v3, 0x190

    const/16 v4, 0x190

    const-wide/16 v6, 0x0

    invoke-static/range {v18 .. v18}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v8

    move-object/from16 v5, p3

    invoke-interface/range {v2 .. v8}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v20

    .line 541
    .local v20, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Lcom/alibaba/wukong/im/MessageBuilder;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v19

    .line 542
    .local v19, "message":Lcom/alibaba/wukong/im/Message;
    new-instance v16, Lcom/alibaba/wukong/im/MessageSendInfo;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/wukong/im/MessageSendInfo;-><init>()V

    .line 543
    .local v16, "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    invoke-virtual/range {p0 .. p0}, Ldiz;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 544
    new-instance v2, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 545
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    .line 550
    :goto_0
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v2, v0, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageSendInfo;)Lcom/alibaba/wukong/im/Message;

    move-result-object v19

    .line 551
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v4}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZ)V

    .line 657
    .end local v16    # "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    .end local v18    # "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    .end local v19    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v20    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    :cond_1
    :goto_1
    return-void

    .line 547
    .restart local v16    # "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    .restart local v18    # "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    .restart local v19    # "message":Lcom/alibaba/wukong/im/Message;
    .restart local v20    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    :cond_2
    new-instance v2, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 548
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    goto :goto_0

    .line 552
    .end local v16    # "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    .end local v18    # "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    .end local v19    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v20    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    :cond_3
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v2, :cond_6

    move-object/from16 v24, p1

    .line 553
    check-cast v24, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 554
    .local v24, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    move-object/from16 v0, v24

    iget v3, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    .line 555
    .local v3, "type":I
    if-nez v3, :cond_4

    .line 556
    const/16 v3, 0x1f4

    .line 558
    :cond_4
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    const-wide/16 v6, 0x0

    invoke-static/range {v24 .. v24}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v8

    move v4, v3

    move-object/from16 v5, p3

    invoke-interface/range {v2 .. v8}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v20

    .line 559
    .restart local v20    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Lcom/alibaba/wukong/im/MessageBuilder;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v19

    .line 560
    .restart local v19    # "message":Lcom/alibaba/wukong/im/Message;
    new-instance v16, Lcom/alibaba/wukong/im/MessageSendInfo;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/wukong/im/MessageSendInfo;-><init>()V

    .line 561
    .restart local v16    # "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    invoke-virtual/range {p0 .. p0}, Ldiz;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 562
    new-instance v2, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 563
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    .line 565
    :cond_5
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v2, v0, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageSendInfo;)Lcom/alibaba/wukong/im/Message;

    move-result-object v19

    .line 566
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v4}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZ)V

    goto/16 :goto_1

    .line 567
    .end local v3    # "type":I
    .end local v16    # "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    .end local v19    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v20    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    .end local v24    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_6
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    if-eqz v2, :cond_8

    move-object/from16 v25, p1

    .line 568
    check-cast v25, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    .line 570
    .local v25, "spaceLinkDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageBuilder;

    const/16 v5, 0x1f8

    const/16 v6, 0x1f8

    const-wide/16 v8, 0x0

    invoke-static/range {v25 .. v25}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v10

    move-object/from16 v7, p3

    invoke-interface/range {v4 .. v10}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v20

    .line 571
    .restart local v20    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Lcom/alibaba/wukong/im/MessageBuilder;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v19

    .line 572
    .restart local v19    # "message":Lcom/alibaba/wukong/im/Message;
    new-instance v16, Lcom/alibaba/wukong/im/MessageSendInfo;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/wukong/im/MessageSendInfo;-><init>()V

    .line 573
    .restart local v16    # "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    invoke-virtual/range {p0 .. p0}, Ldiz;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 574
    new-instance v2, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 575
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    .line 577
    :cond_7
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v2, v0, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageSendInfo;)Lcom/alibaba/wukong/im/Message;

    move-result-object v19

    .line 578
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v4}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZ)V

    goto/16 :goto_1

    .line 579
    .end local v16    # "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    .end local v19    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v20    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    .end local v25    # "spaceLinkDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    :cond_8
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    if-eqz v2, :cond_b

    move-object/from16 v22, p1

    .line 580
    check-cast v22, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    .line 581
    .local v22, "namecard":Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageBuilder;

    const/16 v5, 0x258

    const/16 v6, 0x258

    const-wide/16 v8, 0x0

    invoke-static/range {v22 .. v22}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v10

    move-object/from16 v7, p3

    invoke-interface/range {v4 .. v10}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v20

    .line 582
    .restart local v20    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Lcom/alibaba/wukong/im/MessageBuilder;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v19

    .line 583
    .restart local v19    # "message":Lcom/alibaba/wukong/im/Message;
    new-instance v16, Lcom/alibaba/wukong/im/MessageSendInfo;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/wukong/im/MessageSendInfo;-><init>()V

    .line 584
    .restart local v16    # "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    invoke-virtual/range {p0 .. p0}, Ldiz;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 585
    new-instance v2, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 586
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    .line 594
    :goto_2
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v2, v0, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageSendInfo;)Lcom/alibaba/wukong/im/Message;

    move-result-object v19

    .line 595
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v4}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZ)V

    goto/16 :goto_1

    .line 587
    :cond_9
    invoke-direct/range {p0 .. p0}, Ldiz;->e()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 588
    new-instance v2, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 589
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    goto :goto_2

    .line 591
    :cond_a
    new-instance v2, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 592
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    goto :goto_2

    .line 596
    .end local v16    # "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    .end local v19    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v20    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    .end local v22    # "namecard":Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;
    :cond_b
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    if-eqz v2, :cond_c

    move-object/from16 v14, p1

    .line 597
    check-cast v14, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    .line 598
    .local v14, "announce":Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageBuilder;

    const/16 v5, 0x2bc

    const/16 v6, 0x2bc

    const-wide/16 v8, 0x0

    invoke-static {v14}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v10

    move-object/from16 v7, p3

    invoke-interface/range {v4 .. v10}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v20

    .line 599
    .restart local v20    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Lcom/alibaba/wukong/im/MessageBuilder;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v19

    .line 600
    .restart local v19    # "message":Lcom/alibaba/wukong/im/Message;
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v4}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZ)V

    goto/16 :goto_1

    .line 601
    .end local v14    # "announce":Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;
    .end local v19    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v20    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    :cond_c
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    if-eqz v2, :cond_e

    move-object/from16 v23, p1

    .line 602
    check-cast v23, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    .line 603
    .local v23, "oa":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    const/16 v2, 0x12c

    move/from16 v0, p2

    if-ne v0, v2, :cond_d

    const/16 v5, 0x12c

    .line 604
    .local v5, "typeCode":I
    :goto_3
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageBuilder;

    const-wide/16 v8, 0x0

    invoke-static/range {v23 .. v23}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v10

    move v6, v5

    move-object/from16 v7, p3

    invoke-interface/range {v4 .. v10}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v20

    .line 605
    .restart local v20    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Lcom/alibaba/wukong/im/MessageBuilder;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v19

    .line 606
    .restart local v19    # "message":Lcom/alibaba/wukong/im/Message;
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v4}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZ)V

    goto/16 :goto_1

    .line 603
    .end local v5    # "typeCode":I
    .end local v19    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v20    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    :cond_d
    const/16 v5, 0x12d

    goto :goto_3

    .line 607
    .end local v23    # "oa":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    :cond_e
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;

    if-eqz v2, :cond_10

    move-object/from16 v13, p1

    .line 608
    check-cast v13, Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;

    .line 609
    .local v13, "alipayRedPackets":Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/MessageBuilder;

    const/16 v7, 0x388

    const/16 v8, 0x388

    const-wide/16 v10, 0x0

    invoke-static {v13}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v12

    move-object/from16 v9, p3

    invoke-interface/range {v6 .. v12}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v20

    .line 610
    .restart local v20    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Lcom/alibaba/wukong/im/MessageBuilder;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v19

    .line 611
    .restart local v19    # "message":Lcom/alibaba/wukong/im/Message;
    new-instance v16, Lcom/alibaba/wukong/im/MessageSendInfo;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/wukong/im/MessageSendInfo;-><init>()V

    .line 612
    .restart local v16    # "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    invoke-virtual/range {p0 .. p0}, Ldiz;->b()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 613
    new-instance v2, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 614
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    .line 619
    :goto_4
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v2, v0, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageSendInfo;)Lcom/alibaba/wukong/im/Message;

    move-result-object v19

    .line 620
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v4}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZ)V

    goto/16 :goto_1

    .line 616
    :cond_f
    new-instance v2, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 617
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    sget v8, Lctk$i;->alipay_repackets_xpn_normal:I

    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7}, Lccr;->d()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string/jumbo v7, ":"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    iget-object v7, v13, Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;->title:Ljava/lang/String;

    aput-object v7, v4, v6

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/im/XPNInfo;->alertContent:Ljava/lang/String;

    goto :goto_4

    .line 621
    .end local v13    # "alipayRedPackets":Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;
    .end local v16    # "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    .end local v19    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v20    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    :cond_10
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    if-eqz v2, :cond_12

    move-object/from16 v17, p1

    .line 622
    check-cast v17, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    .line 623
    .local v17, "luckyTimeRedPacketsPlanDo":Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/MessageBuilder;

    const/16 v7, 0x38a

    const/16 v8, 0x38a

    const-wide/16 v10, 0x0

    invoke-static/range {v17 .. v17}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v12

    move-object/from16 v9, p3

    invoke-interface/range {v6 .. v12}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v20

    .line 624
    .restart local v20    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Lcom/alibaba/wukong/im/MessageBuilder;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v19

    .line 625
    .restart local v19    # "message":Lcom/alibaba/wukong/im/Message;
    new-instance v16, Lcom/alibaba/wukong/im/MessageSendInfo;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/wukong/im/MessageSendInfo;-><init>()V

    .line 626
    .restart local v16    # "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    invoke-virtual/range {p0 .. p0}, Ldiz;->b()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 627
    new-instance v2, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 628
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    .line 630
    :cond_11
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v2, v0, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageSendInfo;)Lcom/alibaba/wukong/im/Message;

    move-result-object v19

    .line 631
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v4}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZ)V

    goto/16 :goto_1

    .line 632
    .end local v16    # "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    .end local v17    # "luckyTimeRedPacketsPlanDo":Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;
    .end local v19    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v20    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    :cond_12
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    if-eqz v2, :cond_14

    move-object/from16 v21, p1

    .line 633
    check-cast v21, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    .line 634
    .local v21, "miniAppDo":Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;
    invoke-static/range {v21 .. v21}, Ldkc;->a(Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;)V

    .line 635
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/MessageBuilder;

    const/16 v7, 0x4b3

    const/16 v8, 0x4b3

    const-wide/16 v10, 0x0

    invoke-static/range {v21 .. v21}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v12

    move-object/from16 v9, p3

    invoke-interface/range {v6 .. v12}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v20

    .line 636
    .restart local v20    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Lcom/alibaba/wukong/im/MessageBuilder;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v19

    .line 637
    .restart local v19    # "message":Lcom/alibaba/wukong/im/Message;
    new-instance v16, Lcom/alibaba/wukong/im/MessageSendInfo;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/wukong/im/MessageSendInfo;-><init>()V

    .line 638
    .restart local v16    # "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    invoke-virtual/range {p0 .. p0}, Ldiz;->b()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 639
    new-instance v2, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 640
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    .line 642
    :cond_13
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v2, v0, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageSendInfo;)Lcom/alibaba/wukong/im/Message;

    move-result-object v19

    .line 643
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v4}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZ)V

    goto/16 :goto_1

    .line 645
    .end local v16    # "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    .end local v19    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v20    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    .end local v21    # "miniAppDo":Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;
    :cond_14
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;

    if-eqz v2, :cond_1

    move-object/from16 v15, p1

    .line 646
    check-cast v15, Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;

    .line 647
    .local v15, "gmicNameCardDo":Lcom/alibaba/android/dingtalkim/base/model/GmicNameCardDo;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/MessageBuilder;

    const/16 v7, 0x708

    const/16 v8, 0x708

    const-wide/16 v10, 0x0

    invoke-static {v15}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v12

    move-object/from16 v9, p3

    invoke-interface/range {v6 .. v12}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v20

    .line 648
    .restart local v20    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Lcom/alibaba/wukong/im/MessageBuilder;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v19

    .line 649
    .restart local v19    # "message":Lcom/alibaba/wukong/im/Message;
    new-instance v16, Lcom/alibaba/wukong/im/MessageSendInfo;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/wukong/im/MessageSendInfo;-><init>()V

    .line 650
    .restart local v16    # "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    invoke-virtual/range {p0 .. p0}, Ldiz;->b()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 651
    new-instance v2, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 652
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    .line 654
    :cond_15
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v2, v0, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageSendInfo;)Lcom/alibaba/wukong/im/Message;

    move-result-object v19

    .line 655
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v4}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZ)V

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Ldiz;->g:Ljava/lang/String;

    .line 173
    iput-object p2, p0, Ldiz;->e:Ljava/lang/String;

    .line 174
    iput-object p3, p0, Ldiz;->f:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "sendByNonEncrypt"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 434
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 435
    const-string/jumbo v0, "ChatMessageSender.sendLocalFileThroughSpace"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Ldiz$2;

    invoke-direct {v1, p0, p1, p2}, Ldiz$2;-><init>(Ldiz;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 444
    :goto_0
    return-void

    .line 442
    :cond_0
    invoke-direct {p0, p1, p2}, Ldiz;->b(Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public final a(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldcu;)Z
    .locals 15
    .param p1, "topicId"    # J
    .param p3, "emotionId"    # J
    .param p5, "emotionType"    # I
    .param p6, "emotionMediaId"    # Ljava/lang/String;
    .param p7, "authMediaId"    # Ljava/lang/String;
    .param p8, "emotionName"    # Ljava/lang/String;
    .param p9, "activityComment"    # Ljava/lang/String;
    .param p10, "messageInfoListener"    # Ldcu;

    .prologue
    .line 1213
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1214
    .local v13, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "packagename"

    const-string/jumbo v3, "-11"

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    const-string/jumbo v2, "emotionid"

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    const-string/jumbo v2, "topicId"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "chat_emoji_send_click"

    invoke-interface {v2, v3, v13}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1222
    invoke-virtual {p0}, Ldiz;->a()V

    .line 1224
    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1225
    .local v10, "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "p_id"

    const-string/jumbo v3, "-11"

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    const-string/jumbo v2, "p_type"

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    const-string/jumbo v2, "e_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    const-string/jumbo v2, "p_t_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1230
    const-string/jumbo v2, "p_name"

    move-object/from16 v0, p8

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    :cond_0
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1233
    const-string/jumbo v2, "activity_comment"

    move-object/from16 v0, p9

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    :cond_1
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-interface/range {v2 .. v10}, Lcom/alibaba/wukong/im/MessageBuilder;->buildImageMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v11

    .line 1236
    .local v11, "message":Lcom/alibaba/wukong/im/Message;
    invoke-virtual {p0}, Ldiz;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1237
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    const/4 v3, 0x1

    invoke-interface {v2, v11, v3}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;I)Lcom/alibaba/wukong/im/Message;

    move-result-object v11

    .line 1246
    :goto_0
    if-eqz p10, :cond_2

    .line 1247
    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-interface {v0, v2}, Ldcu;->a(Ljava/lang/String;)V

    .line 1249
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {p0, v11, v2, v0}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V

    .line 1250
    const/4 v2, 0x1

    .line 1253
    .end local v10    # "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "message":Lcom/alibaba/wukong/im/Message;
    :goto_1
    return v2

    .line 1241
    .restart local v10    # "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_3
    const-string/jumbo v12, "\u8868\u60c5"

    .line 1242
    .local v12, "name":Ljava/lang/String;
    new-instance v14, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v14}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    .line 1243
    .local v14, "xpnInfo":Lcom/alibaba/wukong/im/XPNInfo;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "["

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v12, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "]"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/alibaba/wukong/im/XPNInfo;->msgText:Ljava/lang/String;

    .line 1244
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v2, v11, v14}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/XPNInfo;)Lcom/alibaba/wukong/im/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto :goto_0

    .line 1253
    .end local v10    # "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "xpnInfo":Lcom/alibaba/wukong/im/XPNInfo;
    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)Z
    .locals 9
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1155
    .line 16159
    if-eqz p1, :cond_0

    .line 16160
    iget-wide v0, p1, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->packageId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionId:J

    iget v4, p1, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->type:I

    iget-object v5, p1, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionMediaId:Ljava/lang/String;

    iget-object v6, p1, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->authMediaId:Ljava/lang/String;

    iget v7, p1, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->isPraise:I

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Ldiz;->a(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;ILdcu;)Z

    move-result v0

    :goto_0
    return v0

    .line 16162
    :cond_0
    const/4 v0, 0x0

    .line 1155
    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;Ldcu;)Z
    .locals 24
    .param p1, "emotionObject"    # Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;
    .param p2, "messageInfoListener"    # Ldcu;

    .prologue
    .line 1126
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getEmotionPackageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1127
    :cond_0
    const/4 v0, 0x0

    .line 1146
    :goto_0
    return v0

    .line 1129
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getEmotionPackageId()Ljava/lang/String;

    move-result-object v0

    .line 16109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v22

    .line 1130
    .local v22, "packageId":J
    const-wide/16 v0, -0xb

    cmp-long v0, v22, v0

    if-nez v0, :cond_3

    .line 1132
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getAuthProvider()Lcom/alibaba/wukong/im/AuthProviderProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/AuthProviderProxy;->useAuth()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getEmotionAuthMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1133
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getEmotionAuthMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldkj;->a(Ljava/lang/String;)I

    move-result v6

    .line 1137
    .local v6, "type":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getTopicId()J

    move-result-wide v2

    .line 1138
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getEmotionId()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getEmotionMediaId()Ljava/lang/String;

    move-result-object v7

    .line 1139
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getEmotionAuthMediaId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getEmotionName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v11, p2

    .line 1137
    invoke-virtual/range {v1 .. v11}, Ldiz;->a(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldcu;)Z

    move-result v0

    goto :goto_0

    .line 1135
    .end local v6    # "type":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getEmotionMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldkj;->a(Ljava/lang/String;)I

    move-result v6

    .restart local v6    # "type":I
    goto :goto_1

    .line 1140
    .end local v6    # "type":I
    :cond_3
    const-wide/16 v0, -0xc

    cmp-long v0, v22, v0

    if-nez v0, :cond_4

    .line 1141
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getThirdPartyEmotionId()Ljava/lang/String;

    move-result-object v8

    .line 1142
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getEmotionMediaId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getEmotionAuthMediaId()Ljava/lang/String;

    move-result-object v10

    .line 1143
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getThirdPartyEmotionUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getThirdPartyWidth()I

    move-result v12

    .line 1144
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getThirdPartyHeight()I

    move-result v13

    move-object/from16 v7, p0

    move-object/from16 v14, p2

    .line 1141
    invoke-virtual/range {v7 .. v14}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILdcu;)Z

    move-result v0

    goto :goto_0

    .line 1146
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getEmotionPackageId()Ljava/lang/String;

    move-result-object v9

    .line 1147
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getEmotionId()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getEmotionType()I

    move-result v12

    .line 1148
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getEmotionMediaId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getEmotionAuthMediaId()Ljava/lang/String;

    move-result-object v14

    .line 1149
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getPraiseUuid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getEmotionName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getPraiseType()I

    move-result v17

    .line 1150
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getPraiseUrlPrefix()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getThumbMediaId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getPraiseTag()I

    move-result v20

    move-object/from16 v8, p0

    move-object/from16 v21, p2

    .line 1146
    invoke-direct/range {v8 .. v21}, Ldiz;->a(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILdcu;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 1369
    .line 17378
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17379
    :goto_0
    return v6

    .line 17381
    :cond_0
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p1

    move v7, v6

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/wukong/im/MessageBuilder;->buildImageMessage(Ljava/lang/String;Ljava/lang/String;JII)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 17382
    invoke-virtual {p0}, Ldiz;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17383
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v0, v1, v8}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;I)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 17388
    :goto_1
    invoke-virtual {p0, v0, v6, p1}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V

    move v6, v8

    .line 1369
    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;DDLjava/lang/String;)Z
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "locationName"    # Ljava/lang/String;

    .prologue
    .line 664
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    const/4 v0, 0x0

    .line 681
    :goto_0
    return v0

    .line 667
    :cond_0
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/MessageBuilder;->buildGeoMessage(Ljava/lang/String;DDLjava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 668
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    new-instance v7, Lcom/alibaba/wukong/im/MessageSendInfo;

    invoke-direct {v7}, Lcom/alibaba/wukong/im/MessageSendInfo;-><init>()V

    .line 669
    .local v7, "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    invoke-virtual {p0}, Ldiz;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    new-instance v0, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    iput-object v0, v7, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 671
    iget-object v0, v7, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    .line 679
    :goto_1
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v0, v1, v7}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageSendInfo;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 680
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZLjava/lang/String;Ljava/lang/String;Z)V

    .line 681
    const/4 v0, 0x1

    goto :goto_0

    .line 672
    :cond_1
    invoke-direct {p0}, Ldiz;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 673
    new-instance v0, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    iput-object v0, v7, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 674
    iget-object v0, v7, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    goto :goto_1

    .line 676
    :cond_2
    new-instance v0, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    iput-object v0, v7, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 677
    iget-object v0, v7, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;I)Z
    .locals 10
    .param p1, "picturePath"    # Ljava/lang/String;
    .param p2, "picFlag"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 1396
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1408
    :cond_0
    :goto_0
    return v1

    .line 1399
    :cond_1
    invoke-virtual {p0}, Ldiz;->a()V

    .line 1400
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1402
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1405
    invoke-static {v0}, Ldiz;->a(Ljava/io/File;)I

    move-result v7

    .line 1406
    .local v7, "orientation":I
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    move v6, p2

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/wukong/im/MessageBuilder;->buildImageMessage(Ljava/lang/String;Ljava/lang/String;JII)Lcom/alibaba/wukong/im/Message;

    move-result-object v8

    .line 1407
    .local v8, "message":Lcom/alibaba/wukong/im/Message;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v8, v9, v1}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V

    move v1, v9

    .line 1408
    goto :goto_0
.end method

.method a(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;ILdcu;)Z
    .locals 14
    .param p1, "emotionPackageId"    # Ljava/lang/String;
    .param p2, "emotionId"    # J
    .param p4, "emotionType"    # I
    .param p5, "emotionMediaId"    # Ljava/lang/String;
    .param p6, "authMediaId"    # Ljava/lang/String;
    .param p7, "praiseTag"    # I
    .param p8, "messageInfoListener"    # Ldcu;

    .prologue
    .line 1337
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {v0 .. v13}, Ldiz;->a(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILdcu;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;JJIIJLjava/lang/String;)Z
    .locals 14
    .param p1, "videoPath"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "duration"    # J
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "bitrate"    # J
    .param p10, "picPath"    # Ljava/lang/String;

    .prologue
    .line 1048
    const/4 v3, 0x0

    const-wide/32 v10, 0x927c0

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v12, p10

    invoke-virtual/range {v1 .. v13}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;JJIIJLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;JJIILjava/lang/String;)Z
    .locals 12
    .param p1, "videoPath"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "duration"    # J
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "picPath"    # Ljava/lang/String;

    .prologue
    .line 972
    const/4 v3, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v1 .. v11}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;JLjava/util/List;)Z
    .locals 16
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1458
    .local p4, "volumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1459
    const/4 v4, 0x0

    .line 1478
    :goto_0
    return v4

    .line 1461
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ldiz;->a()V

    .line 1463
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1464
    .local v13, "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1465
    const-string/jumbo v4, "im"

    const-string/jumbo v5, "ChatMessageSender"

    const-string/jumbo v6, "sendAudio: file is null"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    const/4 v4, 0x0

    goto :goto_0

    .line 1469
    :cond_1
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Ldiz;->a:Ldkh;

    .line 18021
    iget-object v5, v5, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 1469
    invoke-virtual {v4, v5}, Ldho;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static/range {p1 .. p1}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1470
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lieb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 18482
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhcs;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 18483
    const-class v4, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageBuilder;

    .line 18484
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v6

    move-wide/from16 v10, p2

    move-object/from16 v12, p4

    .line 18483
    invoke-interface/range {v4 .. v12}, Lcom/alibaba/wukong/im/MessageBuilder;->buildEncryptAudioMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v5

    .line 18486
    invoke-virtual/range {p0 .. p0}, Ldiz;->b()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 18487
    const-class v4, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageBuilder;

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;I)Lcom/alibaba/wukong/im/Message;

    move-result-object v4

    .line 18490
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V

    .line 18491
    const/4 v4, 0x1

    .line 1470
    goto :goto_0

    .line 1473
    :cond_2
    const-class v4, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/alibaba/wukong/im/MessageBuilder;->buildAudioMessage(Ljava/lang/String;JLjava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v14

    .line 1474
    .local v14, "message":Lcom/alibaba/wukong/im/Message;
    invoke-virtual/range {p0 .. p0}, Ldiz;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1475
    const-class v4, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageBuilder;

    const/4 v5, 0x1

    invoke-interface {v4, v14, v5}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;I)Lcom/alibaba/wukong/im/Message;

    move-result-object v14

    .line 1477
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4, v5}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V

    .line 1478
    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v14    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_4
    move-object v4, v5

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "picturePath"    # Ljava/lang/String;
    .param p2, "originPath"    # Ljava/lang/String;
    .param p3, "picFlag"    # I

    .prologue
    .line 914
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 14
    .param p1, "picturePath"    # Ljava/lang/String;
    .param p2, "originPath"    # Ljava/lang/String;
    .param p3, "picFlag"    # I
    .param p4, "sendByNonEncrypt"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 923
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    const/4 v0, 0x0

    .line 946
    :goto_0
    return v0

    .line 926
    :cond_0
    invoke-virtual {p0}, Ldiz;->a()V

    .line 927
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 928
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 929
    const-string/jumbo v0, "im"

    const-string/jumbo v2, "ChatMessageSender"

    const-string/jumbo v3, "sendPicture:file is null"

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const/4 v0, 0x0

    goto :goto_0

    .line 932
    :cond_1
    invoke-static {v1}, Ldiz;->a(Ljava/io/File;)I

    move-result v5

    .line 933
    .local v5, "orientation":I
    invoke-static {v1}, Ldiz;->b(Ljava/io/File;)Lhcg$b;

    move-result-object v4

    .line 934
    .local v4, "size":Lhcg$b;
    if-nez p4, :cond_2

    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v0

    iget-object v2, p0, Ldiz;->a:Ldkh;

    .line 13021
    iget-object v2, v2, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 934
    invoke-virtual {v0, v2}, Ldho;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 935
    invoke-static {p1}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 936
    const-string/jumbo v0, "im"

    const-string/jumbo v2, "ChatMessageSender"

    const-string/jumbo v3, "sendEncryptPicture"

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    invoke-static/range {p2 .. p2}, Lieb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Ldiz;->a(Ljava/io/File;Ljava/lang/String;ILhcg$b;I)Z

    move-result v0

    goto :goto_0

    .line 939
    :cond_2
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/im/MessageBuilder;

    .line 940
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p2 .. p2}, Lieb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    move/from16 v12, p3

    move v13, v5

    .line 939
    invoke-interface/range {v7 .. v13}, Lcom/alibaba/wukong/im/MessageBuilder;->buildImageMessage(Ljava/lang/String;Ljava/lang/String;JII)Lcom/alibaba/wukong/im/Message;

    move-result-object v6

    .line 942
    .local v6, "message":Lcom/alibaba/wukong/im/Message;
    invoke-virtual {p0}, Ldiz;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 943
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const/4 v2, 0x1

    invoke-interface {v0, v6, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;I)Lcom/alibaba/wukong/im/Message;

    move-result-object v6

    .line 945
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v6, v0, v2}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V

    .line 946
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JJIIJLjava/lang/String;Ljava/lang/String;)Z
    .locals 23
    .param p1, "videoPath"    # Ljava/lang/String;
    .param p2, "authMediaId"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "duration"    # J
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "bitrate"    # J
    .param p11, "picPath"    # Ljava/lang/String;
    .param p12, "picAuthMediaId"    # Ljava/lang/String;

    .prologue
    .line 1052
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1053
    sget v2, Lctk$i;->dt_im_video_url_null:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 1054
    const/4 v2, 0x0

    .line 1084
    :goto_0
    return v2

    .line 1057
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ldiz;->a()V

    .line 1059
    move-wide/from16 v0, p5

    long-to-double v4, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v18, v4, v6

    .line 1060
    .local v18, "durationSecond":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-long v0, v4

    move-wide/from16 p5, v0

    .line 1061
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Ldiz;->a:Ldkh;

    .line 15021
    iget-object v4, v4, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 1061
    invoke-virtual {v2, v4}, Ldho;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1062
    invoke-static/range {p1 .. p1}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1063
    move-wide/from16 v0, p9

    long-to-int v13, v0

    .line 15099
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    const-string/jumbo v6, ""

    const-string/jumbo v7, "mp4"

    move-object/from16 v3, p1

    move-wide/from16 v4, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p11

    invoke-interface/range {v2 .. v13}, Lcom/alibaba/wukong/im/MessageBuilder;->buildEncryptVideoMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;I)Lcom/alibaba/wukong/im/Message;

    move-result-object v4

    .line 15102
    new-instance v5, Lcom/alibaba/wukong/im/MessageSendInfo;

    invoke-direct {v5}, Lcom/alibaba/wukong/im/MessageSendInfo;-><init>()V

    .line 15103
    invoke-virtual/range {p0 .. p0}, Ldiz;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15104
    new-instance v2, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    iput-object v2, v5, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 15105
    iget-object v2, v5, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v2, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    .line 15113
    :goto_1
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v2, v4, v5}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageSendInfo;)Lcom/alibaba/wukong/im/Message;

    move-result-object v3

    .line 15114
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p11

    invoke-virtual/range {v2 .. v8}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZLjava/lang/String;Ljava/lang/String;Z)V

    .line 15115
    const/4 v2, 0x1

    .line 1063
    goto :goto_0

    .line 15106
    :cond_1
    invoke-direct/range {p0 .. p0}, Ldiz;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15107
    new-instance v2, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    iput-object v2, v5, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 15108
    iget-object v2, v5, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v2, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    goto :goto_1

    .line 15110
    :cond_2
    new-instance v2, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    iput-object v2, v5, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 15111
    iget-object v2, v5, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v2, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    goto :goto_1

    .line 1066
    :cond_3
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 1067
    .local v21, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "duration"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v4, "chat_shortvideo_duration_click"

    move-object/from16 v0, v21

    invoke-interface {v2, v4, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1069
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/MessageBuilder;

    const-string/jumbo v8, ""

    const-string/jumbo v13, "mp4"

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v9, p5

    move/from16 v11, p7

    move/from16 v12, p8

    move-wide/from16 v14, p9

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    invoke-interface/range {v3 .. v17}, Lcom/alibaba/wukong/im/MessageBuilder;->buildVideoMessage(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v3

    .line 1071
    .local v3, "message":Lcom/alibaba/wukong/im/Message;
    new-instance v20, Lcom/alibaba/wukong/im/MessageSendInfo;

    invoke-direct/range {v20 .. v20}, Lcom/alibaba/wukong/im/MessageSendInfo;-><init>()V

    .line 1072
    .local v20, "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    invoke-virtual/range {p0 .. p0}, Ldiz;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1073
    new-instance v2, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 1074
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    .line 1082
    :goto_2
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v20

    invoke-interface {v2, v3, v0}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageSendInfo;)Lcom/alibaba/wukong/im/Message;

    move-result-object v3

    .line 1083
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p11

    invoke-virtual/range {v2 .. v8}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZLjava/lang/String;Ljava/lang/String;Z)V

    .line 1084
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1075
    :cond_4
    invoke-direct/range {p0 .. p0}, Ldiz;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1076
    new-instance v2, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 1077
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    goto :goto_2

    .line 1079
    :cond_5
    new-instance v2, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 1080
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .param p1, "videoPath"    # Ljava/lang/String;
    .param p2, "authMediaId"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "duration"    # J
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "picPath"    # Ljava/lang/String;
    .param p10, "picAuthMediaId"    # Ljava/lang/String;

    .prologue
    .line 986
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    sget v0, Lctk$i;->dt_im_video_url_null:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 988
    const/4 v0, 0x0

    .line 1012
    :goto_0
    return v0

    .line 990
    :cond_0
    invoke-virtual {p0}, Ldiz;->a()V

    .line 992
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v0

    iget-object v2, p0, Ldiz;->a:Ldkh;

    .line 14021
    iget-object v2, v2, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 992
    invoke-virtual {v0, v2}, Ldho;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static/range {p1 .. p1}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14026
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    .line 14028
    invoke-static/range {p1 .. p1}, Lebj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mp4"

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    .line 14026
    invoke-interface/range {v0 .. v10}, Lcom/alibaba/wukong/im/MessageBuilder;->buildEncryptCommonVideoMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    .line 14031
    new-instance v3, Lcom/alibaba/wukong/im/MessageSendInfo;

    invoke-direct {v3}, Lcom/alibaba/wukong/im/MessageSendInfo;-><init>()V

    .line 14032
    invoke-virtual {p0}, Ldiz;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14033
    new-instance v0, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    iput-object v0, v3, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 14034
    iget-object v0, v3, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    .line 14042
    :goto_1
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v0, v2, v3}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageSendInfo;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 14043
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p9

    invoke-virtual/range {v0 .. v6}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZLjava/lang/String;Ljava/lang/String;Z)V

    .line 14044
    const/4 v0, 0x1

    .line 993
    goto :goto_0

    .line 14035
    :cond_1
    invoke-direct {p0}, Ldiz;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14036
    new-instance v0, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    iput-object v0, v3, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 14037
    iget-object v0, v3, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    goto :goto_1

    .line 14039
    :cond_2
    new-instance v0, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    iput-object v0, v3, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 14040
    iget-object v0, v3, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    goto :goto_1

    .line 995
    :cond_3
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    .line 997
    invoke-static/range {p1 .. p1}, Lebj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "mp4"

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    .line 995
    invoke-interface/range {v1 .. v13}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCommonVideoMessage(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 999
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    new-instance v14, Lcom/alibaba/wukong/im/MessageSendInfo;

    invoke-direct {v14}, Lcom/alibaba/wukong/im/MessageSendInfo;-><init>()V

    .line 1000
    .local v14, "info":Lcom/alibaba/wukong/im/MessageSendInfo;
    invoke-virtual {p0}, Ldiz;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1001
    new-instance v0, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    iput-object v0, v14, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 1002
    iget-object v0, v14, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    .line 1010
    :goto_2
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v0, v1, v14}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageSendInfo;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 1011
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p9

    invoke-virtual/range {v0 .. v6}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZLjava/lang/String;Ljava/lang/String;Z)V

    .line 1012
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1003
    :cond_4
    invoke-direct {p0}, Ldiz;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1004
    new-instance v0, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    iput-object v0, v14, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 1005
    iget-object v0, v14, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    goto :goto_2

    .line 1007
    :cond_5
    new-instance v0, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    iput-object v0, v14, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    .line 1008
    iget-object v0, v14, Lcom/alibaba/wukong/im/MessageSendInfo;->xpnInfo:Lcom/alibaba/wukong/im/XPNInfo;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILdcu;)Z
    .locals 12
    .param p1, "dynamicEmotionId"    # Ljava/lang/String;
    .param p2, "emotionMediaId"    # Ljava/lang/String;
    .param p3, "emotionAuthMediaId"    # Ljava/lang/String;
    .param p4, "thumbUrl"    # Ljava/lang/String;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "messageInfoListener"    # Ldcu;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1173
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "dt_im_gif_search_gif_send"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1175
    invoke-virtual {p0}, Ldiz;->a()V

    .line 1177
    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1178
    .local v10, "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "p_id"

    const-string/jumbo v3, "-12"

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    const-string/jumbo v2, "p_type"

    const-string/jumbo v3, "2"

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    const-string/jumbo v2, "e_id"

    const-string/jumbo v3, "0"

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    const-string/jumbo v2, "is_3rd_emotion"

    const-string/jumbo v3, "1"

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    const-string/jumbo v2, "3rd_emotion_thumb"

    move-object/from16 v0, p4

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    const-string/jumbo v2, "3rd_emotion_id"

    invoke-virtual {v10, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    const-string/jumbo v2, "3rd_emotion_width"

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    const-string/jumbo v2, "3rd_emotion_height"

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    .line 1188
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v3, p4

    :goto_0
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p3

    .line 1187
    invoke-interface/range {v2 .. v10}, Lcom/alibaba/wukong/im/MessageBuilder;->buildImageMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v11

    .line 1190
    .local v11, "message":Lcom/alibaba/wukong/im/Message;
    invoke-virtual {p0}, Ldiz;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1191
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    const/4 v3, 0x1

    invoke-interface {v2, v11, v3}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;I)Lcom/alibaba/wukong/im/Message;

    move-result-object v11

    .line 1193
    :cond_0
    if-eqz p7, :cond_1

    .line 1194
    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-interface {v0, v2}, Ldcu;->a(Ljava/lang/String;)V

    .line 1196
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v11, v2, p2}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1197
    const/4 v2, 0x1

    .line 1200
    .end local v10    # "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "message":Lcom/alibaba/wukong/im/Message;
    :goto_1
    return v2

    .restart local v10    # "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    move-object v3, p2

    .line 1188
    goto :goto_0

    .line 1200
    .end local v10    # "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "picUrl"    # Ljava/lang/String;
    .param p5, "isAutoSending"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 695
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/alibaba/wukong/im/MessageBuilder;->buildLinkedMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 696
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    invoke-direct {p0, v0, p1, p4, p5}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 803
    invoke-virtual {p0}, Ldiz;->a()V

    .line 805
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 806
    const/4 v1, 0x0

    .line 811
    :goto_0
    return v1

    .line 808
    :cond_0
    invoke-static {p1}, Ldiz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 809
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v1, p1, p2}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 12500
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V

    move v1, v2

    .line 811
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .local p3, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 417
    invoke-virtual {p0}, Ldiz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    invoke-direct {p0, p1, p2, p3, v1}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Z

    move-result v0

    .line 420
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, v1}, Ldiz;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;Z)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p3, "isAutoSending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 302
    .local p2, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Ldiz;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Ldiz;->a:Ldkh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldiz;->a:Ldkh;

    .line 10021
    iget-object v0, v0, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 778
    invoke-static {v0}, Ldiz;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "picUrl"    # Ljava/lang/String;
    .param p5, "isAutoSending"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 700
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/alibaba/wukong/im/MessageBuilder;->buildLinkedNonMenuMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 701
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    invoke-direct {p0, v0, p1, p4, p5}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 2073
    iget-object v0, p0, Ldiz;->a:Ldkh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldiz;->a:Ldkh;

    .line 30021
    iget-object v0, v0, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 2073
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
