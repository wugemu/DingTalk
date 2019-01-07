.class final Leab$a;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "PushTaskListHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Leab;

.field private b:I


# direct methods
.method public constructor <init>(Leab;I)V
    .locals 0
    .param p1, "this$0"    # Leab;
    .param p2, "space"    # I

    .prologue
    .line 431
    iput-object p1, p0, Leab$a;->a:Leab;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 432
    iput p2, p0, Leab$a;->b:I

    .line 433
    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 438
    iget v0, p0, Leab$a;->b:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 439
    return-void
.end method
