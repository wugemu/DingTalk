.class public final Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "EmotionPackageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;

.field private c:Landroid/app/Activity;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcuv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p3, "mode"    # Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;",
            ">;",
            "Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->c:Landroid/app/Activity;

    .line 26
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->a:Ljava/util/List;

    .line 27
    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->b:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->d:Ljava/util/HashMap;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 5
    .param p1, "packageId"    # J

    .prologue
    .line 94
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->d:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcuv;

    .line 95
    .local v1, "holder":Lcuv;
    if-nez v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 3070
    :cond_1
    iget-wide v2, v1, Lcuv;->f:J

    .line 98
    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 102
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ldpt;->b(J)Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    move-result-object v0

    .line 103
    .local v0, "emotionInstallPackageObject":Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;
    invoke-virtual {v1, v0}, Lcuv;->b(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V
    .locals 1
    .param p1, "emotionPackageObject"    # Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->notifyDataSetChanged()V

    .line 73
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 39
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 51
    if-nez p2, :cond_3

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lctk$g;->item_emotion_package:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 53
    new-instance v0, Lcuv;

    move-object v1, p3

    check-cast v1, Landroid/widget/AbsListView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->c:Landroid/app/Activity;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->b:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcuv;-><init>(Landroid/widget/AbsListView;Landroid/app/Activity;Landroid/view/View;Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;)V

    .line 54
    .local v0, "emotionPackageViewHolder":Lcuv;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    .line 1074
    iput-wide v2, v0, Lcuv;->f:J

    .line 59
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 60
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2067
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_4

    const/4 v1, 0x1

    move v2, v1

    .line 62
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    .line 2078
    if-eqz v1, :cond_2

    .line 2081
    invoke-virtual {v0, v1}, Lcuv;->a(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V

    .line 2195
    iget-object v3, v0, Lcuv;->c:Landroid/view/View;

    if-eqz v2, :cond_1

    const/16 v6, 0x8

    :cond_1
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2199
    iget-object v2, v0, Lcuv;->a:Landroid/widget/TextView;

    new-instance v3, Lcuv$1;

    invoke-direct {v3, v0, v1}, Lcuv$1;-><init>(Lcuv;Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2213
    iget-object v2, v0, Lcuv;->b:Landroid/widget/TextView;

    new-instance v3, Lcuv$2;

    invoke-direct {v3, v0, v1}, Lcuv$2;-><init>(Lcuv;Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_2
    return-object p2

    .line 56
    .end local v0    # "emotionPackageViewHolder":Lcuv;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcuv;

    .restart local v0    # "emotionPackageViewHolder":Lcuv;
    goto :goto_0

    :cond_4
    move v2, v6

    .line 2067
    goto :goto_1
.end method
