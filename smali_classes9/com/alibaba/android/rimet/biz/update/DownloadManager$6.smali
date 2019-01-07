.class final Lcom/alibaba/android/rimet/biz/update/DownloadManager$6;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/update/DownloadManager;->a(Ljay;Ljax$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljax$a;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/update/DownloadManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/update/DownloadManager;Ljax$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$6;->b:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$6;->a:Ljax$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 251
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$6;->b:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->d(Lcom/alibaba/android/rimet/biz/update/DownloadManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$6;->a:Ljax$a;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$6;->a:Ljax$a;

    invoke-virtual {v0}, Ljax$a;->a()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$6;->b:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->a(Lcom/alibaba/android/rimet/biz/update/DownloadManager;Z)Z

    .line 255
    return-void
.end method
