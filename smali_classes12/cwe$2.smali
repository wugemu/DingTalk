.class final Lcwe$2;
.super Ljava/lang/Object;
.source "MemberAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcwe;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldqw;

.field final synthetic b:Lcwe;


# direct methods
.method constructor <init>(Lcwe;Ldqw;)V
    .locals 0
    .param p1, "this$0"    # Lcwe;

    .prologue
    .line 496
    iput-object p1, p0, Lcwe$2;->b:Lcwe;

    iput-object p2, p0, Lcwe$2;->a:Ldqw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 499
    iget-object v0, p0, Lcwe$2;->b:Lcwe;

    iget-object v1, p0, Lcwe$2;->a:Ldqw;

    invoke-static {v0, v1}, Lcwe;->a(Lcwe;Ldqw;)V

    .line 500
    const/4 v0, 0x1

    return v0
.end method
