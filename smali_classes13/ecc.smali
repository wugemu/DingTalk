.class public abstract Lecc;
.super Lcqr;
.source "DingGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecc$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcqr",
        "<",
        "Ldqw;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcqr;-><init>(Landroid/app/Activity;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(ILecc$a;)V
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldqw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ldqw;>;"
    invoke-super {p0, p1}, Lcqr;->b(Ljava/util/List;)V

    .line 32
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ldqw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lecc;->a:Ljava/util/List;

    return-object v0
.end method

.method public final c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldqw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ldqw;>;"
    invoke-super {p0, p1}, Lcqr;->c(Ljava/util/List;)V

    .line 47
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    .line 53
    move-object v1, p2

    .local v1, "raw":Landroid/view/View;
    if-nez p2, :cond_0

    .line 54
    iget-object v2, p0, Lecc;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1072
    sget v3, Lctk$g;->im_layout_ding_grid_avatar:I

    .line 54
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 55
    new-instance v0, Lecc$a;

    invoke-direct {v0, p0}, Lecc$a;-><init>(Lecc;)V

    .line 56
    .local v0, "holder":Lecc$a;
    sget v2, Lctk$f;->avatar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v2, v0, Lecc$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 57
    sget v2, Lctk$f;->nickname:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lecc$a;->b:Landroid/widget/TextView;

    .line 58
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    :goto_0
    invoke-virtual {p0, p1, v0}, Lecc;->a(ILecc$a;)V

    .line 65
    return-object v1

    .line 60
    .end local v0    # "holder":Lecc$a;
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lecc$a;

    .restart local v0    # "holder":Lecc$a;
    goto :goto_0
.end method
