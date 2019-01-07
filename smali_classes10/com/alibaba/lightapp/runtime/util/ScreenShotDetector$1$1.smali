.class final Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$1$1;
.super Ljava/lang/Object;
.source "ScreenShotDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$1;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$1;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$1$1;->b:Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$1;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$1$1;->b:Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$1;->a:Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;->c(Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;)Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$1$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$a;->onDetected(Ljava/lang/String;)V

    .line 101
    return-void
.end method
