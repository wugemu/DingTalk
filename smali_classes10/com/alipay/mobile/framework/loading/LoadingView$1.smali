.class final Lcom/alipay/mobile/framework/loading/LoadingView$1;
.super Ljava/lang/Object;
.source "LoadingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/framework/loading/LoadingView;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/loading/LoadingView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/loading/LoadingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/framework/loading/LoadingView;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/framework/loading/LoadingView$1;->a:Lcom/alipay/mobile/framework/loading/LoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/loading/LoadingView$1;->a:Lcom/alipay/mobile/framework/loading/LoadingView;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/loading/LoadingView;->onStart()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
