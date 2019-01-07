.class final Lcom/alipay/mobile/framework/loading/LoadingView$3;
.super Ljava/lang/Object;
.source "LoadingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/framework/loading/LoadingView;->sendMessage(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/alipay/mobile/framework/loading/LoadingView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/loading/LoadingView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/framework/loading/LoadingView;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alipay/mobile/framework/loading/LoadingView$3;->c:Lcom/alipay/mobile/framework/loading/LoadingView;

    iput-object p2, p0, Lcom/alipay/mobile/framework/loading/LoadingView$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/framework/loading/LoadingView$3;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/loading/LoadingView$3;->c:Lcom/alipay/mobile/framework/loading/LoadingView;

    iget-object v1, p0, Lcom/alipay/mobile/framework/loading/LoadingView$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/framework/loading/LoadingView$3;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/loading/LoadingView;->onHandleMessage(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
