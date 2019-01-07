.class final Lfcj$1;
.super Landroid/content/BroadcastReceiver;
.source "NoticePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfcj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfcj;


# direct methods
.method constructor <init>(Lfcj;)V
    .locals 0
    .param p1, "this$0"    # Lfcj;

    .prologue
    .line 27
    iput-object p1, p0, Lfcj$1;->a:Lfcj;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    const-string/jumbo v2, "circle_on_receive_notice"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 37
    .local v1, "noticeObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;>;"
    invoke-static {v1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    iget-object v2, p0, Lfcj$1;->a:Lfcj;

    iget-object v2, p0, Lfcj$1;->a:Lfcj;

    .line 1024
    iget-object v2, v2, Lfcj;->a:Lfci$a;

    .line 2062
    invoke-interface {v2, v1}, Lfci$a;->a(Ljava/util/List;)V

    goto :goto_0
.end method
