.class final Lbmh$3;
.super Ljava/lang/Object;
.source "DeviceNpcWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmh;


# direct methods
.method constructor <init>(Lbmh;)V
    .locals 0
    .param p1, "this$0"    # Lbmh;

    .prologue
    .line 201
    iput-object p1, p0, Lbmh$3;->a:Lbmh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 204
    iget-object v0, p0, Lbmh$3;->a:Lbmh;

    .line 1033
    iget-object v0, v0, Lbmh;->b:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;

    .line 204
    if-nez v0, :cond_0

    .line 205
    const-string/jumbo v0, "DeviceNpcWrapper"

    const-string/jumbo v1, "AlphaInterface is null"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lbmh$3;->a:Lbmh;

    .line 2033
    iget-object v0, v0, Lbmh;->b:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;

    .line 208
    invoke-interface {v0}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;->isAlphaRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    const-string/jumbo v0, "DeviceNpcWrapper"

    const-string/jumbo v1, "alpha is stopped"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lbmh$3;->a:Lbmh;

    invoke-static {v0}, Lbmh;->c(Lbmh;)V

    .line 213
    iget-object v0, p0, Lbmh$3;->a:Lbmh;

    .line 3033
    iget-object v0, v0, Lbmh;->b:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;

    .line 213
    invoke-interface {v0}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;->startAloneTask()V

    goto :goto_0
.end method
