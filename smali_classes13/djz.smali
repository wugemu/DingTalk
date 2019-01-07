.class public final Ldjz;
.super Ljava/lang/Object;
.source "MessageCountDownManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldjz$b;,
        Ldjz$a;
    }
.end annotation


# static fields
.field public static c:Landroid/os/Handler;

.field private static g:Ldjz;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ldjz$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ldjz$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Ldjz$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Ldjz;->c:Landroid/os/Handler;

    .line 126
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldjz;->a:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldjz;->b:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldjz;->f:Ljava/util/List;

    .line 74
    iput-boolean v1, p0, Ldjz;->d:Z

    .line 77
    iput-boolean v1, p0, Ldjz;->e:Z

    .line 92
    iput-boolean v1, p0, Ldjz;->d:Z

    .line 93
    return-void
.end method

.method static synthetic a(Ldjz;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
    .locals 3
    .param p0, "x0"    # Ldjz;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 49
    .line 3802
    const-string/jumbo v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3803
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v2, "ISO-8859-1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3804
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3805
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 3806
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 3807
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 49
    return-object v0
.end method

.method static synthetic a(Ldjz;Lcom/alibaba/wukong/im/Message;JJZ)Ldjz$a;
    .locals 8
    .param p0, "x0"    # Ldjz;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "x2"    # J
    .param p4, "x3"    # J
    .param p6, "x4"    # Z

    .prologue
    .line 49
    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v6}, Ldjz;->a(Lcom/alibaba/wukong/im/Message;JJZ)Ldjz$a;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a()Ldjz;
    .locals 2

    .prologue
    .line 85
    const-class v1, Ldjz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldjz;->g:Ldjz;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ldjz;

    invoke-direct {v0}, Ldjz;-><init>()V

    sput-object v0, Ldjz;->g:Ldjz;

    .line 88
    :cond_0
    sget-object v0, Ldjz;->g:Ldjz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Ldjz;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 4
    .param p0, "x0"    # Ldjz;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    .line 3784
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3785
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3786
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3787
    const-string/jumbo v2, "ISO-8859-1"

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3788
    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3789
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 3790
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 49
    return-object v2
.end method

.method static synthetic a(Ldjz;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ldjz;

    .prologue
    .line 49
    iget-object v0, p0, Ldjz;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Ldjz;Lcom/alibaba/wukong/im/Message;J)V
    .locals 0
    .param p0, "x0"    # Ldjz;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "x2"    # J

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Ldjz;->c(Lcom/alibaba/wukong/im/Message;J)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 960
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 961
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/image/ImageMagician;->removeImageCacheAsync(Ljava/lang/String;)V

    .line 962
    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;)Z
    .locals 4
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 348
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Ldjz;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p0, "x0"    # Ldjz;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Ldjz;->d(Lcom/alibaba/wukong/im/Message;)V

    return-void
.end method

.method static synthetic b(Ldjz;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Ldjz;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    .line 4965
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 4966
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/image/ImageMagician;->removeImageCache(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method static synthetic c(Ldjz;Lcom/alibaba/wukong/im/Message;)J
    .locals 2
    .param p0, "x0"    # Ldjz;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 49
    invoke-static {p1}, Ldjz;->e(Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v0

    return-wide v0
.end method

.method private c(Lcom/alibaba/wukong/im/Message;J)V
    .locals 2
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "readTime"    # J

    .prologue
    .line 333
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    new-instance v1, Ldjz$4;

    invoke-direct {v1, p0, p1, p2, p3}, Ldjz$4;-><init>(Ldjz;Lcom/alibaba/wukong/im/Message;J)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 345
    return-void
.end method

.method static synthetic d()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Ldjz;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Ldjz;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p0, "x0"    # Ldjz;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ldjz;->g(Lcom/alibaba/wukong/im/Message;)V

    return-void
.end method

.method public static e(Lcom/alibaba/wukong/im/Message;)J
    .locals 10
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const-wide/16 v6, 0x7530

    .line 817
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v8

    if-nez v8, :cond_1

    .line 842
    :cond_0
    :goto_0
    return-wide v6

    .line 820
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v8

    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    .line 821
    .local v2, "msgType":I
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 823
    :sswitch_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v8

    instance-of v8, v8, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    if-eqz v8, :cond_0

    .line 824
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .line 825
    .local v5, "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v4

    .line 826
    .local v4, "text":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 827
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 828
    .local v1, "length":I
    div-int/lit8 v3, v1, 0x32

    .line 829
    .local v3, "piece":I
    rem-int/lit8 v0, v1, 0x32

    .line 830
    .local v0, "left":I
    if-gtz v0, :cond_2

    if-nez v3, :cond_3

    .line 831
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 833
    :cond_3
    int-to-long v8, v3

    mul-long/2addr v6, v8

    goto :goto_0

    .line 840
    .end local v0    # "left":I
    .end local v1    # "length":I
    .end local v3    # "piece":I
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    :sswitch_1
    const-wide/32 v6, 0x2dc6c0

    goto :goto_0

    .line 821
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x1f4 -> :sswitch_1
        0x1f5 -> :sswitch_1
        0x1f6 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic e(Ldjz;Lcom/alibaba/wukong/im/Message;)V
    .locals 3
    .param p0, "x0"    # Ldjz;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 49
    .line 3850
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3945
    .end local p1    # "x1":Lcom/alibaba/wukong/im/Message;
    :cond_0
    :goto_0
    return-void

    .line 3853
    .restart local p1    # "x1":Lcom/alibaba/wukong/im/Message;
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    .line 3854
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 3857
    :sswitch_0
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    if-eqz v0, :cond_0

    .line 3858
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 3859
    invoke-static {v0, p1}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3863
    :sswitch_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    if-eqz v0, :cond_0

    .line 3864
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 3865
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->picUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3869
    :sswitch_2
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$GeoContent;

    if-eqz v0, :cond_0

    .line 3870
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$GeoContent;

    .line 3871
    invoke-static {v0, p1}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3876
    :sswitch_3
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    if-eqz v0, :cond_0

    .line 3877
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    .line 3878
    invoke-static {v0, p1}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v1

    .line 3970
    const-string/jumbo v0, "AUDIO"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 3971
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/audio/AudioMagician;->removeAudioCacheAsync(Ljava/lang/String;)V

    goto :goto_0

    .line 3883
    :sswitch_4
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$VideoContent;

    if-eqz v0, :cond_0

    .line 3884
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$VideoContent;

    .line 3885
    const-string/jumbo v1, "MessageCountDownManager"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Ldjz$10;

    invoke-direct {v2, p0, v0, p1}, Ldjz$10;-><init>(Ldjz;Lcom/alibaba/wukong/im/MessageContent$VideoContent;Lcom/alibaba/wukong/im/Message;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 3899
    :sswitch_5
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    if-eqz v0, :cond_0

    .line 3900
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    .line 3901
    const-string/jumbo v1, "MessageCountDownManager"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Ldjz$2;

    invoke-direct {v2, p0, v0, p1}, Ldjz$2;-><init>(Ldjz;Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;Lcom/alibaba/wukong/im/Message;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 3912
    :sswitch_6
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    if-eqz v0, :cond_2

    .line 3913
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    .line 3914
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->spaceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->fileId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->fileType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Ldrp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3915
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3916
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 3917
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->removeImageCacheAsync(Ljava/lang/String;)V

    .line 3920
    :cond_2
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;

    if-eqz v0, :cond_0

    .line 3921
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;

    .line 3922
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->spaceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->fileId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3926
    :sswitch_7
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;

    if-eqz v0, :cond_3

    .line 3927
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;

    .line 3928
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->spaceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->fileId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->fileType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Ldrp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3929
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3930
    const-string/jumbo v0, "AUDIO"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 3931
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/audio/AudioMagician;->removeAudioCacheAsync(Ljava/lang/String;)V

    .line 3935
    :cond_3
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;

    if-eqz v0, :cond_0

    .line 3936
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;

    .line 3937
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->spaceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->fileId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3942
    :sswitch_8
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;

    if-eqz v0, :cond_0

    .line 3943
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;

    .line 3944
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->spaceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->fileId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3950
    :sswitch_9
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p1    # "x1":Lcom/alibaba/wukong/im/Message;
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 3951
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v1, :cond_0

    .line 3952
    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 3953
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3854
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_3
        0x66 -> :sswitch_1
        0x67 -> :sswitch_4
        0x68 -> :sswitch_2
        0xca -> :sswitch_5
        0xcb -> :sswitch_6
        0xcc -> :sswitch_7
        0xce -> :sswitch_8
        0xfb -> :sswitch_0
        0xfc -> :sswitch_3
        0xfd -> :sswitch_4
        0xfe -> :sswitch_5
        0x1f4 -> :sswitch_9
        0x1f5 -> :sswitch_9
        0x1f6 -> :sswitch_9
    .end sparse-switch
.end method

.method static synthetic f(Ldjz;Lcom/alibaba/wukong/im/Message;)V
    .locals 4
    .param p0, "x0"    # Ldjz;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 49
    .line 4604
    if-eqz p1, :cond_0

    .line 4605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Ldjz;->e(Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Ldjz;->c(Lcom/alibaba/wukong/im/Message;J)V

    .line 4606
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjz;->d:Z

    .line 4607
    iget-object v0, p0, Ldjz;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    return-void
.end method

.method private static f(Lcom/alibaba/wukong/im/Message;)Z
    .locals 2
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 444
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageType;->COMMON:Lcom/alibaba/wukong/im/Message$MessageType;

    if-eq v0, v1, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v0, v1, :cond_1

    .line 445
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(Lcom/alibaba/wukong/im/Message;)V
    .locals 8
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 567
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 568
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    new-instance v1, Ldjz$9;

    invoke-direct {v1, p0, p1}, Ldjz$9;-><init>(Ldjz;Lcom/alibaba/wukong/im/Message;)V

    .line 595
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Long;

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 568
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/wukong/im/MessageService;->removeLocalMessages(Lcom/alibaba/wukong/Callback;Ljava/lang/String;[Ljava/lang/Long;)V

    .line 597
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(J)Ldjz$a;
    .locals 3
    .param p1, "messageId"    # J

    .prologue
    .line 323
    iget-object v0, p0, Ldjz;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldjz$a;

    return-object v0
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;J)Ldjz$a;
    .locals 8
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "conversationTag"    # J

    .prologue
    const/4 v0, 0x0

    .line 291
    invoke-virtual {p0, p1, p2, p3}, Ldjz;->b(Lcom/alibaba/wukong/im/Message;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-object v0

    .line 295
    :cond_1
    invoke-virtual {p0, p1}, Ldjz;->b(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-static {p1}, Ldjz;->e(Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ldjz;->a(Lcom/alibaba/wukong/im/Message;JJZ)Ldjz$a;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/alibaba/wukong/im/Message;JJZ)Ldjz$a;
    .locals 10
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "totalTime"    # J
    .param p4, "interval"    # J
    .param p6, "isInsert"    # Z

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 183
    cmp-long v0, p2, v2

    if-lez v0, :cond_0

    cmp-long v0, p4, v2

    if-lez v0, :cond_0

    cmp-long v0, p4, p2

    if-lez v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-object v1

    .line 186
    :cond_1
    if-eqz p1, :cond_0

    .line 189
    iget-object v0, p0, Ldjz;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldjz$a;

    .line 190
    .local v1, "countDownTimer":Ldjz$a;
    if-nez v1, :cond_0

    .line 191
    new-instance v1, Ldjz$a;

    .end local v1    # "countDownTimer":Ldjz$a;
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Ldjz$a;-><init>(Ldjz;Lcom/alibaba/wukong/im/Message;JJ)V

    .line 192
    .restart local v1    # "countDownTimer":Ldjz$a;
    iget-object v0, p0, Ldjz;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {p1}, Ldjz;->e(Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ldjz$a;->a(J)V

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Ldjz$a;->d:J

    .line 195
    if-eqz p6, :cond_2

    .line 196
    iget-wide v2, v1, Ldjz$a;->d:J

    invoke-direct {p0, p1, v2, v3}, Ldjz;->c(Lcom/alibaba/wukong/im/Message;J)V

    .line 1685
    :cond_2
    iget-boolean v0, v1, Ldjz$a;->f:Z

    if-nez v0, :cond_0

    .line 1686
    iput-boolean v8, v1, Ldjz$a;->f:Z

    .line 2049
    sget-object v0, Ldjz;->c:Landroid/os/Handler;

    .line 1687
    iget v2, v1, Ldjz$a;->a:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v8, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1688
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 3
    .param p1, "activityKey"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 616
    iget-object v2, p0, Ldjz;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    if-nez v2, :cond_1

    .line 632
    :cond_0
    return-void

    .line 619
    :cond_1
    iget-object v2, p0, Ldjz;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 620
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ldjz$a;>;"
    if-eqz v0, :cond_0

    .line 621
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 622
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldjz$a;

    .line 623
    .local v1, "timer":Ldjz$a;
    if-eqz v1, :cond_2

    .line 626
    iget-object v2, v1, Ldjz$a;->g:Landroid/util/SparseArray;

    if-eqz v2, :cond_2

    .line 629
    iget-object v2, v1, Ldjz$a;->g:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;J)V
    .locals 11
    .param p1, "cid"    # Ljava/lang/String;
    .param p3, "conversationTag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v4, 0x0

    .line 210
    const-wide/16 v6, 0x4

    cmp-long v3, p3, v6

    if-eqz v3, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v1, "newMessages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v3, p0, Ldjz;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 215
    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 216
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 2366
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    invoke-static {v0}, Ldjz;->f(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2367
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->allReceiversRead()Z

    move-result v3

    .line 217
    :goto_2
    if-eqz v3, :cond_2

    .line 3263
    invoke-static {v0}, Ldjz;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3264
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->lastUpdateUnreadCount()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_5

    .line 3265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->lastUpdateUnreadCount()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v0}, Ldjz;->e(Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-lez v3, :cond_4

    const/4 v3, 0x1

    .line 217
    :goto_3
    if-eqz v3, :cond_2

    .line 218
    iget-object v3, p0, Ldjz;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v3, v4

    .line 2369
    goto :goto_2

    :cond_4
    move v3, v4

    .line 3265
    goto :goto_3

    :cond_5
    move v3, v4

    .line 3268
    goto :goto_3

    .line 222
    .end local v0    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_6
    iget-object v3, p0, Ldjz;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 223
    const-string/jumbo v3, "THREAD"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 224
    .local v2, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v3, Ldjz$3;

    invoke-direct {v3, p0, p1}, Ldjz$3;-><init>(Ldjz;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 150
    iget-boolean v0, p0, Ldjz;->e:Z

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Ldjz;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 152
    iget-object v0, p0, Ldjz;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 153
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/alibaba/wukong/im/Message;Ljava/lang/Long;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 155
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alibaba/wukong/im/Message;Ljava/lang/Long;>;"
    if-eqz v7, :cond_1

    .line 156
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 157
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v1, :cond_1

    .line 158
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 159
    .local v8, "backTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v8

    .line 160
    .local v2, "duration":J
    invoke-static {v1}, Ldjz;->e(Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 161
    invoke-direct {p0, v1}, Ldjz;->g(Lcom/alibaba/wukong/im/Message;)V

    goto :goto_1

    :cond_2
    move-object v0, p0

    move-wide v4, v2

    .line 163
    invoke-virtual/range {v0 .. v6}, Ldjz;->a(Lcom/alibaba/wukong/im/Message;JJZ)Ldjz$a;

    goto :goto_1

    .line 168
    .end local v1    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v2    # "duration":J
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alibaba/wukong/im/Message;Ljava/lang/Long;>;"
    .end local v8    # "backTime":J
    :cond_3
    iget-object v0, p0, Ldjz;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 170
    .end local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/alibaba/wukong/im/Message;Ljava/lang/Long;>;>;"
    :cond_4
    iput-boolean v6, p0, Ldjz;->e:Z

    goto :goto_0
.end method

.method public b(Lcom/alibaba/wukong/im/Message;)Z
    .locals 3
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 456
    invoke-static {p1}, Ldjz;->f(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 470
    :cond_0
    :goto_0
    return v1

    .line 459
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    .line 461
    .local v0, "msgType":I
    const/16 v2, 0x66

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/16 v2, 0xfc

    if-eq v0, v2, :cond_2

    const/16 v2, 0x1f4

    if-eq v0, v2, :cond_2

    const/16 v2, 0x1f5

    if-eq v0, v2, :cond_2

    const/16 v2, 0x67

    if-eq v0, v2, :cond_2

    const/16 v2, 0xfd

    if-eq v0, v2, :cond_2

    const/16 v2, 0xca

    if-eq v0, v2, :cond_2

    const/16 v2, 0xfe

    if-eq v0, v2, :cond_2

    .line 470
    invoke-static {p1}, Ldkc;->u(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public b(Lcom/alibaba/wukong/im/Message;J)Z
    .locals 2
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "conversationTag"    # J

    .prologue
    .line 357
    invoke-static {p1}, Ldjz;->f(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x4

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 505
    iget-boolean v0, p0, Ldjz;->d:Z

    if-eqz v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 508
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldjz;->d:Z

    .line 509
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    new-instance v1, Ldjz$7;

    invoke-direct {v1, p0}, Ldjz$7;-><init>(Ldjz;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final c(Lcom/alibaba/wukong/im/Message;)V
    .locals 4
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 479
    if-eqz p1, :cond_0

    iget-object v1, p0, Ldjz;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 481
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 482
    const-string/jumbo v1, "MessageCountDownManager deleteMessage"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 483
    new-instance v1, Ldjz$6;

    invoke-direct {v1, p0, p1}, Ldjz$6;-><init>(Ldjz;Lcom/alibaba/wukong/im/Message;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 489
    iget-object v1, p0, Ldjz;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    .end local v0    # "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    :cond_0
    return-void
.end method

.method public d(Lcom/alibaba/wukong/im/Message;)V
    .locals 8
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 542
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 544
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    new-instance v1, Ldjz$8;

    invoke-direct {v1, p0, p1}, Ldjz$8;-><init>(Ldjz;Lcom/alibaba/wukong/im/Message;)V

    .line 562
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Long;

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 544
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/wukong/im/MessageService;->removeLocalMessages(Lcom/alibaba/wukong/Callback;Ljava/lang/String;[Ljava/lang/Long;)V

    .line 564
    :cond_0
    return-void
.end method
