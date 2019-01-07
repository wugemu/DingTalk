.class final Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$1;
.super Ljava/lang/Object;
.source "TopicEmotionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$1;->b:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$1;->a:Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;

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
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$1;->b:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->a(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;)Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$1;->b:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->a(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;)Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$1;->a:Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$a;->a(Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;)V

    .line 136
    :cond_0
    return-void
.end method
