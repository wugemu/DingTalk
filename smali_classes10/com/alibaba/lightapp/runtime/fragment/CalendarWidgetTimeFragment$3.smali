.class final Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;
.super Ljava/lang/Object;
.source "CalendarWidgetTimeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 135
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 136
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    new-instance v2, Lcth;

    invoke-direct {v2}, Lcth;-><init>()V

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;Lcth;)Lcth;

    .line 138
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcth;

    move-result-object v1

    .line 1071
    iput-boolean v4, v1, Lcth;->a:Z

    .line 139
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcth;

    move-result-object v1

    const/4 v2, 0x5

    .line 1079
    iput v2, v1, Lcth;->b:I

    .line 140
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcth;

    move-result-object v1

    .line 1175
    iput-boolean v4, v1, Lcth;->n:Z

    .line 141
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcth;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->b(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)I

    move-result v2

    .line 2087
    iput v2, v1, Lcth;->c:I

    .line 142
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcth;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lhdn$e;->calendar_widget_c2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 2103
    iput v2, v1, Lcth;->e:I

    .line 143
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcth;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->c(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)I

    move-result v2

    .line 2111
    iput v2, v1, Lcth;->f:I

    .line 144
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcth;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lhdn$e;->calendar_widget_c1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 2127
    iput v2, v1, Lcth;->h:I

    .line 145
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcth;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->d(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)I

    move-result v2

    .line 2135
    iput v2, v1, Lcth;->i:I

    .line 146
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcth;

    move-result-object v1

    sget v2, Lcjj;->v:I

    .line 2199
    iput v2, v1, Lcth;->q:I

    .line 147
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcth;

    move-result-object v1

    .line 2207
    iput v5, v1, Lcth;->r:I

    .line 148
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcth;

    move-result-object v1

    .line 2231
    iput-boolean v4, v1, Lcth;->u:Z

    .line 150
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->f(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->e(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setData(Ljava/util/List;)V

    .line 151
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->f(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcth;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setStyle(Lcth;)V

    .line 152
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    .line 153
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->f(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->g(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcth;

    move-result-object v2

    invoke-virtual {v2}, Lcth;->a()Lcth;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->b(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;Lcth;)Lcth;

    .line 156
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->h(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcth;

    move-result-object v1

    .line 3175
    iput-boolean v4, v1, Lcth;->n:Z

    .line 157
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->h(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcth;

    move-result-object v1

    .line 3199
    iput v5, v1, Lcth;->q:I

    .line 158
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->h(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcth;

    move-result-object v1

    sget v2, Lcjj;->v:I

    .line 3207
    iput v2, v1, Lcth;->r:I

    .line 160
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->j(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->i(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setData(Ljava/util/List;)V

    .line 161
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->j(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->h(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcth;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setStyle(Lcth;)V

    .line 162
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->b(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    .line 163
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->j(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->k(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->f(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->l(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setSelectionPosition(I)V

    .line 169
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->j(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->m(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setSelectionPosition(I)V

    .line 171
    :cond_0
    return-void
.end method
