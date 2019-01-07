.class Landroid/support/v7/app/AppCompatDelegateImplV9$2;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Lgk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9;->createSubDecor()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/app/AppCompatDelegateImplV9;

    .prologue
    .line 437
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$2;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Lgv;)Lgv;
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Lgv;

    .prologue
    .line 441
    invoke-virtual {p2}, Lgv;->b()I

    move-result v1

    .line 442
    .local v1, "top":I
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$2;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v2, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->updateStatusGuard(I)I

    move-result v0

    .line 444
    .local v0, "newTop":I
    if-eq v1, v0, :cond_0

    .line 446
    invoke-virtual {p2}, Lgv;->a()I

    move-result v2

    .line 448
    invoke-virtual {p2}, Lgv;->c()I

    move-result v3

    .line 449
    invoke-virtual {p2}, Lgv;->d()I

    move-result v4

    .line 445
    invoke-virtual {p2, v2, v0, v3, v4}, Lgv;->a(IIII)Lgv;

    move-result-object p2

    .line 453
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Lgv;)Lgv;

    move-result-object v2

    return-object v2
.end method
