.class final Lcom/alibaba/android/rimet/biz/update/DownloadManager$4;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 234
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$4;->b:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$4;->a:Ljax$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 238
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$4;->b:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->a(Lcom/alibaba/android/rimet/biz/update/DownloadManager;Z)Z

    .line 239
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$4;->b:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$4;->a:Ljax$a;

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->a(Lcom/alibaba/android/rimet/biz/update/DownloadManager;Ljax$a;)V

    .line 240
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "update_normal_update_click"

    invoke-interface {v0, v2, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 241
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$4;->b:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->b(Lcom/alibaba/android/rimet/biz/update/DownloadManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "pref_key_update_remind_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 244
    return-void
.end method
