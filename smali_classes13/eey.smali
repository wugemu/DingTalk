.class public final Leey;
.super Lefa;
.source "CalendarOrderJouralViewHolder.java"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lefa;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "managerCalTabObject"    # Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Leey;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 54
    const/4 v10, 0x0

    .line 55
    .local v10, "title":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mTextModels:Ljava/util/List;

    if-eqz v14, :cond_0

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mTextModels:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_0

    .line 56
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mTextModels:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;

    .line 57
    .local v9, "textObject":Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;
    if-eqz v9, :cond_0

    .line 58
    iget-object v10, v9, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;->mContent:Ljava/lang/String;

    .line 61
    .end local v9    # "textObject":Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Leey;->b:Landroid/widget/TextView;

    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mOrderAttributeStr:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 65
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mOrderAttributeStr:Ljava/lang/String;

    invoke-direct {v5, v14}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 66
    .local v5, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_1

    .line 67
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v4, v14, :cond_1

    .line 68
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 69
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v14, "k"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, "key":Ljava/lang/String;
    const-string/jumbo v14, "v"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 71
    .local v12, "value":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    sget v15, Ledz$g;->item_calendar_journal_item:I

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 72
    .local v11, "v":Landroid/view/View;
    sget v14, Ledz$f;->calendar_journal_key:I

    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 73
    .local v8, "keyTv":Landroid/widget/TextView;
    sget v14, Ledz$f;->calendar_journal_value:I

    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 74
    .local v13, "valueTv":Landroid/widget/TextView;
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    move-object/from16 v0, p0

    iget-object v14, v0, Leey;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 80
    .end local v4    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "keyTv":Landroid/widget/TextView;
    .end local v11    # "v":Landroid/view/View;
    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "valueTv":Landroid/widget/TextView;
    :catch_0
    move-exception v3

    .line 81
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 85
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_1
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mLinkModel:Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;

    if-eqz v14, :cond_2

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mLinkModel:Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;

    iget-object v14, v14, Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;->mLink:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 86
    move-object/from16 v0, p0

    iget-object v14, v0, Leey;->a:Landroid/widget/LinearLayout;

    new-instance v15, Leey$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v15, v0, v1, v2}, Leey$1;-><init>(Leey;Landroid/app/Activity;Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;)V

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Leey;->a:Landroid/widget/LinearLayout;

    return-object v14
.end method

.method protected final a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ledz$g;->item_calendar_journal:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Leey;->a:Landroid/widget/LinearLayout;

    .line 47
    iget-object v0, p0, Leey;->a:Landroid/widget/LinearLayout;

    sget v1, Ledz$f;->calendar_journal_title:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leey;->b:Landroid/widget/TextView;

    .line 48
    return-void
.end method
