.class Landroid/support/design/widget/BaseTransientBottomBar$12;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 596
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$12;, "Landroid/support/design/widget/BaseTransientBottomBar$12;"
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$12;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    iput p2, p0, Landroid/support/design/widget/BaseTransientBottomBar$12;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 599
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$12;, "Landroid/support/design/widget/BaseTransientBottomBar$12;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$12;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    iget v1, p0, Landroid/support/design/widget/BaseTransientBottomBar$12;->val$event:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BaseTransientBottomBar;->onViewHidden(I)V

    .line 600
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 606
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$12;, "Landroid/support/design/widget/BaseTransientBottomBar$12;"
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 603
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$12;, "Landroid/support/design/widget/BaseTransientBottomBar$12;"
    return-void
.end method
