.class final Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity$1;
.super Ljava/lang/Object;
.source "WebViewBaseActivity.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 73
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity$1;->a:Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDetected(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity$1;->a:Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->a(Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;Ljava/lang/String;)V

    .line 77
    return-void
.end method
