.class final Lbmc$8;
.super Ljava/lang/Object;
.source "QuickConnectWifiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmc;


# direct methods
.method constructor <init>(Lbmc;)V
    .locals 0
    .param p1, "this$0"    # Lbmc;

    .prologue
    .line 394
    iput-object p1, p0, Lbmc$8;->a:Lbmc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 397
    iget-object v1, p0, Lbmc$8;->a:Lbmc;

    invoke-static {v1}, Lbmc;->b(Lbmc;)Lbni;

    move-result-object v1

    if-nez v1, :cond_0

    .line 405
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->g()V

    .line 402
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    iget-object v2, p0, Lbmc$8;->a:Lbmc;

    invoke-static {v2}, Lbmc;->i(Lbmc;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 403
    iget-object v1, p0, Lbmc$8;->a:Lbmc;

    invoke-static {v1}, Lbmc;->b(Lbmc;)Lbni;

    move-result-object v1

    iget v1, v1, Lbni;->e:I

    if-gtz v1, :cond_1

    const/16 v0, 0x1388

    .line 404
    .local v0, "scanTimeout":I
    :goto_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    iget-object v2, p0, Lbmc$8;->a:Lbmc;

    invoke-static {v2}, Lbmc;->j(Lbmc;)Ljava/lang/Runnable;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 403
    .end local v0    # "scanTimeout":I
    :cond_1
    iget-object v1, p0, Lbmc$8;->a:Lbmc;

    invoke-static {v1}, Lbmc;->b(Lbmc;)Lbni;

    move-result-object v1

    iget v0, v1, Lbni;->e:I

    goto :goto_1
.end method
