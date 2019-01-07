.class Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector$NetWorkStatus;
.super Ljava/lang/Object;
.source "PageAnomalyDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetWorkStatus"
.end annotation


# instance fields
.field public mDNSHijacked:Z

.field public mLwpOK:Z

.field public mMessageFalsifyed:Z

.field public mNetConnection:Z

.field public mNetType:Ljava/lang/String;

.field public mSpeed:J

.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector$NetWorkStatus;->this$0:Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
