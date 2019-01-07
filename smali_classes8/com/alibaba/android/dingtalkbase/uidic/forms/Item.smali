.class public Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;
.super Lcom/alibaba/android/dingtalkbase/uidic/global/Include;
.source "Item.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/global/Include;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct/range {p0 .. p3}, Lcom/alibaba/android/dingtalkbase/uidic/global/Include;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    sget-object v19, Lcig$l;->uidic_forms_item:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 31
    .local v9, "ta":Landroid/content/res/TypedArray;
    sget v19, Lcig$l;->uidic_forms_item_first:I

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 32
    .local v6, "first":Z
    sget v19, Lcig$l;->uidic_forms_item_last:I

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 33
    .local v8, "last":Z
    sget v19, Lcig$l;->uidic_forms_item_text:I

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 34
    .local v11, "text":Ljava/lang/String;
    sget v19, Lcig$l;->uidic_forms_item_text_drawable_left:I

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 35
    .local v12, "textDrawableLeft":I
    sget v19, Lcig$l;->uidic_forms_item_text_drawable_right:I

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 36
    .local v13, "textDrawableRight":I
    sget v19, Lcig$l;->uidic_forms_item_tip_text:I

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 37
    .local v15, "tipText":Ljava/lang/String;
    sget v19, Lcig$l;->uidic_forms_item_tip_text_drawable_left:I

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 38
    .local v16, "tipTextDrawableLeft":I
    sget v19, Lcig$l;->uidic_forms_item_tip_text_drawable_right:I

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .line 39
    .local v17, "tipTextDrawableRight":I
    sget v19, Lcig$l;->uidic_forms_item_drawable:I

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 40
    .local v3, "drawable":I
    sget v19, Lcig$l;->uidic_forms_item_tip_drawable:I

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 42
    .local v14, "tipDrawable":I
    if-nez v6, :cond_0

    .line 43
    sget v19, Lcig$f;->uidic_forms_item_top_divider:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 44
    .local v10, "tempView":Landroid/view/View;
    if-eqz v10, :cond_0

    .line 45
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .end local v10    # "tempView":Landroid/view/View;
    :cond_0
    if-nez v8, :cond_8

    .line 49
    sget v19, Lcig$f;->uidic_forms_item_bottom_divider:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 50
    .restart local v10    # "tempView":Landroid/view/View;
    if-eqz v10, :cond_1

    .line 51
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :cond_1
    :goto_0
    sget v19, Lcig$f;->uidic_forms_item_text:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 60
    if-eqz v10, :cond_3

    instance-of v0, v10, Landroid/widget/TextView;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 61
    if-lez v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 62
    .local v4, "drawableLeft":Landroid/graphics/drawable/Drawable;
    :goto_1
    if-lez v13, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, "drawableRight":Landroid/graphics/drawable/Drawable;
    :goto_2
    move-object/from16 v18, v10

    .line 63
    check-cast v18, Landroid/widget/TextView;

    .line 64
    .local v18, "tv":Landroid/widget/TextView;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 65
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_2
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v4, v1, v5, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 69
    .end local v4    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    .end local v5    # "drawableRight":Landroid/graphics/drawable/Drawable;
    .end local v18    # "tv":Landroid/widget/TextView;
    :cond_3
    sget v19, Lcig$f;->uidic_forms_item_tip_text:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 70
    if-eqz v10, :cond_5

    instance-of v0, v10, Landroid/widget/TextView;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 71
    if-lez v16, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 72
    .restart local v4    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    :goto_3
    if-lez v17, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .restart local v5    # "drawableRight":Landroid/graphics/drawable/Drawable;
    :goto_4
    move-object/from16 v18, v10

    .line 73
    check-cast v18, Landroid/widget/TextView;

    .line 74
    .restart local v18    # "tv":Landroid/widget/TextView;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 75
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_4
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v4, v1, v5, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 79
    .end local v4    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    .end local v5    # "drawableRight":Landroid/graphics/drawable/Drawable;
    .end local v18    # "tv":Landroid/widget/TextView;
    :cond_5
    sget v19, Lcig$f;->uidic_forms_item_drawable:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 80
    if-eqz v10, :cond_6

    instance-of v0, v10, Landroid/widget/ImageView;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object v7, v10

    .line 81
    check-cast v7, Landroid/widget/ImageView;

    .line 82
    .local v7, "iv":Landroid/widget/ImageView;
    if-lez v3, :cond_6

    .line 83
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    .end local v7    # "iv":Landroid/widget/ImageView;
    :cond_6
    sget v19, Lcig$f;->uidic_forms_item_tip_drawable:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 87
    if-eqz v10, :cond_7

    instance-of v0, v10, Landroid/widget/ImageView;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    move-object v7, v10

    .line 88
    check-cast v7, Landroid/widget/ImageView;

    .line 89
    .restart local v7    # "iv":Landroid/widget/ImageView;
    if-lez v14, :cond_7

    .line 90
    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    .end local v7    # "iv":Landroid/widget/ImageView;
    :cond_7
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    return-void

    .line 54
    .end local v10    # "tempView":Landroid/view/View;
    :cond_8
    sget v19, Lcig$f;->uidic_forms_item_inner_bottom_divider:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 55
    .restart local v10    # "tempView":Landroid/view/View;
    if-eqz v10, :cond_1

    .line 56
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 61
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 62
    .restart local v4    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 71
    .end local v4    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 72
    .restart local v4    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    :cond_c
    const/4 v5, 0x0

    goto :goto_4
.end method
