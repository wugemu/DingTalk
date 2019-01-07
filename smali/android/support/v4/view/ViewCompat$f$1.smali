.class final Landroid/support/v4/view/ViewCompat$f$1;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/ViewCompat$f;->a(Landroid/view/View;Lgk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgk;

.field final synthetic b:Landroid/support/v4/view/ViewCompat$f;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewCompat$f;Lgk;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/view/ViewCompat$f;

    .prologue
    .line 1252
    iput-object p1, p0, Landroid/support/v4/view/ViewCompat$f$1;->b:Landroid/support/v4/view/ViewCompat$f;

    iput-object p2, p0, Landroid/support/v4/view/ViewCompat$f$1;->a:Lgk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 1255
    invoke-static {p2}, Lgv;->a(Ljava/lang/Object;)Lgv;

    move-result-object v0

    .line 1256
    .local v0, "compatInsets":Lgv;
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$f$1;->a:Lgk;

    invoke-interface {v1, p1, v0}, Lgk;->onApplyWindowInsets(Landroid/view/View;Lgv;)Lgv;

    move-result-object v0

    .line 1257
    invoke-static {v0}, Lgv;->a(Lgv;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsets;

    return-object v1
.end method
