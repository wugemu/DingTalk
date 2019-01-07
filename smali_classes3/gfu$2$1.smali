.class final Lgfu$2$1;
.super Ljava/lang/Object;
.source "FilePreviewWebViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfu$2;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lgfu$2;


# direct methods
.method constructor <init>(Lgfu$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lgfu$2;

    .prologue
    .line 175
    iput-object p1, p0, Lgfu$2$1;->b:Lgfu$2;

    iput-object p2, p0, Lgfu$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 178
    iget-object v0, p0, Lgfu$2$1;->b:Lgfu$2;

    iget-object v0, v0, Lgfu$2;->a:Landroid/app/Activity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgfu$2$1;->b:Lgfu$2;

    iget-object v0, v0, Lgfu$2;->d:Lgfu;

    .line 1044
    iget-boolean v0, v0, Lgfu;->n:Z

    .line 178
    if-eqz v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "FilePreviewWebViewWrapper"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "hide loading view by postDelayed: "

    aput-object v3, v2, v4

    iget-object v3, p0, Lgfu$2$1;->a:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lgfu$2$1;->b:Lgfu$2;

    iget-object v0, v0, Lgfu$2;->d:Lgfu;

    .line 2044
    iput-boolean v5, v0, Lgfu;->n:Z

    .line 185
    iget-object v0, p0, Lgfu$2$1;->b:Lgfu$2;

    iget-object v0, v0, Lgfu$2;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 186
    iget-object v0, p0, Lgfu$2$1;->b:Lgfu$2;

    iget-object v0, v0, Lgfu$2;->d:Lgfu;

    iget-object v0, v0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-static {v0, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 188
    iget-object v0, p0, Lgfu$2$1;->b:Lgfu$2;

    iget-object v0, v0, Lgfu$2;->d:Lgfu;

    invoke-virtual {v0}, Lgfu;->b()V

    goto :goto_0
.end method
