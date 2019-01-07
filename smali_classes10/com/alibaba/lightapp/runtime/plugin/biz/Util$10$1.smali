.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;

.field final synthetic val$selectedValues:[Z


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;[Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;

    .prologue
    .line 1734
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10$1;->val$selectedValues:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1737
    if-eqz p3, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10$1;->val$selectedValues:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 1742
    :goto_0
    return-void

    .line 1740
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10$1;->val$selectedValues:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p2

    goto :goto_0
.end method
