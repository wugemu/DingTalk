.class public Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog$RuntimeLifeCycle;
.super Ljava/lang/Object;
.source "RuntimeLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RuntimeLifeCycle"
.end annotation


# static fields
.field public static final ACTIVITY_ONBACKPRESS:Ljava/lang/String; = "activity_obBackPress"

.field public static final ACTIVITY_ONCREATE:Ljava/lang/String; = "activity_onCreate"

.field public static final ACTIVITY_ONDESTROY:Ljava/lang/String; = "activity_onDestroy"

.field public static final ACTIVITY_ONKEYDOWN:Ljava/lang/String; = "activity_onKeyDown"

.field public static final ACTIVITY_ONPAUSE:Ljava/lang/String; = "activity_onPause"

.field public static final ACTIVITY_ONRESUME:Ljava/lang/String; = "activity_onResume"

.field public static final ACTIVITY_ONSTOP:Ljava/lang/String; = "activity_onStop"

.field public static final WEBVIEW_INIT:Ljava/lang/String; = "webview_init"

.field public static final WEBVIEW_LOADURL:Ljava/lang/String; = "webview_loadUrl"

.field public static final WEBVIEW_ONDESTROY:Ljava/lang/String; = "webview_onDestroy"

.field public static final WEBVIEW_ONPAUSE:Ljava/lang/String; = "webview_onPause"

.field public static final WEBVIEW_ONRESUME:Ljava/lang/String; = "webview_onResume"

.field public static final WEBVIEW_OVERRIDE:Ljava/lang/String; = "webview_override"

.field public static final WEBVIEW_PAGEFINISH:Ljava/lang/String; = "webview_pageFinish"

.field public static final WEBVIEW_PAGESTART:Ljava/lang/String; = "webview_pageStart"


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog$RuntimeLifeCycle;->this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
