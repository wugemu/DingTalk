.class final Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$6;
.super Lbzd;
.source "NavbarView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    .prologue
    .line 693
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$6;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    invoke-direct {p0}, Lbzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final grant()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 696
    const-string/jumbo v0, "NavbarView2"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "miniMizeApp"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "miniMizeApp permission grant"

    aput-object v3, v1, v2

    .line 1082
    const-string/jumbo v2, "mini_task"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$6;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->h(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V

    .line 698
    return-void
.end method

.method public final onDenied()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 702
    invoke-super {p0}, Lbzd;->onDenied()V

    .line 703
    const-string/jumbo v0, "NavbarView2"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "miniMizeApp"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "miniMizeApp permission onDenied"

    aput-object v3, v1, v2

    .line 2082
    const-string/jumbo v2, "mini_task"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 704
    return-void
.end method
