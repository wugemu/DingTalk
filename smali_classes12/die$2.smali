.class public final Ldie$2;
.super Ljava/lang/Object;
.source "TopicEmotionCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ldie;


# direct methods
.method public constructor <init>(Ldie;I)V
    .locals 0
    .param p1, "this$0"    # Ldie;

    .prologue
    .line 116
    iput-object p1, p0, Ldie$2;->b:Ldie;

    iput p2, p0, Ldie$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 119
    iget-object v0, p0, Ldie$2;->b:Ldie;

    .line 1043
    iget-object v0, v0, Ldie;->d:Landroid/support/v4/view/ViewPager;

    .line 119
    iget v1, p0, Ldie$2;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 120
    iget-object v0, p0, Ldie$2;->b:Ldie;

    .line 2043
    iget-object v0, v0, Ldie;->f:Landroid/support/v7/widget/RecyclerView;

    .line 120
    iget v1, p0, Ldie$2;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 121
    iget-object v0, p0, Ldie$2;->b:Ldie;

    .line 3043
    iget-object v0, v0, Ldie;->q:Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;

    .line 121
    iget v1, p0, Ldie$2;->a:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->b(I)V

    .line 122
    iget-object v0, p0, Ldie$2;->b:Ldie;

    .line 4043
    iget-object v0, v0, Ldie;->q:Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;

    .line 122
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->notifyDataSetChanged()V

    .line 123
    return-void
.end method
