.class final Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler$2;
.super Ljava/lang/Object;
.source "H5PerformanceScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler;->scheduleH5PerfLog(Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$log:Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler$2;->val$log:Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler$2;->val$log:Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;->run()V

    .line 100
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler;->access$102(Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;)Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;

    .line 101
    return-void
.end method
