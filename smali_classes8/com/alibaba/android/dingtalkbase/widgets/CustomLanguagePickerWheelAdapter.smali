.class public Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;
.super Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;
.source "CustomLanguagePickerWheelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;, "Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;-><init>(Landroid/content/Context;)V

    .line 16
    sget v0, Lctg;->a:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;->c:I

    .line 29
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;->b:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method protected final a(ILandroid/view/View;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;, "Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter<TT;>;"
    const/4 v3, 0x0

    .line 42
    if-nez p2, :cond_0

    .line 43
    new-instance p2, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;->b:Landroid/content/Context;

    invoke-direct {p2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;-><init>(Landroid/content/Context;)V

    .line 44
    .restart local p2    # "convertView":Landroid/view/View;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;->c:I

    invoke-direct {v1, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 45
    .local v1, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v1    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    :cond_0
    move-object v2, p2

    .line 47
    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;

    .line 48
    .local v2, "wheelItem":Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 49
    .local v0, "item":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_1

    .line 57
    :goto_0
    return-object v3

    .line 53
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1064
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lcig$j;->dt_common_translate_zh_CN:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1065
    const-string/jumbo v3, "\u7b80\u4f53\u4e2d\u6587(cn)"

    .line 55
    :cond_2
    :goto_1
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->setTextDes(Ljava/lang/CharSequence;)V

    move-object v3, p2

    .line 57
    goto :goto_0

    .line 1066
    :cond_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lcig$j;->dt_common_translate_en_US:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1067
    const-string/jumbo v3, "English(en)"

    goto :goto_1

    .line 1068
    :cond_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lcig$j;->dt_common_translate_es_ES:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1069
    const-string/jumbo v3, "Espa\u00f1ol(es)"

    goto :goto_1

    .line 1070
    :cond_5
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lcig$j;->dt_common_translate_ru_RU:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1071
    const-string/jumbo v3, "\u0440\u0443\u0441\u0441\u043a\u0438\u0439(ru)"

    goto :goto_1
.end method

.method public final a(I)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;
    .locals 1
    .param p1, "wheelItemHeight"    # I

    .prologue
    .line 34
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;, "Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter<TT;>;"
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;->c:I

    if-eq v0, p1, :cond_0

    .line 35
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;->c:I

    .line 37
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;->a(I)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    move-result-object v0

    return-object v0
.end method
