.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$8;
.super Landroid/content/BroadcastReceiver;
.source "SessionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .prologue
    .line 998
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$8;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1002
    if-eqz p2, :cond_0

    .line 1003
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1004
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "com.workapp.lightapp.microapp.TOP"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1005
    const-string/jumbo v4, "url"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1006
    .local v3, "url":Ljava/lang/String;
    const-string/jumbo v4, "title"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1007
    .local v2, "title":Ljava/lang/String;
    const-string/jumbo v4, "intentFlag"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1009
    .local v1, "intentFlag":I
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$8;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 1116
    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1009
    if-eqz v4, :cond_0

    .line 1010
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$8;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 2116
    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1010
    invoke-interface {v4, v2, v3, v1}, Ldyy$b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1014
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "intentFlag":I
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method
