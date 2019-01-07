.class Landroid/support/design/widget/CollapsingToolbarLayout$1;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Lgk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/design/widget/CollapsingToolbarLayout;

    .prologue
    .line 224
    iput-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$1;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Lgv;)Lgv;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Lgv;

    .prologue
    .line 228
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$1;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->onWindowInsetChanged(Lgv;)Lgv;

    move-result-object v0

    return-object v0
.end method
