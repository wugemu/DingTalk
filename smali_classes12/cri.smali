.class public Lcri;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
.source "UpSlideDismissPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcri$a;
    }
.end annotation


# instance fields
.field public b:Z

.field private final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;-><init>()V

    .line 17
    const/16 v0, 0xf

    iput v0, p0, Lcri;->c:I

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcri;->b:Z

    .line 82
    return-void
.end method

.method static synthetic a(Lcri;)Lcri$a;
    .locals 1
    .param p0, "x0"    # Lcri;

    .prologue
    .line 15
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->a()V

    .line 34
    sget v0, Lcig$k;->ddPopWindow:I

    invoke-virtual {p0, v0}, Lcri;->setAnimationStyle(I)V

    .line 35
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 40
    invoke-virtual {p0, v2}, Lcri;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 41
    invoke-virtual {p0}, Lcri;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcri;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 44
    :cond_0
    iget-boolean v0, p0, Lcri;->b:Z

    if-eqz v0, :cond_1

    .line 45
    new-instance v0, Lcri$1;

    invoke-direct {v0, p0}, Lcri$1;-><init>(Lcri;)V

    invoke-virtual {p0, v0}, Lcri;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p0, v2}, Lcri;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method
