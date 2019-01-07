.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity$MyWebViewClient$1;
.super Ljava/lang/Object;
.source "PortalActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity$MyWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity$MyWebViewClient;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity$MyWebViewClient;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity$MyWebViewClient;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity$MyWebViewClient$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity$MyWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    return-object p1
.end method
