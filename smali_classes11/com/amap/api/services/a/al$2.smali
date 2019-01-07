.class Lcom/amap/api/services/a/al$2;
.super Ljava/lang/Thread;
.source "CloudSearchCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/a/al;->searchCloudDetailAsyn(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amap/api/services/a/al;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/al;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/amap/api/services/a/al$2;->c:Lcom/amap/api/services/a/al;

    iput-object p2, p0, Lcom/amap/api/services/a/al$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/services/a/al$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 167
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 169
    const/16 v0, 0xc

    :try_start_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 170
    const/16 v0, 0x2bd

    iput v0, v1, Landroid/os/Message;->what:I

    .line 171
    new-instance v0, Lcom/amap/api/services/a/q$c;

    invoke-direct {v0}, Lcom/amap/api/services/a/q$c;-><init>()V

    .line 172
    iget-object v2, p0, Lcom/amap/api/services/a/al$2;->c:Lcom/amap/api/services/a/al;

    invoke-static {v2}, Lcom/amap/api/services/a/al;->a(Lcom/amap/api/services/a/al;)Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/services/a/q$c;->b:Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    .line 173
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    iget-object v2, p0, Lcom/amap/api/services/a/al$2;->c:Lcom/amap/api/services/a/al;

    iget-object v3, p0, Lcom/amap/api/services/a/al$2;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/amap/api/services/a/al$2;->b:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/amap/api/services/a/al;->a(Lcom/amap/api/services/a/al;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/services/cloud/CloudItemDetail;

    move-result-object v2

    .line 175
    iput-object v2, v0, Lcom/amap/api/services/a/q$c;->a:Lcom/amap/api/services/cloud/CloudItemDetail;

    .line 176
    const/16 v0, 0x3e8

    iput v0, v1, Landroid/os/Message;->arg2:I
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object v0, p0, Lcom/amap/api/services/a/al$2;->c:Lcom/amap/api/services/a/al;

    invoke-static {v0}, Lcom/amap/api/services/a/al;->b(Lcom/amap/api/services/a/al;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 181
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg2:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    iget-object v0, p0, Lcom/amap/api/services/a/al$2;->c:Lcom/amap/api/services/a/al;

    invoke-static {v0}, Lcom/amap/api/services/a/al;->b(Lcom/amap/api/services/a/al;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/services/a/al$2;->c:Lcom/amap/api/services/a/al;

    invoke-static {v2}, Lcom/amap/api/services/a/al;->b(Lcom/amap/api/services/a/al;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
