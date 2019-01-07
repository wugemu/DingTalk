.class final Lhec$1;
.super Landroid/content/BroadcastReceiver;
.source "StickPageDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhec;


# direct methods
.method constructor <init>(Lhec;)V
    .locals 0
    .param p1, "this$0"    # Lhec;

    .prologue
    .line 99
    iput-object p1, p0, Lhec$1;->a:Lhec;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 103
    if-eqz p2, :cond_0

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "com.workapp.lightapp.microapp.TOP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    const-string/jumbo v2, "url"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhec;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    const-string/jumbo v2, "title"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhec;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    const-string/jumbo v2, "intentFlag"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lhec;->a(I)I

    .line 109
    iget-object v2, p0, Lhec$1;->a:Lhec;

    invoke-static {v2}, Lhec;->a(Lhec;)Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lhec;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lhec$1;->a:Lhec;

    invoke-static {v3}, Lhec;->a(Lhec;)Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lhec$1;->a:Lhec;

    invoke-static {v2}, Lhec;->b(Lhec;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lhec$1;->a:Lhec;

    invoke-static {v2, v4}, Lhec;->a(Lhec;Z)Z

    .line 123
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 112
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "com.workapp.lightapp.microapp.top.CANCEL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-static {}, Lhec;->e()V

    .line 114
    iget-object v2, p0, Lhec$1;->a:Lhec;

    invoke-static {v2, v4}, Lhec;->a(Lhec;Z)Z

    .line 115
    iget-object v2, p0, Lhec$1;->a:Lhec;

    invoke-static {v2}, Lhec;->c(Lhec;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lhec$1;->a:Lhec;

    invoke-static {v2}, Lhec;->c(Lhec;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    invoke-static {v2}, Lhdo;->b(I)Landroid/app/ActivityManager$AppTask;

    move-result-object v1

    .line 117
    .local v1, "task":Landroid/app/ActivityManager$AppTask;
    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v1, v4}, Landroid/app/ActivityManager$AppTask;->setExcludeFromRecents(Z)V

    goto :goto_0
.end method
