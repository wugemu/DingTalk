.class public Leet;
.super Lefa;
.source "CalendarAvatarViewHolder.java"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Leet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leet;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lefa;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "managerCalTabObject"    # Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Leet;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 55
    const/4 v2, 0x0

    .line 56
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mTextModels:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mTextModels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 57
    iget-object v3, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mTextModels:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;

    .line 58
    .local v1, "textObject":Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;
    if-eqz v1, :cond_0

    .line 59
    iget-object v2, v1, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;->mContent:Ljava/lang/String;

    .line 62
    .end local v1    # "textObject":Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;
    :cond_0
    iget-object v3, p0, Leet;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    new-instance v0, Leed;

    iget-object v3, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mOrgNodes:Ljava/util/List;

    iget v4, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mOrgNodeNum:I

    invoke-direct {v0, v3, v4}, Leed;-><init>(Ljava/util/List;I)V

    .line 1143
    .local v0, "adapter":Leed;
    iput-object p1, v0, Leed;->a:Landroid/app/Activity;

    .line 66
    iget-object v3, p0, Leet;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->setUniformGridViewAdapter(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;)V

    .line 67
    iget-object v3, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mLinkModel:Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;

    if-eqz v3, :cond_1

    iget-object v3, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mLinkModel:Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;

    iget-object v3, v3, Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;->mLink:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 68
    iget-object v3, p0, Leet;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;

    new-instance v4, Leet$1;

    invoke-direct {v4, p0, p1, p2}, Leet$1;-><init>(Leet;Landroid/app/Activity;Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->setOnUniformGridViewItemClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$a;)V

    .line 76
    :cond_1
    iget-object v3, p0, Leet;->b:Landroid/view/View;

    return-object v3
.end method

.method protected final a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ledz$g;->item_calendar_avatar:I

    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leet;->b:Landroid/view/View;

    .line 47
    iget-object v0, p0, Leet;->b:Landroid/view/View;

    sget v1, Ledz$f;->calendar_avatar_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leet;->c:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Leet;->b:Landroid/view/View;

    sget v1, Ledz$f;->calendar_avatar_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;

    iput-object v0, p0, Leet;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;

    .line 49
    return-void
.end method
