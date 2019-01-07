.class public Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter;
.super Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;
.source "HotwordsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 28
    if-nez p2, :cond_0

    .line 29
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter;->d:Landroid/view/LayoutInflater;

    sget v3, Lctk$g;->topic_emotion_search_hotwords_item:I

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 30
    new-instance v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter$a;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter$a;-><init>()V

    .line 31
    .local v1, "viewHolder":Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter$a;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 32
    sget v2, Lctk$f;->tv_content:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter$a;->a:Landroid/widget/TextView;

    .line 36
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;

    .line 37
    .local v0, "item":Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 38
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter$a;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter$a;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :goto_1
    return-object p2

    .line 34
    .end local v0    # "item":Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;
    .end local v1    # "viewHolder":Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter$a;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter$a;

    .restart local v1    # "viewHolder":Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter$a;
    goto :goto_0

    .line 41
    .restart local v0    # "item":Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;
    :cond_1
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter$a;->a:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/HotwordsAdapter$a;->a:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
