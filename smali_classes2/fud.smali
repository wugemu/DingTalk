.class public abstract Lfud;
.super Ljava/lang/Object;
.source "BaseLayoutStyle.java"


# instance fields
.field protected a:I

.field protected b:Landroid/view/View;

.field protected c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0
    .param p1, "decoView"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p2, p0, Lfud;->a:I

    .line 27
    iput-object p1, p0, Lfud;->b:Landroid/view/View;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "decoView"    # Landroid/view/View;
    .param p2, "topView"    # Landroid/view/View;
    .param p3, "offset"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p3, p0, Lfud;->a:I

    .line 32
    iput-object p1, p0, Lfud;->b:Landroid/view/View;

    .line 33
    iput-object p2, p0, Lfud;->c:Landroid/view/View;

    .line 34
    return-void
.end method


# virtual methods
.method public abstract a(Lfuc;Landroid/view/ViewGroup;)V
.end method
