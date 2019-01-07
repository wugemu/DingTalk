.class final Lbmh$1$1;
.super Ljava/lang/Object;
.source "DeviceNpcWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmh$1;->getCorpIds()Lbml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmh$1;


# direct methods
.method constructor <init>(Lbmh$1;)V
    .locals 0
    .param p1, "this$1"    # Lbmh$1;

    .prologue
    .line 84
    iput-object p1, p0, Lbmh$1$1;->a:Lbmh$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lbmh$1$1;->a:Lbmh$1;

    iget-object v0, v0, Lbmh$1;->a:Lbmh;

    invoke-static {v0}, Lbmh;->b(Lbmh;)V

    .line 88
    iget-object v0, p0, Lbmh$1$1;->a:Lbmh$1;

    iget-object v0, v0, Lbmh$1;->a:Lbmh;

    .line 1033
    iget-object v0, v0, Lbmh;->b:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;

    .line 88
    invoke-interface {v0}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbmh$1$1;->a:Lbmh$1;

    iget-object v0, v0, Lbmh$1;->a:Lbmh;

    .line 2033
    iget-object v0, v0, Lbmh;->c:Lblr;

    .line 88
    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lbmh$1$1;->a:Lbmh$1;

    iget-object v0, v0, Lbmh$1;->a:Lbmh;

    invoke-static {v0}, Lbmh;->c(Lbmh;)V

    .line 91
    :cond_0
    return-void
.end method
