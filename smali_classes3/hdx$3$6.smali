.class final Lhdx$3$6;
.super Ljava/lang/Object;
.source "DrawerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdx$3;->disable()V
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
    .line 394
    iput-object p1, p0, Lhdx$3$6;->a:Lhdx$3;

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
    .line 397
    iget-object v0, p0, Lhdx$3$6;->a:Lhdx$3;

    iget-object v0, v0, Lhdx$3;->a:Lhdx;

    .line 1034
    iget-object v0, v0, Lhdx;->c:Landroid/support/v4/widget/DrawerLayout;

    .line 397
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 398
    return-void
.end method
