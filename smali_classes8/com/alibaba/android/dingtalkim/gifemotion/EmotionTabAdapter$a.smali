.class public final Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "EmotionTabAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Landroid/widget/TextView;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;

.field private d:Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;Landroid/view/View;Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "adapter"    # Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$a;->c:Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;

    .line 99
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 100
    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$a;->d:Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$a;->a:I

    .line 102
    sget v0, Lctk$f;->tv_content:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$a;->b:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$a;->d:Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$a;->d:Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;

    .line 1067
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->b:Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$b;

    .line 126
    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$a;->d:Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;

    .line 2067
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->b:Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$b;

    .line 127
    iget v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$a;->a:I

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$b;->a(I)V

    .line 129
    :cond_0
    return-void
.end method
