.class public final Leee;
.super Leea;
.source "RecyclerAdapterWithHeaderAndFooter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leea",
        "<",
        "Lefv;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Landroid/app/Activity;

.field private f:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

.field private g:I


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V
    .locals 2
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "fragment"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lefv;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/alibaba/android/oa/fragment/CommonOAFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lefv;>;"
    invoke-direct {p0}, Leea;-><init>()V

    .line 28
    sget v0, Ledz$f;->oa_gridview_middle_title:I

    iput v0, p0, Leee;->g:I

    .line 1128
    iput-object p1, p0, Leea;->a:Ljava/util/List;

    .line 32
    iput-object p2, p0, Leee;->e:Landroid/app/Activity;

    .line 33
    iput-object p3, p0, Leee;->f:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .line 1143
    iget-object v0, p0, Leea;->c:Ljava/util/Set;

    const/4 v1, -0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lefv;

    .line 3049
    if-eqz p1, :cond_0

    .line 3050
    iget v0, p1, Lefv;->a:I

    :goto_0
    return v0

    .line 3052
    :cond_0
    const/4 v0, -0x2

    .line 23
    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 39
    iget-object v0, p0, Leee;->e:Landroid/app/Activity;

    iget-object v1, p0, Leee;->f:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .line 2036
    packed-switch p2, :pswitch_data_0

    .line 2059
    :pswitch_0
    if-eqz v0, :cond_5

    :goto_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Leff;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2060
    new-instance v0, Leff;

    invoke-direct {v0, v1}, Leff;-><init>(Landroid/view/View;)V

    .line 39
    :goto_1
    return-object v0

    .line 2038
    :pswitch_1
    if-eqz v0, :cond_0

    :goto_2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lefb;->a()I

    move-result v2

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 2039
    new-instance v0, Lefb;

    invoke-direct {v0, v2, v1}, Lefb;-><init>(Landroid/view/View;Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V

    goto :goto_1

    .line 2038
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_2

    .line 2042
    :pswitch_2
    if-eqz v0, :cond_1

    :goto_3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lefd;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2043
    new-instance v0, Lefd;

    invoke-direct {v0, v1}, Lefd;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 2042
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_3

    .line 2046
    :pswitch_3
    if-eqz v0, :cond_2

    :goto_4
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lefe;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2047
    new-instance v0, Lefe;

    invoke-direct {v0, v1}, Lefe;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 2046
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_4

    .line 2050
    :pswitch_4
    if-eqz v0, :cond_3

    :goto_5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lefg;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2051
    new-instance v0, Lefg;

    invoke-direct {v0, v1}, Lefg;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 2050
    :cond_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_5

    .line 2054
    :pswitch_5
    if-eqz v0, :cond_4

    :goto_6
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lefh;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2055
    new-instance v0, Lefh;

    invoke-direct {v0, v1}, Lefh;-><init>(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2054
    :cond_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_6

    .line 2059
    :cond_5
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto/16 :goto_0

    .line 2036
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public final bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p3, Lefv;

    .line 4044
    check-cast p1, Lefc;

    invoke-virtual {p1, p3}, Lefc;->a(Lefv;)V

    .line 23
    return-void
.end method
