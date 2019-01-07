.class public final Leev;
.super Lefa;
.source "CalendarJouralViewHolder.java"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
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

    .line 47
    invoke-virtual {p0, p1, v10}, Leev;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 49
    const/4 v4, 0x0

    .line 50
    .local v4, "title":Ljava/lang/String;
    iget-object v8, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mTextModels:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mTextModels:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 51
    iget-object v8, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mTextModels:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;

    .line 52
    .local v3, "textObject":Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;
    if-eqz v3, :cond_0

    .line 53
    iget-object v4, v3, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;->mContent:Ljava/lang/String;

    .line 56
    .end local v3    # "textObject":Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;
    :cond_0
    iget-object v8, p0, Leev;->b:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v8, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mAttributeMap:Ljava/util/Map;

    if-eqz v8, :cond_1

    iget-object v8, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 59
    iget-object v8, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 60
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    .local v1, "key":Ljava/lang/String;
    iget-object v8, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 63
    .local v6, "value":Ljava/lang/String;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Ledz$g;->item_calendar_journal_item:I

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 64
    .local v5, "v":Landroid/view/View;
    sget v8, Ledz$f;->calendar_journal_key:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 65
    .local v2, "keyTv":Landroid/widget/TextView;
    sget v8, Ledz$f;->calendar_journal_value:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 66
    .local v7, "valueTv":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v8, p0, Leev;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 73
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keyTv":Landroid/widget/TextView;
    .end local v5    # "v":Landroid/view/View;
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "valueTv":Landroid/widget/TextView;
    :cond_1
    iget-object v8, p0, Leev;->a:Landroid/widget/LinearLayout;

    return-object v8
.end method

.method protected final a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ledz$g;->item_calendar_journal:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Leev;->a:Landroid/widget/LinearLayout;

    .line 42
    iget-object v0, p0, Leev;->a:Landroid/widget/LinearLayout;

    sget v1, Ledz$f;->calendar_journal_title:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leev;->b:Landroid/widget/TextView;

    .line 43
    return-void
.end method
