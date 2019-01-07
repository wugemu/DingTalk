.class final Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "CMailSignListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 637
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->k(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V

    .line 640
    return-void
.end method
