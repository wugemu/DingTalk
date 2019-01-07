.class public abstract Lauu;
.super Ljava/lang/Object;
.source "AbsSettingHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Landroid/view/View;

.field b:Landroid/app/Activity;

.field public c:Laus;

.field public d:Laur;

.field public e:Lauq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
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
    .line 26
    iput-object p1, p0, Lauu;->b:Landroid/app/Activity;

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lauu;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lauu;->a:Landroid/view/View;

    .line 29
    iget-object v0, p0, Lauu;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-virtual {p0}, Lauu;->b()V

    .line 31
    return-void
.end method

.method public abstract a(Lauz;)V
.end method

.method protected abstract b()V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 45
    return-void
.end method
