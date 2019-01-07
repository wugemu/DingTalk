.class final Lcom/alibaba/android/rimet/biz/update/DownloadManager$1;
.super Landroid/os/Handler;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/update/DownloadManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/update/DownloadManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/update/DownloadManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/update/DownloadManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$1;->a:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$1;->a:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    invoke-static {v0, p1}, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->a(Lcom/alibaba/android/rimet/biz/update/DownloadManager;Landroid/os/Message;)V

    .line 81
    return-void
.end method
