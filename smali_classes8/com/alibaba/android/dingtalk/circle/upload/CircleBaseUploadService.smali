.class public abstract Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;
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
    .line 31
    .local p0, "this":Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;, "Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService<TParam;>;"
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 116
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService$2;-><init>(Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;)Ljava/io/Serializable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;->a:Ljava/io/Serializable;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;Ljava/util/List;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 31
    .line 3143
    invoke-static {p1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3144
    invoke-static {}, Lbph;->e()Lbph;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbph;->a(Ljava/util/Collection;)V

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;, "Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService<TParam;>;"
    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;->a:Ljava/io/Serializable;

    .line 53
    invoke-static {}, Lbph;->e()Lbph;

    move-result-object v0

    .line 1246
    invoke-virtual {v0, v1}, Lbpa;->a(Lcou;)V

    .line 54
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
    .line 60
    .local p0, "this":Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;, "Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService<TParam;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 40
    .local p0, "this":Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;, "Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService<TParam;>;"
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1139
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;->b:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "circle_on_upload_files_success"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 42
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 46
    .local p0, "this":Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;, "Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService<TParam;>;"
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1149
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 48
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;, "Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService<TParam;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 66
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v6

    .line 67
    .local v6, "ret":I
    if-nez p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v6

    .line 69
    :cond_1
    const-string/jumbo v7, "circle_from_network_changed"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 71
    .local v2, "fromNetWorkChanged":Z
    iget-object v7, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;->a:Ljava/io/Serializable;

    if-eqz v7, :cond_2

    .line 72
    if-nez v2, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "circle_on_uploading_photos"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 79
    :cond_2
    :try_start_0
    const-string/jumbo v7, "circle_local_pick_files"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 80
    .local v5, "photoPickResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    const-string/jumbo v7, "circle_task_param"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Ljava/io/Serializable;

    .line 81
    .local v3, "param":Ljava/io/Serializable;, "TParam;"
    iput-object v3, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;->a:Ljava/io/Serializable;

    .line 83
    instance-of v7, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;

    if-eqz v7, :cond_3

    .line 84
    move-object v0, v3

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;

    move-object v7, v0

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    if-eqz v7, :cond_3

    .line 85
    move-object v0, v3

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;

    move-object v7, v0

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget v7, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->contentType:I

    const/4 v10, 0x3

    if-ne v7, v10, :cond_3

    move-object v0, v3

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;

    move-object v7, v0

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    if-eqz v7, :cond_3

    .line 86
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "photoPickResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .restart local v5    # "photoPickResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    new-instance v4, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    invoke-direct {v4}, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;-><init>()V

    .line 88
    .local v4, "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    move-object v0, v3

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;

    move-object v7, v0

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->videoMediaId:Ljava/lang/String;

    iput-object v7, v4, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 89
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v4, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .end local v4    # "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    invoke-direct {v4}, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;-><init>()V

    .line 91
    .restart local v4    # "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    check-cast v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;

    .end local v3    # "param":Ljava/io/Serializable;, "TParam;"
    iget-object v7, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->picMediaId:Ljava/lang/String;

    iput-object v7, v4, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 92
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v4    # "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;->a()Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;

    move-result-object v10

    new-instance v11, Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService$1;

    invoke-direct {v11, p0}, Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService$1;-><init>(Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;)V

    .line 3076
    iget-object v7, v10, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;->a:Ljava/util/List;

    if-eqz v7, :cond_5

    iget-object v7, v10, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 3077
    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v7

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v12, "circle_on_before_upload_task_not_finish"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ldq;->a(Landroid/content/Intent;)Z

    :cond_4
    move v7, v8

    .line 2091
    :goto_1
    if-eqz v7, :cond_0

    .line 2093
    iput-object v11, v10, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;->b:Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$b;

    .line 2095
    invoke-virtual {v10}, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;->b()V

    .line 2097
    const-string/jumbo v7, "CircleUploadImgTask"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v7

    .line 2098
    invoke-interface {v7, v10}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 108
    .end local v5    # "photoPickResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "something error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lbqh;->a(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;->a()V

    goto/16 :goto_0

    .line 3080
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "photoPickResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    :cond_5
    :try_start_1
    iput-object v5, v10, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;->a:Ljava/util/List;

    .line 3081
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-nez v7, :cond_4

    move v7, v9

    goto :goto_1
.end method
