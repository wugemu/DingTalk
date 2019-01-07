.class public abstract Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;
.super Landroid/app/Service;
.source "CircleBaseUploadService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Param::",
        "Ljava/io/Serializable;",
        ">",
        "Landroid/app/Service;"
    }
.end annotation


# instance fields
.field private volatile a:Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TParam;"
        }
    .end annotation
.end field

.field private b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;, "Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService<TParam;>;"
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 124
    new-instance v0, Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService$2;-><init>(Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;)Ljava/io/Serializable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;->a:Ljava/io/Serializable;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;Ljava/util/List;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 30
    .line 3151
    invoke-static {p1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3152
    invoke-static {}, Lfdz;->a()Lfdz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfdz;->a(Ljava/util/Collection;)V

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;, "Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService<TParam;>;"
    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;->a:Ljava/io/Serializable;

    .line 52
    invoke-static {}, Lfdz;->a()Lfdz;

    move-result-object v0

    .line 1245
    invoke-virtual {v0, v1}, Lfds;->a(Lcou;)V

    .line 53
    return-void
.end method

.method protected abstract a(Ljava/io/Serializable;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParam;",
            "Ljava/util/List",
            "<",
            "Lifx;",
            ">;)V"
        }
    .end annotation
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    .local p0, "this":Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;, "Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService<TParam;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 39
    .local p0, "this":Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;, "Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService<TParam;>;"
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1147
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;->b:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "connection_on_upload_files_success"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 41
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 45
    .local p0, "this":Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;, "Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService<TParam;>;"
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1157
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 47
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 65
    .local p0, "this":Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;, "Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService<TParam;>;"
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v6

    .line 66
    .local v6, "ret":I
    if-nez p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v6

    .line 70
    :cond_1
    const-string/jumbo v8, "circle_from_network_changed"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 72
    .local v2, "fromNetWorkChanged":Z
    iget-object v8, p0, Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;->a:Ljava/io/Serializable;

    if-eqz v8, :cond_2

    .line 73
    if-nez v2, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "connection_on_uploading_photos"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 81
    :cond_2
    :try_start_0
    const-string/jumbo v8, "circle_local_pick_files"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 82
    .local v5, "photoPickResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    const-string/jumbo v8, "circle_task_param"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Ljava/io/Serializable;

    .line 83
    .local v4, "param":Ljava/io/Serializable;, "TParam;"
    iput-object v4, p0, Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;->a:Ljava/io/Serializable;

    .line 85
    instance-of v8, v4, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;

    if-eqz v8, :cond_3

    .line 86
    move-object v0, v4

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;

    move-object v3, v0

    .line 88
    .local v3, "object":Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;
    iget-object v8, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    if-eqz v8, :cond_3

    .line 89
    iget-object v8, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget v8, v8, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->contentType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    iget-object v8, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v8, v8, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    if-eqz v8, :cond_3

    .line 92
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "photoPickResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .restart local v5    # "photoPickResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    new-instance v7, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    invoke-direct {v7}, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;-><init>()V

    .line 95
    .local v7, "videoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    move-object v0, v4

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;

    move-object v8, v0

    iget-object v8, v8, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v8, v8, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    iget-object v8, v8, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->videoMediaId:Ljava/lang/String;

    iput-object v8, v7, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 96
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v7, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .end local v7    # "videoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    invoke-direct {v7}, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;-><init>()V

    .line 99
    .restart local v7    # "videoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    check-cast v4, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;

    .end local v4    # "param":Ljava/io/Serializable;, "TParam;"
    iget-object v8, v4, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v8, v8, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    iget-object v8, v8, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->picMediaId:Ljava/lang/String;

    iput-object v8, v7, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 100
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v3    # "object":Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;
    .end local v7    # "videoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    :cond_3
    invoke-static {}, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->a()Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;

    move-result-object v9

    new-instance v10, Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService$1;

    invoke-direct {v10, p0}, Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService$1;-><init>(Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;)V

    .line 3077
    iget-object v8, v9, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->a:Ljava/util/List;

    if-eqz v8, :cond_5

    iget-object v8, v9, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 3078
    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v8

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "connection_on_before_upload_task_not_finish"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Ldq;->a(Landroid/content/Intent;)Z

    .line 3082
    :cond_4
    const/4 v8, 0x0

    .line 2092
    :goto_1
    if-eqz v8, :cond_0

    .line 2096
    iput-object v10, v9, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->b:Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask$b;

    .line 2098
    invoke-virtual {v9}, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->b()V

    .line 2100
    const-string/jumbo v8, "CircleUploadImgTask"

    const/4 v10, 0x1

    invoke-static {v8, v10}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v8

    .line 2101
    invoke-interface {v8, v9}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 116
    .end local v5    # "photoPickResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "something error: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lffe;->a(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;->a()V

    goto/16 :goto_0

    .line 3081
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "photoPickResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    :cond_5
    :try_start_1
    iput-object v5, v9, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;->a:Ljava/util/List;

    .line 3082
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    goto :goto_1
.end method
