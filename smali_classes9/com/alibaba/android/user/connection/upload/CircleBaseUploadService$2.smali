.class final Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService$2;
.super Landroid/content/BroadcastReceiver;
.source "CircleBaseUploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;

    .prologue
    .line 124
    .local p0, "this":Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService$2;, "Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService$2;"
    iput-object p1, p0, Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService$2;->a:Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 127
    .local p0, "this":Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService$2;, "Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService$2;"
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const-string/jumbo v3, "connection_on_upload_files_success"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    const-string/jumbo v3, "connection_on_upload_files_success"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 134
    .local v2, "uploadResponses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask$CircleUploadResponse;>;"
    invoke-static {v2}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    invoke-static {v2}, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask$CircleUploadResponse;->to(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 136
    .local v1, "uploadResponseList":Ljava/util/List;, "Ljava/util/List<Lifx;>;"
    invoke-static {v1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 137
    iget-object v3, p0, Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService$2;->a:Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;

    invoke-static {v3, v1}, Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;->a(Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;Ljava/util/List;)V

    .line 138
    iget-object v3, p0, Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService$2;->a:Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;

    iget-object v4, p0, Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService$2;->a:Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;->a(Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;)Ljava/io/Serializable;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/android/user/connection/upload/CircleBaseUploadService;->a(Ljava/io/Serializable;Ljava/util/List;)V

    goto :goto_0
.end method
