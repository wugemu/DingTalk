.class final Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;
.super Ljava/lang/Object;
.source "FCRemindManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 155
    new-instance v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1$1;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;)V

    .line 182
    .local v0, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lhqr;->a()Lhqr;

    move-result-object v2

    const-class v3, Lcma;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v0, v3, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-virtual {v2, v1}, Lhqr;->a(Lcma;)V

    .line 183
    return-void
.end method
