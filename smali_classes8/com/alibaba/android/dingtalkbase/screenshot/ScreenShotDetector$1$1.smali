.class final Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$1$1;
.super Ljava/lang/Object;
.source "ScreenShotDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$1;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$1;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$1$1;->b:Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$1;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$1$1;->b:Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$1;->a:Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;->c(Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;)Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$1$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$a;->a(Ljava/lang/String;)V

    .line 121
    return-void
.end method
