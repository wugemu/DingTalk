.class public Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;
.super Ljava/lang/Object;
.source "UploadPostRecorder.java"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;->a:Landroid/content/Context;

    .line 1061
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;->b:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1062
    new-instance v0, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder$2;-><init>(Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;->b:Landroid/content/BroadcastReceiver;

    .line 1078
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;->b:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;Z)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;
    .param p1, "x1"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 37
    .line 1093
    invoke-static {}, Lfdy;->a()Lfdy;

    move-result-object v0

    const-string/jumbo v1, "1"

    .line 2069
    invoke-virtual {v0, v1, v6}, Lfds;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1094
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1095
    :cond_0
    const-string/jumbo v0, "finish all task"

    invoke-static {v0}, Lffe;->a(Ljava/lang/String;)V

    .line 1112
    :goto_0
    return-void

    .line 1099
    :cond_1
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;

    .line 1101
    if-nez v0, :cond_2

    .line 1102
    const-string/jumbo v0, "postCreateObject = null"

    invoke-static {v0}, Lffe;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1107
    :cond_2
    invoke-static {}, Lfea;->a()Lfea;

    move-result-object v1

    const-string/jumbo v2, "9"

    .line 3069
    invoke-virtual {v1, v2, v6}, Lfds;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1109
    invoke-static {v1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1110
    const-string/jumbo v1, "task queue is empty"

    invoke-static {v1}, Lffe;->a(Ljava/lang/String;)V

    .line 3123
    invoke-static {}, Lfdz;->a()Lfdz;

    move-result-object v1

    const-string/jumbo v2, "9"

    .line 4069
    invoke-virtual {v1, v2, v6}, Lfds;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 3124
    invoke-static {v1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3125
    const-string/jumbo v0, "queryIfHasUploadResponse is empty"

    invoke-static {v0}, Lffe;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3129
    :cond_3
    iget-object v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget v2, v2, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->contentType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    iget-object v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v2, v2, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 3130
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lifx;

    .line 3131
    if-eqz v1, :cond_4

    .line 5034
    :try_start_0
    iget-object v3, v1, Lifx;->b:Ljava/lang/String;

    .line 3133
    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v3

    .line 3134
    invoke-virtual {v3}, Lcom/laiwang/protocol/media/MediaId;->getType()Lcom/laiwang/protocol/media/MediaType;

    move-result-object v4

    sget-object v5, Lcom/laiwang/protocol/media/MediaType;->VIDEO_MP4:Lcom/laiwang/protocol/media/MediaType;

    invoke-virtual {v4, v5}, Lcom/laiwang/protocol/media/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3135
    iget-object v3, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v3, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    .line 6026
    iget-object v4, v1, Lifx;->a:Ljava/lang/String;

    .line 3135
    iput-object v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->videoMediaId:Ljava/lang/String;

    .line 3136
    iget-object v3, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v3, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    new-instance v4, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    invoke-direct {v4}, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;-><init>()V

    iput-object v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->videoAuthMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    .line 3137
    iget-object v3, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v3, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    iget-object v3, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->videoAuthMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    .line 6034
    iget-object v1, v1, Lifx;->b:Ljava/lang/String;

    .line 3137
    iput-object v1, v3, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3143
    :catch_0
    move-exception v1

    .line 3144
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    .line 3145
    const-string/jumbo v3, "UploadPostRecorder"

    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lfxo;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3138
    :cond_5
    :try_start_1
    invoke-virtual {v3}, Lcom/laiwang/protocol/media/MediaId;->getType()Lcom/laiwang/protocol/media/MediaType;

    move-result-object v3

    sget-object v4, Lcom/laiwang/protocol/media/MediaType;->IMAGE_JPG:Lcom/laiwang/protocol/media/MediaType;

    invoke-virtual {v3, v4}, Lcom/laiwang/protocol/media/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3139
    iget-object v3, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v3, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    .line 7026
    iget-object v4, v1, Lifx;->a:Ljava/lang/String;

    .line 3139
    iput-object v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->picMediaId:Ljava/lang/String;

    .line 3140
    iget-object v3, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v3, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    new-instance v4, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    invoke-direct {v4}, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;-><init>()V

    iput-object v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->picAuthMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    .line 3141
    iget-object v3, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v3, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    iget-object v3, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->picAuthMedia:Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;

    .line 7034
    iget-object v1, v1, Lifx;->b:Ljava/lang/String;

    .line 3141
    iput-object v1, v3, Lcom/alibaba/android/user/connection/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3150
    :cond_6
    iget-object v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    if-nez v2, :cond_7

    .line 3151
    new-instance v2, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    invoke-direct {v2}, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;-><init>()V

    iput-object v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .line 3153
    :cond_7
    iget-object v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    invoke-static {v1}, Lfcl;->a(Ljava/util/List;)Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;

    move-result-object v1

    iput-object v1, v2, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->photoContent:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;

    .line 3156
    :cond_8
    new-instance v1, Lfcl;

    invoke-direct {v1}, Lfcl;-><init>()V

    invoke-virtual {v1, v0, v6}, Lfcl;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;Lcma;)V

    goto/16 :goto_0

    .line 1115
    :cond_9
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;->a:Landroid/content/Context;

    const-class v4, Lcom/alibaba/android/user/connection/upload/CircleUploadService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1116
    const-string/jumbo v3, "circle_task_param"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1117
    const-string/jumbo v3, "circle_local_pick_files"

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1118
    const-string/jumbo v0, "circle_from_network_changed"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1119
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;->a(Z)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .param p1, "fromNetWorkChanged"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 52
    const-string/jumbo v0, "UploadPostRecorder"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lffm;->a(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder$1;-><init>(Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;Z)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method
