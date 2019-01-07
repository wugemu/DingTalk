.class final Lbzd$1;
.super Ljava/lang/Object;
.source "PermissionCallbackAdapter.java"

# interfaces
.implements Lbyx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbzd;->showRation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbzd;


# direct methods
.method constructor <init>(Lbzd;)V
    .locals 0
    .param p1, "this$0"    # Lbzd;

    .prologue
    .line 41
    iput-object p1, p0, Lbzd$1;->a:Lbzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 44
    iget-object v0, p0, Lbzd$1;->a:Lbzd;

    iget-object v0, v0, Lbzd;->mFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lbzd$1;->a:Lbzd;

    iget-object v0, v0, Lbzd;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lbzd$1;->a:Lbzd;

    iget v1, v1, Lbzd;->mRequestCode:I

    iget-object v2, p0, Lbzd$1;->a:Lbzd;

    iget-object v2, v2, Lbzd;->mPermissions:[Ljava/lang/String;

    iget-object v3, p0, Lbzd$1;->a:Lbzd;

    invoke-static {v0, v1, v2, v3}, Lbzb;->a(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;Lbzc;)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lbzd$1;->a:Lbzd;

    iget-object v0, v0, Lbzd;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lbzd$1;->a:Lbzd;

    iget v1, v1, Lbzd;->mRequestCode:I

    iget-object v2, p0, Lbzd$1;->a:Lbzd;

    iget-object v2, v2, Lbzd;->mPermissions:[Ljava/lang/String;

    iget-object v3, p0, Lbzd$1;->a:Lbzd;

    invoke-static {v0, v1, v2, v3}, Lbzb;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lbzd$1;->a:Lbzd;

    invoke-virtual {v0}, Lbzd;->onDenied()V

    .line 54
    return-void
.end method
