.class final Lcom/alibaba/dingtalk/share/share/SystemShareUnit$1$1;
.super Ljava/lang/Object;
.source "SystemShareUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/share/share/SystemShareUnit$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/share/share/SystemShareUnit$1;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/SystemShareUnit$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/share/share/SystemShareUnit$1;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/SystemShareUnit$1$1;->a:Lcom/alibaba/dingtalk/share/share/SystemShareUnit$1;

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
    .line 90
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/SystemShareUnit$1$1;->a:Lcom/alibaba/dingtalk/share/share/SystemShareUnit$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/share/share/SystemShareUnit$1;->c:Lcom/alibaba/dingtalk/share/share/SystemShareUnit;

    invoke-static {v0}, Lcom/alibaba/dingtalk/share/share/SystemShareUnit;->a(Lcom/alibaba/dingtalk/share/share/SystemShareUnit;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcms;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/SystemShareUnit$1$1;->a:Lcom/alibaba/dingtalk/share/share/SystemShareUnit$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/share/share/SystemShareUnit$1;->c:Lcom/alibaba/dingtalk/share/share/SystemShareUnit;

    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/SystemShareUnit$1$1;->a:Lcom/alibaba/dingtalk/share/share/SystemShareUnit$1;

    iget-object v1, v1, Lcom/alibaba/dingtalk/share/share/SystemShareUnit$1;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/SystemShareUnit$1$1;->a:Lcom/alibaba/dingtalk/share/share/SystemShareUnit$1;

    iget-object v2, v2, Lcom/alibaba/dingtalk/share/share/SystemShareUnit$1;->a:Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    invoke-static {v0, v1, v2}, Lcom/alibaba/dingtalk/share/share/SystemShareUnit;->a(Lcom/alibaba/dingtalk/share/share/SystemShareUnit;Landroid/app/Activity;Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;)V

    .line 93
    :cond_0
    return-void
.end method
