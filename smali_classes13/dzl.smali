.class public abstract Ldzl;
.super Ljava/lang/Object;
.source "AbsHeaderHolder.java"


# instance fields
.field public a:Landroid/view/View;

.field b:Landroid/view/View;

.field c:Landroid/app/Activity;

.field public d:Ljava/lang/Object;

.field e:Ldze;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lctk$g;->layout_session_header:I

    return v0
.end method

.method public final a(Landroid/app/Activity;Landroid/view/ViewGroup;Ldze;)Landroid/view/View;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "manager"    # Ldze;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 26
    iput-object p1, p0, Ldzl;->c:Landroid/app/Activity;

    .line 27
    iput-object p3, p0, Ldzl;->e:Ldze;

    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Ldzl;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldzl;->a:Landroid/view/View;

    .line 30
    iget-object v0, p0, Ldzl;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Ldzl;->a:Landroid/view/View;

    sget v1, Lctk$f;->view_bottom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldzl;->b:Landroid/view/View;

    .line 33
    invoke-virtual {p0}, Ldzl;->b()V

    .line 34
    iget-object v0, p0, Ldzl;->a:Landroid/view/View;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Ldzl;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    iput-object p1, p0, Ldzl;->d:Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Ldzl;->c()V

    goto :goto_0
.end method

.method abstract b()V
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public abstract c()V
.end method

.method public abstract d()Lcom/alibaba/android/dingtalkim/session/header/Header;
.end method
