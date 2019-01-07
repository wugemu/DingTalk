.class public final Lcuu;
.super Lcqr;
.source "EmotionDetailItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcuu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcqr",
        "<",
        "Ldrd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ldrd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ldrd;>;"
    invoke-direct {p0, p1, p2}, Lcqr;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 24
    check-cast p1, Ldrd;

    .line 3032
    iget-wide v0, p1, Ldrd;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 24
    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    if-nez p2, :cond_2

    .line 39
    new-instance v9, Lcuu$a;

    invoke-direct {v9, p0}, Lcuu$a;-><init>(Lcuu;)V

    .line 40
    .local v9, "viewHolder":Lcuu$a;
    iget-object v0, p0, Lcuu;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->emotion_detail_grid_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 41
    sget v0, Lctk$f;->img_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v9, Lcuu$a;->a:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {p2, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 47
    :goto_0
    iget-object v0, p0, Lcuu;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldrd;

    .line 48
    .local v7, "emotionObject":Ldrd;
    if-eqz v7, :cond_1

    .line 49
    iget-object v0, p0, Lcuu;->b:Landroid/app/Activity;

    move-object/from16 v5, p3

    check-cast v5, Landroid/widget/AbsListView;

    iget-object v1, v9, Lcuu$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v7}, Ldrd;->a()Ljava/lang/String;

    move-result-object v3

    .line 1052
    const-string/jumbo v2, "IMAGE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1053
    if-eqz v4, :cond_0

    .line 1056
    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    :cond_0
    :goto_1
    const-string/jumbo v0, "CUSTOM_EMOTION"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 51
    .local v8, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, v9, Lcuu$a;->a:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ldrd;->a(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v8, v2, v3}, Lcrq;->a(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnClickListener;)V

    .line 54
    .end local v8    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-object p2

    .line 44
    .end local v7    # "emotionObject":Ldrd;
    .end local v9    # "viewHolder":Lcuu$a;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcuu$a;

    .restart local v9    # "viewHolder":Lcuu$a;
    goto :goto_0

    .line 1078
    .restart local v7    # "emotionObject":Ldrd;
    :cond_3
    new-instance v6, Lhcg$a;

    invoke-direct {v6}, Lhcg$a;-><init>()V

    .line 1060
    const/4 v2, 0x1

    .line 1114
    iput v2, v6, Lhcg$a;->e:I

    .line 1061
    const/4 v2, 0x0

    .line 2109
    iput-boolean v2, v6, Lhcg$a;->c:Z

    .line 1062
    const/4 v2, 0x0

    .line 2119
    iput v2, v6, Lhcg$a;->f:I

    .line 1063
    const/4 v2, 0x0

    .line 2124
    iput-boolean v2, v6, Lhcg$a;->d:Z

    .line 1065
    const-string/jumbo v2, "CUSTOM_EMOTION"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1066
    invoke-static {v2, v10, v11, v12}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 1065
    invoke-static {v6, v2}, Ldkc;->a(Lhcg$a;Ljava/util/Map;)V

    .line 1067
    const-string/jumbo v2, ""

    invoke-static/range {v0 .. v6}, Lhcg;->a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/AbsListView;Lhcg$a;)V

    goto :goto_1
.end method
