.class public final Lfub;
.super Ljava/lang/Object;
.source "GuideViewHelper.java"


# instance fields
.field public a:Landroid/view/ViewGroup;

.field public b:Lcom/alibaba/android/user/namecard/guide/GuideView;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfuc;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfud;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/alibaba/android/user/namecard/guide/LightType;

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/alibaba/android/user/namecard/guide/LightType;->Rectangle:Lcom/alibaba/android/user/namecard/guide/LightType;

    iput-object v0, p0, Lfub;->f:Lcom/alibaba/android/user/namecard/guide/LightType;

    .line 34
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lfub;->a:Landroid/view/ViewGroup;

    .line 35
    new-instance v0, Lcom/alibaba/android/user/namecard/guide/GuideView;

    invoke-direct {v0, p1}, Lcom/alibaba/android/user/namecard/guide/GuideView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfub;->b:Lcom/alibaba/android/user/namecard/guide/GuideView;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfub;->c:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfub;->d:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfub;->e:Ljava/util/List;

    .line 39
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 124
    iget-object v0, p0, Lfub;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lfub$1;

    invoke-direct {v1, p0}, Lfub$1;-><init>(Lfub;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 135
    return-void
.end method
