.class final Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$4;
.super Ljava/lang/Object;
.source "FirstCreateTeamTipDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/GridView;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;Landroid/widget/GridView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    .prologue
    .line 162
    .local p0, "this":Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$4;, "Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$4;"
    iput-object p1, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$4;->c:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    iput-object p2, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$4;->a:Landroid/widget/GridView;

    iput-object p3, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$4;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .prologue
    .line 166
    .local p0, "this":Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$4;, "Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$4;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$4;->a:Landroid/widget/GridView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/GridView;->getMeasuredHeight()I

    move-result v4

    .line 167
    .local v4, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$4;->c:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->b(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    rem-int/lit8 v11, v20, 0x4

    .line 168
    .local v11, "mode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$4;->c:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->b(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    div-int/lit8 v13, v20, 0x4

    .line 169
    .local v13, "rows":I
    if-eqz v11, :cond_0

    .line 170
    add-int/lit8 v13, v13, 0x1

    .line 172
    :cond_0
    div-int v12, v4, v13

    .line 174
    .local v12, "rowHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$4;->c:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->c(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)I

    move-result v20

    div-int/lit8 v16, v20, 0x4

    .line 175
    .local v16, "selectRowIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$4;->c:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->c(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 176
    const/16 v16, 0x1

    .line 181
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$4;->b:Landroid/view/View;

    move-object/from16 v20, v0

    sget v21, Ledz$f;->bottom_tip_layout:I

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 182
    .local v2, "bottomTipLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 183
    .local v7, "layoutParams1":Landroid/widget/RelativeLayout$LayoutParams;
    mul-int v20, v16, v12

    move/from16 v0, v20

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 184
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$4;->c:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->d(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcms;->a(Landroid/content/Context;)I

    move-result v14

    .line 188
    .local v14, "screenWidth":I
    div-int/lit8 v3, v14, 0x4

    .line 189
    .local v3, "columWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$4;->c:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->c(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)I

    move-result v20

    rem-int/lit8 v15, v20, 0x4

    .line 190
    .local v15, "selectColoumIndex":I
    div-int/lit8 v20, v3, 0x2

    mul-int v21, v3, v15

    add-int v10, v20, v21

    .line 191
    .local v10, "marginLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$4;->b:Landroid/view/View;

    move-object/from16 v20, v0

    sget v21, Ledz$f;->tip_image:I

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 192
    .local v17, "textView":Landroid/widget/TextView;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 193
    .local v8, "layoutParams2":Landroid/widget/RelativeLayout$LayoutParams;
    iput v10, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 194
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$4;->b:Landroid/view/View;

    move-object/from16 v20, v0

    sget v21, Ledz$f;->know_text:I

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 197
    .local v5, "knowText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$4;->b:Landroid/view/View;

    move-object/from16 v20, v0

    sget v21, Ledz$f;->know_text_in_header:I

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 199
    .local v6, "knowTextInHeader":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$4;->b:Landroid/view/View;

    move-object/from16 v20, v0

    sget v21, Ledz$f;->tip_layout:I

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    .line 200
    .local v18, "tipLayout":Landroid/widget/RelativeLayout;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 201
    .local v9, "layoutParams3":Landroid/widget/RelativeLayout$LayoutParams;
    iget v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    .line 202
    .local v19, "tipLayoutMarginBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$4;->c:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->d(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)Landroid/content/Context;

    move-result-object v20

    const/high16 v21, 0x42f00000    # 120.0f

    invoke-static/range {v20 .. v21}, Lcms;->c(Landroid/content/Context;F)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_3

    .line 203
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    :goto_1
    return-void

    .line 177
    .end local v2    # "bottomTipLayout":Landroid/widget/RelativeLayout;
    .end local v3    # "columWidth":I
    .end local v5    # "knowText":Landroid/widget/TextView;
    .end local v6    # "knowTextInHeader":Landroid/widget/TextView;
    .end local v7    # "layoutParams1":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8    # "layoutParams2":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "layoutParams3":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v10    # "marginLeft":I
    .end local v14    # "screenWidth":I
    .end local v15    # "selectColoumIndex":I
    .end local v17    # "textView":Landroid/widget/TextView;
    .end local v18    # "tipLayout":Landroid/widget/RelativeLayout;
    .end local v19    # "tipLayoutMarginBottom":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$4;->c:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->c(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1

    .line 178
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 206
    .restart local v2    # "bottomTipLayout":Landroid/widget/RelativeLayout;
    .restart local v3    # "columWidth":I
    .restart local v5    # "knowText":Landroid/widget/TextView;
    .restart local v6    # "knowTextInHeader":Landroid/widget/TextView;
    .restart local v7    # "layoutParams1":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v8    # "layoutParams2":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v9    # "layoutParams3":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v10    # "marginLeft":I
    .restart local v14    # "screenWidth":I
    .restart local v15    # "selectColoumIndex":I
    .restart local v17    # "textView":Landroid/widget/TextView;
    .restart local v18    # "tipLayout":Landroid/widget/RelativeLayout;
    .restart local v19    # "tipLayoutMarginBottom":I
    :cond_3
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
