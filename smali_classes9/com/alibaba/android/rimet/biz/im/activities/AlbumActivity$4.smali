.class final Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "AlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$4;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 359
    const-string/jumbo v0, "com.workapp.choose.pictire.from.album"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    const-string/jumbo v0, "img"

    const-string/jumbo v1, "AlbumActivity"

    const-string/jumbo v2, "action:ACTION_CHOOSE_PICTURE_FROM_ALBUM"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$4;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Landroid/content/Intent;)V

    .line 362
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$4;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->finish()V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$4;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->e(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$4;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->e(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    const-string/jumbo v0, "img"

    const-string/jumbo v1, "AlbumActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "action:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$4;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->e(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$4;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Landroid/content/Intent;)V

    .line 366
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$4;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->finish()V

    goto :goto_0

    .line 367
    :cond_2
    sget-object v0, Lhcp;->d:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$4;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->finish()V

    goto :goto_0
.end method
