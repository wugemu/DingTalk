.class Landroid/support/design/widget/BaseTransientBottomBar$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BaseTransientBottomBar;->animateViewOut(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BaseTransientBottomBar;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/design/widget/BaseTransientBottomBar;

    .prologue
    .line 564
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$10;, "Landroid/support/design/widget/BaseTransientBottomBar$10;"
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$10;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    iput p2, p0, Landroid/support/design/widget/BaseTransientBottomBar$10;->val$event:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 572
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$10;, "Landroid/support/design/widget/BaseTransientBottomBar$10;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$10;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    iget v1, p0, Landroid/support/design/widget/BaseTransientBottomBar$10;->val$event:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BaseTransientBottomBar;->onViewHidden(I)V

    .line 573
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 567
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$10;, "Landroid/support/design/widget/BaseTransientBottomBar$10;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$10;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-static {v0}, Landroid/support/design/widget/BaseTransientBottomBar;->access$000(Landroid/support/design/widget/BaseTransientBottomBar;)Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb4

    invoke-interface {v0, v1, v2}, Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;->animateContentOut(II)V

    .line 568
    return-void
.end method
