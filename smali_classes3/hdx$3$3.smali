.class final Lhdx$3$3;
.super Ljava/lang/Object;
.source "DrawerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdx$3;->open()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhdx$3;


# direct methods
.method constructor <init>(Lhdx$3;)V
    .locals 0
    .param p1, "this$1"    # Lhdx$3;

    .prologue
    .line 356
    iput-object p1, p0, Lhdx$3$3;->a:Lhdx$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 359
    iget-object v0, p0, Lhdx$3$3;->a:Lhdx$3;

    iget-object v0, v0, Lhdx$3;->a:Lhdx;

    .line 1034
    iget-object v0, v0, Lhdx;->c:Landroid/support/v4/widget/DrawerLayout;

    .line 359
    iget-object v1, p0, Lhdx$3$3;->a:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    iget-object v1, v1, Lhdx;->j:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget v1, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->from:I

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->c(I)V

    .line 360
    return-void
.end method
