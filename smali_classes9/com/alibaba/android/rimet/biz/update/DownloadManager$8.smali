.class final Lcom/alibaba/android/rimet/biz/update/DownloadManager$8;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/update/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/update/DownloadManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/update/DownloadManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$8;->a:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 389
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$8;->a:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c(Lcom/alibaba/android/rimet/biz/update/DownloadManager;)V

    .line 390
    return-void
.end method
