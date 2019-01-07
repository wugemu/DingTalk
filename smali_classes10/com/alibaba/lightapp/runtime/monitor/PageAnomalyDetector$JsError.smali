.class Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector$JsError;
.super Ljava/lang/Object;
.source "PageAnomalyDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JsError"
.end annotation


# instance fields
.field public mErrorMsg:Ljava/lang/String;

.field public mJsName:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector$JsError;->this$0:Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
