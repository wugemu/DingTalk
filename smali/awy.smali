.class public abstract Lawy;
.super Ljava/lang/Object;
.source "AbsEventHolder.java"


# instance fields
.field public a:Landroid/view/View;

.field b:Landroid/app/Activity;

.field public c:I

.field public d:Lawv;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public final a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 24
    iput-object p1, p0, Lawy;->b:Landroid/app/Activity;

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lawy;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lawy;->a:Landroid/view/View;

    .line 27
    invoke-virtual {p0}, Lawy;->b()V

    .line 28
    return-void
.end method

.method public abstract a(Z)V
.end method

.method abstract b()V
.end method

.method public abstract b(Z)V
.end method

.method public abstract c()V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    return-void
.end method
