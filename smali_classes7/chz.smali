.class final Lchz;
.super Ljava/lang/Object;
.source "BaseSelectModeHolder.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Lcia;

.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/ImageView;

.field g:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcia;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseSelectModeListAdapter"    # Lcia;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lchz;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lchz;->b:Lcia;

    .line 30
    return-void
.end method
