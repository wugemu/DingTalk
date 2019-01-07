.class final Lgfu$2$3;
.super Ljava/lang/Object;
.source "FilePreviewWebViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfu$2;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgfu$2;


# direct methods
.method constructor <init>(Lgfu$2;)V
    .locals 0
    .param p1, "this$1"    # Lgfu$2;

    .prologue
    .line 230
    iput-object p1, p0, Lgfu$2$3;->a:Lgfu$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 233
    iget-object v0, p0, Lgfu$2$3;->a:Lgfu$2;

    iget-object v0, v0, Lgfu$2;->a:Landroid/app/Activity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lgfu$2$3;->a:Lgfu$2;

    iget-object v0, v0, Lgfu$2;->d:Lgfu;

    .line 1044
    const/4 v1, 0x1

    iput-boolean v1, v0, Lgfu;->n:Z

    .line 240
    iget-object v0, p0, Lgfu$2$3;->a:Lgfu$2;

    iget-object v0, v0, Lgfu$2;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 241
    iget-object v0, p0, Lgfu$2$3;->a:Lgfu$2;

    iget-object v0, v0, Lgfu$2;->d:Lgfu;

    iget-object v0, v0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 242
    iget-object v0, p0, Lgfu$2$3;->a:Lgfu$2;

    iget-object v0, v0, Lgfu$2;->b:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lgfu$2$3;->a:Lgfu$2;

    iget-object v0, v0, Lgfu$2;->b:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
