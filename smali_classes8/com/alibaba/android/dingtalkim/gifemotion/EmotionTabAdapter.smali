.class public Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "EmotionTabAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$a;,
        Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/TopicDataObject;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$b;

.field private c:Landroid/content/Context;

.field private d:Landroid/view/LayoutInflater;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->a:Ljava/util/List;

    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->c:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->d:Landroid/view/LayoutInflater;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->e:I

    .line 38
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 49
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    goto :goto_0
.end method

.method public final b(I)V
    .locals 1
    .param p1, "selection"    # I

    .prologue
    .line 56
    iget v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->e:I

    if-eq p1, v0, :cond_0

    .line 57
    iput p1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->e:I

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->notifyDataSetChanged()V

    .line 60
    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    check-cast p1, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$a;

    .line 1078
    if-eqz p1, :cond_0

    .line 1081
    invoke-virtual {p0, p2}, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->a(I)Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    move-result-object v3

    iget v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->e:I

    if-ne p2, v0, :cond_1

    move v0, v1

    .line 1107
    :goto_0
    iput p2, p1, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$a;->a:I

    .line 1108
    if-eqz v3, :cond_2

    .line 1109
    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$a;->b:Landroid/widget/TextView;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1113
    :goto_1
    if-eqz v0, :cond_3

    .line 1114
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1115
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 1081
    goto :goto_0

    .line 1111
    :cond_2
    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1117
    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1118
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_2
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 23
    .line 2072
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->d:Landroid/view/LayoutInflater;

    sget v1, Lctk$g;->topic_emotion_pagerstrip_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2073
    new-instance v1, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$a;

    invoke-direct {v1, p0, v0, p0}, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$a;-><init>(Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;Landroid/view/View;Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;)V

    .line 23
    return-object v1
.end method
