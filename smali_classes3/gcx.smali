.class public final Lgcx;
.super Ljava/lang/Object;
.source "CloseVoicePopView.java"


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/PopupWindow;

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v3, -0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lgcx;->c:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lgcx;->a:Landroid/view/View;

    .line 25
    const-string/jumbo v1, "layout_inflater"

    .line 26
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 27
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lfzs$g;->favorite_voice_popview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lgcx;->d:Landroid/widget/RelativeLayout;

    .line 28
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lgcx;->d:Landroid/widget/RelativeLayout;

    invoke-direct {v1, v2, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lgcx;->b:Landroid/widget/PopupWindow;

    .line 29
    return-void
.end method
