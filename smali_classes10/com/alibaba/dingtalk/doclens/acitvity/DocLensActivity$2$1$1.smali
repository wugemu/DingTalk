.class final Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1$1;
.super Ljava/lang/Object;
.source "DocLensActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1$1;->b:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1;

    iput-object p2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1$1;->b:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;->b:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1$1;->b:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1;

    iget-object v1, v1, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;

    iget-object v1, v1, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;->b:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;Landroid/app/Activity;)V

    .line 204
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1$1;->b:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;->b:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;)Lgrl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1$1;->b:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;->b:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;)Lgrl;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1$1;->b:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1;

    iget-object v1, v1, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;

    iget-object v1, v1, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;->b:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;

    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1$1;->b:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1;

    iget-object v3, v3, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;

    iget-object v3, v3, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;->b:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->c(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;)Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lgrl;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;)V

    .line 207
    :cond_0
    return-void
.end method
