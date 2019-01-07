.class final Ldle$1;
.super Ljava/lang/Object;
.source "FastSendEmotionManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldle;


# direct methods
.method constructor <init>(Ldle;)V
    .locals 0
    .param p1, "this$0"    # Ldle;

    .prologue
    .line 84
    iput-object p1, p0, Ldle$1;->a:Ldle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Ldle$1;->a:Ldle;

    .line 1035
    iget-object v1, v1, Ldle;->i:Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;

    .line 87
    invoke-virtual {v1, p3}, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;->a(I)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    move-result-object v0

    .line 88
    .local v0, "item":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Ldle$1;->a:Ldle;

    .line 2035
    iget-object v1, v1, Ldle;->d:Ldiz;

    .line 89
    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Ldle$1;->a:Ldle;

    .line 3035
    iget-object v2, v1, Ldle;->d:Ldiz;

    .line 90
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    invoke-virtual {v2, v1}, Ldiz;->a(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)Z

    .line 91
    iget-object v1, p0, Ldle$1;->a:Ldle;

    .line 4035
    iget-object v1, v1, Ldle;->c:Ldle$a;

    .line 91
    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Ldle$1;->a:Ldle;

    .line 5035
    iget-object v1, v1, Ldle;->c:Ldle$a;

    .line 92
    invoke-interface {v1}, Ldle$a;->a()V

    .line 96
    :cond_0
    iget-object v1, p0, Ldle$1;->a:Ldle;

    invoke-virtual {v1}, Ldle;->b()V

    .line 97
    return-void
.end method
