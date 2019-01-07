.class final Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10$2;
.super Ljava/lang/Object;
.source "RuntimeWebViewLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;->setColors([I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;IIII)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10$2;->e:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;

    iput p2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10$2;->a:I

    iput p3, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10$2;->b:I

    iput p4, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10$2;->c:I

    iput p5, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10$2;->d:I

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
    .line 1108
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10$2;->e:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10$2;->a:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10$2;->b:I

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10$2;->c:I

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10$2;->d:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->setColorSchemeColors([I)V

    .line 1109
    return-void
.end method
