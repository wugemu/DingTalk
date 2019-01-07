.class final Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "WebViewBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity$2;->a:Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 317
    invoke-static {}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->g()V

    .line 318
    return-void
.end method
