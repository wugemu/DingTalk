.class public final Leex;
.super Lefa;
.source "CalendarMergeTextViewHolder.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lefa;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "managerCalTabObject"    # Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x11

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 52
    invoke-virtual {p0, p1, v10}, Leex;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 54
    const/4 v4, 0x0

    .line 55
    .local v4, "title":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 56
    .local v1, "builder":Landroid/text/SpannableStringBuilder;
    iget-object v5, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mTextModels:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 57
    iget-object v5, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mTextModels:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 58
    iget-object v5, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mTextModels:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;

    iget-object v4, v5, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;->mContent:Ljava/lang/String;

    .line 60
    :cond_0
    iget-object v5, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mTextModels:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_2

    .line 61
    iget-object v5, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mTextModels:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;

    iget-object v0, v5, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;->mContent:Ljava/lang/String;

    .line 62
    .local v0, "boldContent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 63
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 64
    iget-object v5, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mTextModels:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;

    iget-object v5, v5, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;->mTextColor:Ljava/lang/String;

    .line 1043
    invoke-static {v5, v7}, Lcpz;->a(Ljava/lang/String;I)I

    move-result v2

    .line 65
    .local v2, "color":I
    if-eqz v2, :cond_1

    .line 66
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v5, v7, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 68
    :cond_1
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v10, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v5, v7, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 71
    .end local v0    # "boldContent":Ljava/lang/String;
    .end local v2    # "color":I
    :cond_2
    iget-object v5, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mTextModels:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v8, :cond_3

    .line 72
    iget-object v5, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mTextModels:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;

    iget-object v3, v5, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;->mContent:Ljava/lang/String;

    .line 73
    .local v3, "normalContent":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 74
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 78
    .end local v3    # "normalContent":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Leex;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v5, p0, Leex;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v5, p0, Leex;->a:Landroid/view/View;

    return-object v5
.end method

.method protected final a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ledz$g;->item_calendar_bold_text:I

    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leex;->a:Landroid/view/View;

    .line 46
    iget-object v0, p0, Leex;->a:Landroid/view/View;

    sget v1, Ledz$f;->calendar_bold_text_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leex;->b:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Leex;->a:Landroid/view/View;

    sget v1, Ledz$f;->calendar_bold_text_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leex;->c:Landroid/widget/TextView;

    .line 48
    return-void
.end method
