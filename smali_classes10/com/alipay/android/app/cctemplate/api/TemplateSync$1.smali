.class Lcom/alipay/android/app/cctemplate/api/TemplateSync$1;
.super Ljava/lang/Object;
.source "TemplateSync.java"

# interfaces
.implements Lcom/alipay/android/app/template/service/TemplateSyncEventHelper$TemplateSyncEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/cctemplate/api/TemplateSync;->registSyncMessageImpl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/cctemplate/api/TemplateSync;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/cctemplate/api/TemplateSync;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/cctemplate/api/TemplateSync;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/api/TemplateSync$1;->this$0:Lcom/alipay/android/app/cctemplate/api/TemplateSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSyncEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "TemplateSync::registSyncMessageImpl"

    const-string/jumbo v2, "received sync event from birdnest: onSyncEvent"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/api/TemplateSync$1;->this$0:Lcom/alipay/android/app/cctemplate/api/TemplateSync;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/cctemplate/api/TemplateSync;->onSyncReceived(Ljava/lang/String;)V

    .line 65
    return-void
.end method
