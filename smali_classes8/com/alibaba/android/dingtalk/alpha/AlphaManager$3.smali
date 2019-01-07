.class final Lcom/alibaba/android/dingtalk/alpha/AlphaManager$3;
.super Ljava/lang/Object;
.source "AlphaManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/lifecycle/APPStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/alpha/AlphaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$3;->a:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnterBackground()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 183
    const-string/jumbo v0, "AlphaManager"

    const-string/jumbo v1, "onEnterBackground"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$3;->a:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->a(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;Z)Z

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$3;->a:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->b(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$3;->a:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->reset()V

    .line 188
    :cond_0
    invoke-static {}, Lbma;->a()Lbma;

    move-result-object v0

    invoke-virtual {v0}, Lbma;->c()V

    .line 189
    return-void
.end method

.method public final onEnterForeground()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 193
    const-string/jumbo v0, "AlphaManager"

    const-string/jumbo v1, "onEnterForeground"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$3;->a:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->a(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;Z)Z

    .line 195
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$3$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$3$1;-><init>(Lcom/alibaba/android/dingtalk/alpha/AlphaManager$3;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 209
    return-void
.end method
