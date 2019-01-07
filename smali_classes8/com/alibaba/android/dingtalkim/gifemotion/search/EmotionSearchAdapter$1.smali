.class final Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$1;
.super Ljava/lang/Object;
.source "EmotionSearchAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$1;->b:Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$1;->a:Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$1;->b:Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->a(Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;)Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$1;->b:Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->a(Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;)Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$1;->a:Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$a;->a(Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;)V

    .line 135
    :cond_0
    return-void
.end method
