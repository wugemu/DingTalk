.class final Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "NameCardEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$1;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$1;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;)Lftc;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$1;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    invoke-virtual {v0, v1}, Lftc;->a(Landroid/app/Activity;)V

    .line 83
    return-void
.end method
