.class public final Lgay;
.super Lgaw;
.source "FavoriteCardViewHolder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lgaw;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lfzs$g;->fav_item_namecard:I

    return v0
.end method

.method protected final a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;ILandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "favViewModel"    # Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .param p3, "position"    # I
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 23
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lgay;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lfzs$h;->dt_accessibility_fav_type_name_card:I

    invoke-static {v2}, Lgay;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
