.class public Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;
.super Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;
.source "MarqueeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I
    .annotation build Landroid/support/annotation/AnimRes;
    .end annotation
.end field

.field private j:I
    .annotation build Landroid/support/annotation/AnimRes;
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView$a;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v4, 0x13

    const/4 v3, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->a:I

    .line 31
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->b:I

    .line 32
    const/16 v0, 0xe

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->c:I

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->d:I

    .line 34
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->e:Z

    .line 36
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->f:Z

    .line 38
    iput v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->g:I

    .line 44
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->h:I

    .line 50
    sget v0, Lcig$a;->bottom_in:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->i:I

    .line 52
    sget v0, Lcig$a;->top_out:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->j:I

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->k:Ljava/util/List;

    .line 181
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->m:Z

    .line 1072
    sget-object v0, Lcig$l;->MarqueeViewStyle:[I

    invoke-virtual {p1, p2, v0, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1074
    sget v1, Lcig$l;->MarqueeViewStyle_mvInterval:I

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->a:I

    .line 1075
    sget v1, Lcig$l;->MarqueeViewStyle_mvAnimDuration:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->f:Z

    .line 1076
    sget v1, Lcig$l;->MarqueeViewStyle_mvAnimDuration:I

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->b:I

    .line 1077
    sget v1, Lcig$l;->MarqueeViewStyle_mvSingleLine:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->e:Z

    .line 1078
    sget v1, Lcig$l;->MarqueeViewStyle_mvTextSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1079
    sget v1, Lcig$l;->MarqueeViewStyle_mvTextSize:I

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->c:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->c:I

    .line 1080
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->c:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Lcms;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->c:I

    .line 1082
    :cond_0
    sget v1, Lcig$l;->MarqueeViewStyle_mvTextColor:I

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->d:I

    .line 1084
    sget v1, Lcig$l;->MarqueeViewStyle_mvGravity:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 1085
    packed-switch v1, :pswitch_data_0

    .line 1097
    :goto_0
    sget v1, Lcig$l;->MarqueeViewStyle_mvDirection:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    .line 1098
    sget v2, Lcig$l;->MarqueeViewStyle_mvDirection:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->h:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->h:I

    .line 1099
    if-eqz v1, :cond_1

    .line 1100
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->h:I

    packed-switch v1, :pswitch_data_1

    .line 1123
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1124
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->a:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->setFlipInterval(I)V

    .line 69
    return-void

    .line 1087
    :pswitch_0
    iput v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->g:I

    goto :goto_0

    .line 1090
    :pswitch_1
    const/16 v1, 0x11

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->g:I

    goto :goto_0

    .line 1093
    :pswitch_2
    const/16 v1, 0x15

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->g:I

    goto :goto_0

    .line 1102
    :pswitch_3
    sget v1, Lcig$a;->bottom_in:I

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->i:I

    .line 1103
    sget v1, Lcig$a;->top_out:I

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->j:I

    goto :goto_1

    .line 1106
    :pswitch_4
    sget v1, Lcig$a;->top_in:I

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->i:I

    .line 1107
    sget v1, Lcig$a;->bottom_out:I

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->j:I

    goto :goto_1

    .line 1110
    :pswitch_5
    sget v1, Lcig$a;->right_in:I

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->i:I

    .line 1111
    sget v1, Lcig$a;->left_out:I

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->j:I

    goto :goto_1

    .line 1114
    :pswitch_6
    sget v1, Lcig$a;->left_in:I

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->i:I

    .line 1115
    sget v1, Lcig$a;->right_out:I

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->j:I

    goto :goto_1

    .line 1119
    :cond_1
    sget v1, Lcig$a;->bottom_in:I

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->i:I

    .line 1120
    sget v1, Lcig$a;->top_out:I

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->j:I

    goto :goto_1

    .line 1085
    .line 1100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method protected getNextInterval()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->getPosition()I

    move-result v0

    .line 299
    .local v0, "now":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 300
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->a:I

    int-to-long v2, v1

    .line 303
    :goto_0
    return-wide v2

    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->a:I

    int-to-long v2, v1

    goto :goto_0
.end method

.method public getNotices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->k:Ljava/util/List;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setNotices(Ljava/util/List;)V
    .locals 0
    .param p1, "notices"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->k:Ljava/util/List;

    .line 269
    return-void
.end method

.method public setOnItemClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView$a;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView$a;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView$a;

    .line 273
    return-void
.end method
