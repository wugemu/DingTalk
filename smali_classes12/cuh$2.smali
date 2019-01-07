.class final Lcuh$2;
.super Ljava/lang/Object;
.source "CombinedPraiseViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcuh;->a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

.field final synthetic b:Lcuh;


# direct methods
.method constructor <init>(Lcuh;Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;)V
    .locals 0
    .param p1, "this$0"    # Lcuh;

    .prologue
    .line 102
    iput-object p1, p0, Lcuh$2;->b:Lcuh;

    iput-object p2, p0, Lcuh$2;->a:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    iget-object v0, p0, Lcuh$2;->b:Lcuh;

    invoke-static {v0}, Lcuh;->a(Lcuh;)Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcuh$2;->a:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    sget-object v1, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;->FOLD:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->b:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    .line 107
    iget-object v0, p0, Lcuh$2;->b:Lcuh;

    invoke-static {v0}, Lcuh;->a(Lcuh;)Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    move-result-object v0

    .line 1142
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->d:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->b:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    sget-object v2, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;->EXPAND:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    if-ne v1, v2, :cond_0

    .line 1143
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;

    .line 1268
    iget v1, v1, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->d:I

    .line 1143
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->d:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->b:I

    .line 1144
    iget v1, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->b:I

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->d:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->b:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->removeViews(II)V

    .line 1145
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->d:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    sget-object v1, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;->FOLD:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->b:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    .line 108
    :cond_0
    iget-object v0, p0, Lcuh$2;->b:Lcuh;

    invoke-static {v0}, Lcuh;->b(Lcuh;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_view_all:I

    invoke-static {v1}, Lcuh;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :goto_0
    iget-object v0, p0, Lcuh$2;->b:Lcuh;

    invoke-static {v0}, Lcuh;->c(Lcuh;)V

    .line 115
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcuh$2;->a:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    sget-object v1, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;->EXPAND:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->b:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    .line 111
    iget-object v0, p0, Lcuh$2;->b:Lcuh;

    invoke-static {v0}, Lcuh;->a(Lcuh;)Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    move-result-object v0

    .line 2127
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->d:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->b:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    sget-object v2, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;->FOLD:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    if-ne v1, v2, :cond_3

    .line 2129
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->d:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 2131
    iget v2, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->b:I

    .line 2132
    if-le v1, v2, :cond_2

    .line 2133
    iput v1, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->b:I

    .line 2134
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->d:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    iget v3, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->b:I

    sub-int/2addr v3, v2

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->a(Ljava/util/List;IIZ)V

    .line 2136
    :cond_2
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->d:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    sget-object v1, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;->EXPAND:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->b:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    .line 112
    :cond_3
    iget-object v0, p0, Lcuh$2;->b:Lcuh;

    invoke-static {v0}, Lcuh;->b(Lcuh;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_click_to_close:I

    invoke-static {v1}, Lcuh;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
