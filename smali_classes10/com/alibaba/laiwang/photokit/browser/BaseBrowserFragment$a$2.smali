.class final Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a$2;
.super Ljava/lang/Object;
.source "BaseBrowserFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    .prologue
    .line 606
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a$2;->a:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

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
    .line 609
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a$2;->a:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 610
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a$2;->a:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a$2;->a:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 1259
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 611
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a$2;->a:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Ljava/lang/String;I)V

    .line 613
    :cond_0
    return-void
.end method
