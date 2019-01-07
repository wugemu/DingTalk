.class final Lcom/alibaba/android/rimet/biz/update/DownloadManager$7;
.super Lbzd;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/update/DownloadManager;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Message;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/update/DownloadManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/update/DownloadManager;Landroid/os/Message;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$7;->b:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$7;->a:Landroid/os/Message;

    invoke-direct {p0}, Lbzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final grant()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 349
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$7;->b:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->e(Lcom/alibaba/android/rimet/biz/update/DownloadManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$7;->a:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 350
    return-void
.end method

.method public final onDenied()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 354
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$7;->b:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->e(Lcom/alibaba/android/rimet/biz/update/DownloadManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$7;->a:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 355
    return-void
.end method

.method public final onNeverAsk()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 359
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$7;->b:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->e(Lcom/alibaba/android/rimet/biz/update/DownloadManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$7;->a:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 360
    return-void
.end method
