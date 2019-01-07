.class final Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$1;
.super Ljava/lang/Object;
.source "UniformGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 198
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$a;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 199
    const/4 v1, -0x1

    .line 200
    .local v1, "resultX":I
    const/4 v2, -0x1

    .line 201
    .local v2, "resultY":I
    const/4 v0, 0x0

    .local v0, "h":I
    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;)I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 202
    const/4 v3, 0x0

    .local v3, "w":I
    :goto_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;)I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 203
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;)[Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;)I

    move-result v5

    mul-int/2addr v5, v0

    add-int/2addr v5, v3

    aget-object v4, v4, v5

    if-ne v4, p1, :cond_0

    .line 204
    move v1, v3

    .line 205
    move v2, v0

    .line 202
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 201
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    .end local v3    # "w":I
    :cond_2
    if-ltz v1, :cond_3

    if-ltz v2, :cond_3

    .line 210
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$a;

    move-result-object v4

    invoke-interface {v4, v1, v2, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$a;->a(IILandroid/view/View;)V

    .line 213
    .end local v0    # "h":I
    .end local v1    # "resultX":I
    .end local v2    # "resultY":I
    :cond_3
    return-void
.end method
