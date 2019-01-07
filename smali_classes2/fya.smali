.class public abstract Lfya;
.super Ljava/lang/Object;
.source "AbsUserManagerViewHolder.java"


# instance fields
.field protected a:Landroid/app/Activity;

.field protected b:Lfxw;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "layoutId"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lfya;->a:Landroid/app/Activity;

    .line 38
    iput p2, p0, Lfya;->c:I

    .line 39
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 43
    iget-object v1, p0, Lfya;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lfya;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1057
    iget v2, p0, Lfya;->c:I

    .line 44
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lfya;->a(Landroid/view/View;)V

    .line 48
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-object v0
.end method

.method protected abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;)V
.end method

.method public final a(Lfxw;)V
    .locals 0
    .param p1, "userManagerClickListener"    # Lfxw;

    .prologue
    .line 61
    iput-object p1, p0, Lfya;->b:Lfxw;

    .line 62
    return-void
.end method
