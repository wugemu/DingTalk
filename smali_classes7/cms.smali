.class public Lcms;
.super Ljava/lang/Object;
.source "AndTools.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/util/regex/Pattern;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    sput-object v0, Lcms;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;F)F
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # F

    .prologue
    .line 129
    if-nez p0, :cond_0

    .line 130
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 133
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 135
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 136
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    div-float v0, p1, v3

    .line 140
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .end local v2    # "resources":Landroid/content/res/Resources;
    :goto_0
    return v0

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 675
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static a(Landroid/app/Activity;)I
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 254
    if-nez p0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v2

    .line 259
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 260
    .local v0, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 261
    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-eqz v3, :cond_2

    .line 262
    iget v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 267
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "status_bar_height"

    const-string/jumbo v5, "dimen"

    const-string/jumbo v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 268
    .local v1, "heightDp":I
    if-lez v1, :cond_0

    .line 269
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .end local v1    # "heightDp":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    if-nez p0, :cond_0

    .line 196
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 199
    :cond_0
    if-eqz p0, :cond_1

    .line 200
    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 201
    .local v2, "manager":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 203
    .local v0, "dm":Landroid/util/DisplayMetrics;
    :try_start_0
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 204
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "manager":Landroid/view/WindowManager;
    :goto_0
    return v3

    .line 205
    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    .restart local v2    # "manager":Landroid/view/WindowManager;
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "manager":Landroid/view/WindowManager;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1440
    .line 5448
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 5449
    const v1, 0x1fffffff

    const/high16 v2, -0x80000000

    .line 5450
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 5451
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1441
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "resource"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 1339
    const/4 v1, 0x0

    .line 1341
    .local v1, "ret":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    .line 1342
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1344
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 1345
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1351
    :cond_0
    :goto_0
    return-object v1

    .line 1347
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 793
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcig$j;->sure:I

    new-instance v3, Lcms$1;

    invoke-direct {v3, p2}, Lcms$1;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 802
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 803
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    return-object v0
.end method

.method public static a(Landroid/app/Activity;I)Landroid/widget/SearchView;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "textHintId"    # I

    .prologue
    .line 1355
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcms;->a(Landroid/app/Activity;IZ)Landroid/widget/SearchView;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/app/Activity;IZ)Landroid/widget/SearchView;
    .locals 25
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "textHintId"    # I
    .param p2, "requestFocus"    # Z

    .prologue
    .line 1359
    new-instance v9, Lcom/alibaba/android/dingtalkbase/widgets/views/OnePressBackSearchView;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/OnePressBackSearchView;-><init>(Landroid/content/Context;)V

    .line 1361
    .local v9, "mSearchView":Landroid/widget/SearchView;
    const/16 v21, 0x2710

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/SearchView;->setMaxWidth(I)V

    .line 1362
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 1363
    const-string/jumbo v21, "search"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/SearchManager;

    .line 1366
    .local v18, "sm":Landroid/app/SearchManager;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 1369
    invoke-virtual {v9}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string/jumbo v22, "search_edit_frame"

    const-string/jumbo v23, "id"

    const-string/jumbo v24, "android"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 1370
    .local v13, "search_frame_id":I
    invoke-virtual {v9, v13}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 1371
    .local v12, "search_frame":Landroid/widget/LinearLayout;
    sget v21, Lcig$e;->global_search_frame_selector:I

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1372
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 1373
    .local v7, "framelp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const/high16 v22, 0x42100000    # 36.0f

    invoke-static/range {v21 .. v22}, Lcms;->c(Landroid/content/Context;F)I

    move-result v21

    move/from16 v0, v21

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1374
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const/high16 v22, 0x40c00000    # 6.0f

    invoke-static/range {v21 .. v22}, Lcms;->c(Landroid/content/Context;F)I

    move-result v21

    move/from16 v0, v21

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1375
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1376
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1377
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const/high16 v22, 0x41200000    # 10.0f

    invoke-static/range {v21 .. v22}, Lcms;->c(Landroid/content/Context;F)I

    move-result v21

    move/from16 v0, v21

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1380
    invoke-virtual {v9}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string/jumbo v22, "search_plate"

    const-string/jumbo v23, "id"

    const-string/jumbo v24, "android"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 1381
    .local v17, "search_plate_id":I
    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 1382
    .local v16, "search_plate":Landroid/widget/LinearLayout;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 1383
    .local v10, "platelp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const/high16 v22, 0x41000000    # 8.0f

    invoke-static/range {v21 .. v22}, Lcms;->c(Landroid/content/Context;F)I

    move-result v21

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1384
    sget v21, Lcig$e;->global_search_plate_selector:I

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1387
    invoke-virtual {v9}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string/jumbo v22, "search_src_text"

    const-string/jumbo v23, "id"

    const-string/jumbo v24, "android"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 1388
    .local v19, "text_id":I
    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    .line 1389
    .local v20, "theTextArea":Landroid/widget/EditText;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    sget v22, Lcig$c;->search_hint_color:I

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1390
    invoke-virtual/range {p0 .. p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1393
    const/high16 v21, -0x1000000

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1394
    const/16 v21, 0x0

    sget v22, Lcig$d;->dp16:I

    invoke-static/range {v22 .. v22}, Leda;->d(I)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1395
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1397
    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->requestFocus()Z

    .line 1401
    invoke-virtual {v9}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string/jumbo v22, "search_mag_icon"

    const-string/jumbo v23, "id"

    const-string/jumbo v24, "android"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 1402
    .local v15, "search_mag_icon_id":I
    invoke-virtual {v9, v15}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 1403
    .local v14, "search_mag_icon":Landroid/widget/ImageView;
    new-instance v11, Lecw;

    sget v21, Lcig$j;->icon_search:I

    invoke-static/range {v21 .. v21}, Leda;->a(I)Ljava/lang/String;

    move-result-object v21

    sget v22, Lcig$c;->ui_common_level1_icon_bg_color:I

    invoke-static/range {v22 .. v22}, Leda;->b(I)I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v11, v0, v1}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 1404
    .local v11, "searchDrawable":Lecw;
    invoke-virtual {v14, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1405
    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 1406
    .local v8, "imagelp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const/high16 v22, 0x41800000    # 16.0f

    invoke-static/range {v21 .. v22}, Lcms;->c(Landroid/content/Context;F)I

    move-result v21

    move/from16 v0, v21

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1407
    iget v0, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1408
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const/high16 v22, 0x41400000    # 12.0f

    invoke-static/range {v21 .. v22}, Lcms;->c(Landroid/content/Context;F)I

    move-result v21

    move/from16 v0, v21

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1411
    invoke-virtual {v9}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string/jumbo v22, "search_close_btn"

    const-string/jumbo v23, "id"

    const-string/jumbo v24, "android"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1412
    .local v3, "clear_mag_icon_id":I
    invoke-virtual {v9, v3}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1413
    .local v2, "clear_mag_icon":Landroid/widget/ImageView;
    new-instance v5, Lecw;

    sget v21, Lcig$j;->icon_roundclose_fill:I

    invoke-static/range {v21 .. v21}, Leda;->a(I)Ljava/lang/String;

    move-result-object v21

    sget v22, Lcig$c;->ui_common_level1_icon_bg_color:I

    invoke-static/range {v22 .. v22}, Leda;->b(I)I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v5, v0, v1}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 1414
    .local v5, "closeDrawable":Lecw;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const/high16 v22, 0x41700000    # 15.0f

    invoke-static/range {v21 .. v22}, Lcms;->c(Landroid/content/Context;F)I

    move-result v21

    .line 5070
    move/from16 v0, v21

    iput v0, v5, Lecw;->a:I

    .line 1415
    invoke-virtual {v5}, Lecw;->getIntrinsicWidth()I

    move-result v21

    .line 5079
    move/from16 v0, v21

    iput v0, v5, Lecw;->b:I

    .line 1416
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const/high16 v22, 0x3fc00000    # 1.5f

    invoke-static/range {v21 .. v22}, Lcms;->c(Landroid/content/Context;F)I

    move-result v21

    .line 5083
    move/from16 v0, v21

    iput v0, v5, Lecw;->c:I

    .line 1417
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1418
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1419
    .local v4, "clearlp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v21, 0x11

    move/from16 v0, v21

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1420
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const/high16 v22, 0x42180000    # 38.0f

    invoke-static/range {v21 .. v22}, Lcms;->c(Landroid/content/Context;F)I

    move-result v21

    move/from16 v0, v21

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1421
    iget v0, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    .end local v2    # "clear_mag_icon":Landroid/widget/ImageView;
    .end local v3    # "clear_mag_icon_id":I
    .end local v4    # "clearlp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "closeDrawable":Lecw;
    .end local v7    # "framelp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "imagelp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "platelp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "searchDrawable":Lecw;
    .end local v12    # "search_frame":Landroid/widget/LinearLayout;
    .end local v13    # "search_frame_id":I
    .end local v14    # "search_mag_icon":Landroid/widget/ImageView;
    .end local v15    # "search_mag_icon_id":I
    .end local v16    # "search_plate":Landroid/widget/LinearLayout;
    .end local v17    # "search_plate_id":I
    .end local v19    # "text_id":I
    .end local v20    # "theTextArea":Landroid/widget/EditText;
    :goto_0
    return-object v9

    .line 1422
    :catch_0
    move-exception v6

    .line 1423
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 14
    .param p0, "size"    # J

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 1272
    const-wide/16 v6, 0x400

    cmp-long v3, p0, v6

    if-gez v3, :cond_0

    .line 1273
    const-string/jumbo v0, "B"

    .line 1274
    .local v0, "UNIT":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1297
    :goto_0
    return-object v3

    .line 1275
    .end local v0    # "UNIT":Ljava/lang/String;
    :cond_0
    const-wide/32 v6, 0x100000

    cmp-long v3, p0, v6

    if-gez v3, :cond_1

    .line 1276
    const-string/jumbo v0, "KB"

    .line 1277
    .restart local v0    # "UNIT":Ljava/lang/String;
    long-to-double v6, p0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    div-double v4, v6, v8

    .line 1290
    .local v4, "value":D
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 1291
    .local v2, "dvalue":Ljava/lang/Double;
    invoke-virtual {v2}, Ljava/lang/Double;->longValue()J

    move-result-wide v6

    long-to-double v6, v6

    cmpl-double v3, v6, v4

    if-nez v3, :cond_4

    .line 1292
    new-array v3, v12, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Double;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v11

    aput-object v0, v3, v10

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1278
    .end local v0    # "UNIT":Ljava/lang/String;
    .end local v2    # "dvalue":Ljava/lang/Double;
    .end local v4    # "value":D
    :cond_1
    const-wide/32 v6, 0x40000000

    cmp-long v3, p0, v6

    if-gez v3, :cond_2

    .line 1279
    const-string/jumbo v0, "M"

    .line 1280
    .restart local v0    # "UNIT":Ljava/lang/String;
    long-to-double v6, p0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    div-double v4, v6, v8

    .restart local v4    # "value":D
    goto :goto_1

    .line 1281
    .end local v0    # "UNIT":Ljava/lang/String;
    .end local v4    # "value":D
    :cond_2
    const-wide v6, 0x10000000000L

    cmp-long v3, p0, v6

    if-gez v3, :cond_3

    .line 1282
    const-string/jumbo v0, "G"

    .line 1283
    .restart local v0    # "UNIT":Ljava/lang/String;
    long-to-double v6, p0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x41d0000000000000L    # 1.073741824E9

    div-double v4, v6, v8

    .restart local v4    # "value":D
    goto :goto_1

    .line 1285
    .end local v0    # "UNIT":Ljava/lang/String;
    .end local v4    # "value":D
    :cond_3
    const-string/jumbo v0, "T"

    .line 1286
    .restart local v0    # "UNIT":Ljava/lang/String;
    long-to-double v6, p0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4270000000000000L    # 1.099511627776E12

    div-double v4, v6, v8

    .restart local v4    # "value":D
    goto :goto_1

    .line 1295
    .restart local v2    # "dvalue":Ljava/lang/Double;
    :cond_4
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 1296
    .local v1, "ddf1":Ljava/text/NumberFormat;
    invoke-virtual {v1, v10}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 1297
    new-array v3, v12, [Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v11

    aput-object v0, v3, v10

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static a(I)V
    .locals 3
    .param p0, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 820
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {v0, v1, v2, v2, v2}, Lcms;->a(Ljava/lang/String;IIII)V

    .line 821
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/net/Uri;ZILjava/lang/String;IIII)V
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "defaultSizeWithSource"    # Z
    .param p3, "requestCode"    # I
    .param p4, "cropImageFileName"    # Ljava/lang/String;
    .param p5, "aspectX"    # I
    .param p6, "aspectY"    # I
    .param p7, "outputX"    # I
    .param p8, "outputY"    # I

    .prologue
    .line 729
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/camera/CropImage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 731
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    if-lez p5, :cond_0

    .line 733
    const-string/jumbo v1, "aspectX"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 735
    :cond_0
    if-lez p6, :cond_1

    .line 736
    const-string/jumbo v1, "aspectY"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 738
    :cond_1
    if-lez p7, :cond_2

    .line 739
    const-string/jumbo v1, "outputX"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 741
    :cond_2
    if-lez p8, :cond_3

    .line 742
    const-string/jumbo v1, "outputY"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 745
    :cond_3
    const-string/jumbo v1, "crop"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    const-string/jumbo v1, "return-data"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 751
    if-eqz p4, :cond_4

    .line 752
    const-string/jumbo v1, "return-data-file-name"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    :cond_4
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;ZF)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "keep"    # Z
    .param p2, "brightness"    # F

    .prologue
    const/16 v2, 0x80

    .line 1667
    if-nez p0, :cond_0

    .line 1685
    :goto_0
    return-void

    .line 1671
    :cond_0
    if-eqz p1, :cond_2

    .line 1672
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1677
    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    .line 1678
    const/high16 p2, 0x3f800000    # 1.0f

    .line 1681
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1682
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1684
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 1674
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1
.end method

.method public static a(Landroid/app/DatePickerDialog;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/DatePickerDialog;

    .prologue
    const/4 v1, 0x0

    .line 1331
    if-eqz p0, :cond_0

    .line 1332
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->setFocusableInTouchMode(Z)V

    .line 1333
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->setFocusable(Z)V

    .line 1334
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->setDescendantFocusability(I)V

    .line 1336
    :cond_0
    return-void
.end method

.method public static a(Landroid/app/TimePickerDialog;)V
    .locals 7
    .param p0, "dialog"    # Landroid/app/TimePickerDialog;

    .prologue
    .line 1301
    if-eqz p0, :cond_0

    .line 1305
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1306
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/app/TimePickerDialog;>;"
    const-string/jumbo v6, "mTimePicker"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1308
    .local v3, "field":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_0

    .line 1309
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1311
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1312
    .local v5, "pickerObject":Ljava/lang/Object;
    if-eqz v5, :cond_0

    instance-of v6, v5, Landroid/widget/TimePicker;

    if-eqz v6, :cond_0

    .line 1313
    move-object v0, v5

    check-cast v0, Landroid/widget/TimePicker;

    move-object v4, v0

    .line 1314
    .local v4, "picker":Landroid/widget/TimePicker;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TimePicker;->setFocusable(Z)V

    .line 1315
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TimePicker;->setFocusableInTouchMode(Z)V

    .line 1316
    const/high16 v6, 0x60000

    invoke-virtual {v4, v6}, Landroid/widget/TimePicker;->setDescendantFocusability(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1328
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/app/TimePickerDialog;>;"
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "picker":Landroid/widget/TimePicker;
    .end local v5    # "pickerObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 1319
    :catch_0
    move-exception v2

    .line 1320
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 1321
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .line 1322
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 1323
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 1324
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 811
    if-eqz p0, :cond_0

    .line 812
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1807
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcms;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 814
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "duration"    # J

    .prologue
    .line 504
    if-nez p0, :cond_0

    .line 505
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 508
    :cond_0
    if-eqz p0, :cond_1

    .line 511
    :try_start_0
    const-string/jumbo v2, "vibrator"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 512
    .local v1, "vib":Landroid/os/Vibrator;
    if-eqz v1, :cond_1

    .line 513
    invoke-virtual {v1, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    .end local v1    # "vib":Landroid/os/Vibrator;
    :cond_1
    :goto_0
    return-void

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1650
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 1652
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1659
    :cond_0
    return-void

    .line 1653
    :catch_0
    move-exception v0

    .line 1654
    .local v0, "t":Ljava/lang/Throwable;
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1655
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 422
    if-nez p0, :cond_0

    .line 423
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 426
    :cond_0
    if-eqz p0, :cond_1

    .line 427
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 428
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 429
    invoke-virtual {v0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 431
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 807
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcms;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 808
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 827
    const/16 v0, 0x11

    invoke-static {p0, v0, v1, v1, v1}, Lcms;->a(Ljava/lang/String;IIII)V

    .line 828
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "duration"    # I

    .prologue
    const/4 v1, 0x0

    .line 857
    const/16 v0, 0x11

    invoke-static {p0, v0, v1, v1, p1}, Lcms;->a(Ljava/lang/String;IIII)V

    .line 858
    return-void
.end method

.method public static a(Ljava/lang/String;III)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "gravity"    # I
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    .prologue
    const/4 v0, 0x0

    .line 850
    invoke-static {p0, p1, v0, p3, v0}, Lcms;->a(Ljava/lang/String;IIII)V

    .line 851
    return-void
.end method

.method public static a(Ljava/lang/String;IIII)V
    .locals 7
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "gravity"    # I
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I
    .param p4, "duration"    # I

    .prologue
    .line 865
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    sget-object v0, Lcms;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 873
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 874
    invoke-static {p0, p1, p2, p3, p4}, Lcms;->c(Ljava/lang/String;IIII)V

    goto :goto_0

    .line 876
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v6

    new-instance v0, Lcms$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcms$2;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v6, v0}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 834
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    .line 2056
    iget-object v1, v1, Lcid;->c:Lcmy;

    .line 834
    if-eqz v1, :cond_0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    .line 3056
    iget-object v1, v1, Lcid;->c:Lcmy;

    .line 834
    invoke-interface {v1, p0, p1}, Lcmy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, "desc":Ljava/lang/String;
    :goto_0
    const/16 v1, 0x11

    invoke-static {v0, v1, v2, v2, v2}, Lcms;->a(Ljava/lang/String;IIII)V

    .line 836
    return-void

    .end local v0    # "desc":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .line 834
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 1247
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1251
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 1252
    .local v0, "cm":Landroid/webkit/CookieManager;
    if-eqz v0, :cond_0

    .line 1253
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "accessToken"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ";"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "deviceId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ";"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1261
    .end local v0    # "cm":Landroid/webkit/CookieManager;
    :cond_0
    :goto_0
    return-void

    .line 1257
    :catch_0
    move-exception v1

    .line 1258
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/Fragment;)Z
    .locals 2
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v0, 0x0

    .line 1171
    if-nez p0, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;F)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 147
    if-nez p0, :cond_0

    .line 148
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 151
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 153
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float p1, v1, v2

    .line 156
    .end local v0    # "scale":F
    .end local p1    # "dpValue":F
    :cond_1
    return p1
.end method

.method public static b(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    if-nez p0, :cond_0

    .line 217
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 220
    :cond_0
    if-eqz p0, :cond_1

    .line 221
    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 222
    .local v2, "manager":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 224
    .local v0, "dm":Landroid/util/DisplayMetrics;
    :try_start_0
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 225
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "manager":Landroid/view/WindowManager;
    :goto_0
    return v3

    .line 226
    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    .restart local v2    # "manager":Landroid/view/WindowManager;
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "manager":Landroid/view/WindowManager;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2
    .param p0, "groupName"    # Ljava/lang/String;

    .prologue
    .line 1230
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 1231
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 1232
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 1233
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 1234
    return-object v0
.end method

.method public static b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2
    .param p0, "groupName"    # Ljava/lang/String;
    .param p1, "concurrentNum"    # I

    .prologue
    .line 1238
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 1239
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 1240
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 1241
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 1242
    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 680
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 437
    if-nez p0, :cond_0

    .line 438
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 441
    :cond_0
    if-eqz p0, :cond_1

    .line 442
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 443
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 445
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return-void
.end method

.method static synthetic b(Ljava/lang/String;IIII)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 104
    invoke-static {p0, p1, p2, p3, p4}, Lcms;->c(Ljava/lang/String;IIII)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 842
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    .line 4056
    iget-object v1, v1, Lcid;->c:Lcmy;

    .line 842
    if-eqz v1, :cond_0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    .line 5056
    iget-object v1, v1, Lcid;->c:Lcmy;

    .line 842
    invoke-interface {v1, p0, p1}, Lcmy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, "desc":Ljava/lang/String;
    :goto_0
    const/16 v1, 0x11

    const/4 v2, 0x1

    invoke-static {v0, v1, v3, v3, v2}, Lcms;->a(Ljava/lang/String;IIII)V

    .line 844
    return-void

    .end local v0    # "desc":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .line 842
    goto :goto_0
.end method

.method public static b(I)Z
    .locals 1
    .param p0, "apiLevel"    # I

    .prologue
    .line 907
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(J)Z
    .locals 6
    .param p0, "time"    # J

    .prologue
    const/4 v4, 0x6

    .line 1466
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 1467
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1468
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1469
    .local v1, "dayOfYear":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1470
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 1471
    const/4 v2, 0x0

    .line 1474
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)Z
    .locals 6
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1180
    const/4 v1, 0x1

    .line 1181
    .local v1, "finished":Z
    if-eqz p0, :cond_0

    .line 1182
    instance-of v4, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v4, :cond_1

    move-object v0, p0

    .line 1184
    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1185
    .local v0, "ba":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isDestroyed()Z

    move-result v1

    .line 1195
    .end local v0    # "ba":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    :cond_0
    :goto_0
    if-nez v1, :cond_5

    :goto_1
    return v3

    .line 1187
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_4

    .line 1188
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v1, v3

    :goto_2
    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2

    .line 1190
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    goto :goto_0

    :cond_5
    move v3, v2

    .line 1195
    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    if-nez p0, :cond_0

    .line 238
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 241
    :cond_0
    if-eqz p0, :cond_1

    .line 242
    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 243
    .local v1, "manager":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 244
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 245
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 247
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "manager":Landroid/view/WindowManager;
    :goto_0
    return v2

    :cond_1
    const/16 v2, 0xf0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 163
    if-nez p0, :cond_0

    .line 164
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 167
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 169
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 172
    .end local v0    # "scale":F
    :goto_0
    return v1

    :cond_1
    float-to-int v1, p1

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;I)I
    .locals 6
    .param p0, "mediaIdStr"    # Ljava/lang/String;
    .param p1, "desiredWidth"    # I

    .prologue
    const/4 v2, 0x0

    .line 1607
    if-gtz p1, :cond_1

    .line 1622
    :cond_0
    :goto_0
    return v2

    .line 1610
    :cond_1
    const/4 v1, 0x0

    .line 1612
    .local v1, "mediaId":Lcom/laiwang/protocol/media/MediaId;
    :try_start_0
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1616
    :goto_1
    if-eqz v1, :cond_0

    .line 1619
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v3

    if-lez v3, :cond_0

    .line 1622
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v2

    mul-int/2addr v2, p1

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    goto :goto_0

    .line 1613
    :catch_0
    move-exception v0

    .line 1614
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 451
    if-nez p0, :cond_0

    .line 452
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 455
    :cond_0
    if-eqz p0, :cond_1

    .line 456
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 457
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 459
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return-void
.end method

.method private static c(Ljava/lang/String;IIII)V
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "gravity"    # I
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I
    .param p4, "duration"    # I

    .prologue
    .line 886
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, p0, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 887
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/Toast;->setGravity(III)V

    .line 888
    sput-object p0, Lcms;->a:Ljava/lang/String;

    .line 890
    :try_start_0
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    :goto_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcms$3;

    invoke-direct {v3}, Lcms$3;-><init>()V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 901
    return-void

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static c()Z
    .locals 3

    .prologue
    .line 1011
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1012
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 1013
    const/4 v1, 0x0

    .line 1016
    :goto_0
    return v1

    :cond_0
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static c(Landroid/app/Activity;)Z
    .locals 6
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1212
    const/4 v1, 0x1

    .line 1213
    .local v1, "finished":Z
    if-eqz p0, :cond_1

    .line 1214
    instance-of v4, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v4, :cond_3

    move-object v0, p0

    .line 1216
    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1217
    .local v0, "ba":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v1, v3

    .line 1226
    .end local v0    # "ba":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    :cond_1
    :goto_0
    if-nez v1, :cond_7

    :goto_1
    return v3

    .restart local v0    # "ba":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    :cond_2
    move v1, v2

    .line 1217
    goto :goto_0

    .line 1219
    .end local v0    # "ba":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_6

    .line 1220
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move v1, v3

    :goto_2
    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_2

    .line 1222
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    goto :goto_0

    :cond_7
    move v3, v2

    .line 1226
    goto :goto_1
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1703
    sget-object v1, Lcms;->b:Ljava/util/regex/Pattern;

    if-nez v1, :cond_0

    .line 1704
    const-string/jumbo v1, "[\u4e00-\u9fa5]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcms;->b:Ljava/util/regex/Pattern;

    .line 1706
    :cond_0
    sget-object v1, Lcms;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1707
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1708
    const/4 v1, 0x1

    .line 1710
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .prologue
    .line 179
    if-nez p0, :cond_0

    .line 180
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 183
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 185
    .local v0, "scale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 188
    .end local v0    # "scale":F
    :goto_0
    return v1

    :cond_1
    float-to-int v1, p1

    goto :goto_0
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 104
    sput-object p0, Lcms;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static d(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 465
    if-nez p0, :cond_0

    .line 466
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 469
    :cond_0
    if-eqz p0, :cond_1

    .line 470
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 471
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 473
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return-void
.end method

.method public static d()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1026
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1027
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 1028
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 1031
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 282
    if-nez p0, :cond_0

    .line 283
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 286
    :cond_0
    const/4 v1, 0x0

    .line 289
    .local v1, "netStatus":Z
    if-eqz p0, :cond_1

    .line 290
    :try_start_0
    const-string/jumbo v3, "connectivity"

    .line 291
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 292
    .local v0, "connectManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 294
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 295
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 302
    .end local v0    # "connectManager":Landroid/net/ConnectivityManager;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    return v1

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static e()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1041
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1042
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_1

    .line 1047
    :cond_0
    :goto_0
    return v1

    .line 1046
    :cond_1
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 1047
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 309
    if-nez p0, :cond_0

    .line 310
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 313
    :cond_0
    const/4 v3, 0x0

    .line 315
    .local v3, "isConnected":Z
    if-eqz p0, :cond_1

    .line 316
    const/4 v1, 0x0

    .line 318
    .local v1, "cm":Landroid/net/ConnectivityManager;
    :try_start_0
    const-string/jumbo v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    if-eqz v1, :cond_1

    .line 324
    :try_start_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 325
    .local v4, "ni":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_1

    .line 326
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 334
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v4    # "ni":Landroid/net/NetworkInfo;
    :cond_1
    :goto_1
    return v3

    .line 319
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v2

    .line 320
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 328
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 329
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static f()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1057
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1058
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_1

    .line 1063
    :cond_0
    :goto_0
    return v1

    .line 1062
    :cond_1
    sget-object v2, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    .line 1063
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 342
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 345
    if-nez p0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v1

    .line 348
    :cond_1
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 349
    .local v0, "telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static g()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1073
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1074
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_1

    .line 1078
    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "HK"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 360
    if-nez p0, :cond_0

    .line 361
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 364
    :cond_0
    if-nez p0, :cond_2

    .line 371
    :cond_1
    :goto_0
    return v1

    .line 367
    :cond_2
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 368
    .local v0, "telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-ne v2, v3, :cond_1

    move v1, v2

    .line 369
    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    if-nez p0, :cond_0

    .line 380
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 383
    :cond_0
    const/4 v1, -0x1

    .line 384
    .local v1, "verCode":I
    if-eqz p0, :cond_1

    .line 386
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 393
    :cond_1
    :goto_0
    return v1

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 389
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static h()Z
    .locals 3

    .prologue
    .line 1088
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1089
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 1090
    const/4 v1, 0x0

    .line 1093
    :goto_0
    return v1

    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 400
    if-nez p0, :cond_0

    .line 401
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 404
    :cond_0
    const-string/jumbo v1, ""

    .line 405
    .local v1, "verName":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 407
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 415
    :cond_1
    :goto_0
    return-object v1

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 410
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static i()Z
    .locals 3

    .prologue
    .line 1103
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1104
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 1105
    const/4 v1, 0x0

    .line 1108
    :goto_0
    return v1

    :cond_0
    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static j()Z
    .locals 3

    .prologue
    .line 1118
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1119
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 1120
    const/4 v1, 0x0

    .line 1123
    :goto_0
    return v1

    :cond_0
    const-string/jumbo v1, "vi"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 522
    if-nez p0, :cond_0

    .line 523
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 525
    :cond_0
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 526
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v2, :cond_1

    move v3, v4

    .line 538
    :goto_0
    return v3

    .line 530
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v5, "isWifiApEnabled"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 531
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 532
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 533
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1
    move v3, v4

    .line 538
    goto :goto_0

    .line 535
    :catch_1
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static k()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1131
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1132
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_1

    .line 1137
    :cond_0
    :goto_0
    return v1

    .line 1136
    :cond_1
    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 1137
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 545
    if-nez p0, :cond_0

    .line 546
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 548
    :cond_0
    if-eqz p0, :cond_2

    .line 549
    const-string/jumbo v4, "connectivity"

    .line 550
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 552
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v0, 0x0

    .line 554
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 555
    :try_start_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 561
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 562
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 567
    .end local v0    # "activeNetInfo":Landroid/net/NetworkInfo;
    .end local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    :goto_1
    return v3

    .line 557
    .restart local v0    # "activeNetInfo":Landroid/net/NetworkInfo;
    .restart local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v2

    .line 558
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 567
    .end local v0    # "activeNetInfo":Landroid/net/NetworkInfo;
    .end local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 628
    if-nez p0, :cond_0

    .line 629
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 631
    :cond_0
    if-eqz p0, :cond_2

    .line 633
    :try_start_0
    const-string/jumbo v4, "connectivity"

    .line 634
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 635
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 636
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 637
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 638
    const-string/jumbo v4, "wifi"

    .line 668
    .end local v0    # "activeNetInfo":Landroid/net/NetworkInfo;
    .end local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    :goto_0
    return-object v4

    .line 640
    .restart local v0    # "activeNetInfo":Landroid/net/NetworkInfo;
    .restart local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_1
    const-string/jumbo v4, "phone"

    .line 641
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 642
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 662
    const-string/jumbo v4, "other"

    goto :goto_0

    .line 648
    :pswitch_0
    :try_start_1
    const-string/jumbo v4, "2g"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 658
    :pswitch_1
    const-string/jumbo v4, "3g"

    goto :goto_0

    .line 660
    :pswitch_2
    const-string/jumbo v4, "4g"

    goto :goto_0

    .line 664
    .end local v0    # "activeNetInfo":Landroid/net/NetworkInfo;
    .end local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v2

    .line 665
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 668
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v4, "other"

    goto :goto_0

    .line 642
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static l()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1145
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1146
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_1

    .line 1151
    :cond_0
    :goto_0
    return v1

    .line 1150
    :cond_1
    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    .line 1151
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "HK"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 761
    if-nez p0, :cond_0

    .line 762
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 764
    :cond_0
    const/4 v2, 0x0

    .line 765
    .local v2, "netType":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 766
    const-string/jumbo v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 767
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 768
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v3, :cond_1

    .line 769
    const/4 v5, 0x0

    .line 789
    .end local v0    # "connMgr":Landroid/net/ConnectivityManager;
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return-object v5

    .line 772
    .restart local v0    # "connMgr":Landroid/net/ConnectivityManager;
    .restart local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 773
    .local v1, "nType":I
    if-nez v1, :cond_4

    .line 775
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    .line 776
    .local v4, "tmpNetType":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 778
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "cmnet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 779
    const-string/jumbo v2, "cmnet"

    .end local v0    # "connMgr":Landroid/net/ConnectivityManager;
    .end local v1    # "nType":I
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v4    # "tmpNetType":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object v5, v2

    .line 789
    goto :goto_0

    .line 781
    .restart local v0    # "connMgr":Landroid/net/ConnectivityManager;
    .restart local v1    # "nType":I
    .restart local v3    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v4    # "tmpNetType":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "cmwap"

    goto :goto_1

    .line 784
    .end local v4    # "tmpNetType":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    .line 785
    const-string/jumbo v2, "WIFI"

    goto :goto_1
.end method

.method public static m()V
    .locals 2

    .prologue
    .line 1162
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 1163
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1165
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 1166
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1455
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 1457
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 1458
    const-string/jumbo v1, "en_US"

    .line 1461
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 911
    if-nez p0, :cond_0

    .line 912
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 915
    :cond_0
    const/4 v1, 0x0

    .line 916
    .local v1, "imsi":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 917
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 919
    .local v2, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_1

    .line 921
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 927
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 928
    invoke-static {p0}, Lcms;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 932
    .end local v2    # "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    :cond_2
    return-object v1

    .line 922
    .restart local v2    # "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 923
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 937
    sget-object v3, Lcms;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 938
    sget-object v1, Lcms;->c:Ljava/lang/String;

    .line 961
    :goto_0
    return-object v1

    .line 940
    :cond_0
    if-nez p0, :cond_1

    .line 941
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 944
    :cond_1
    const/4 v1, 0x0

    .line 945
    .local v1, "imei":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 946
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 947
    .local v2, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_2

    .line 949
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 956
    .end local v2    # "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 957
    const-string/jumbo v1, "imei"

    goto :goto_0

    .line 950
    .restart local v2    # "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 951
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 959
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    :cond_3
    sput-object v1, Lcms;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public static o()Z
    .locals 6

    .prologue
    .line 1550
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 1553
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    const-string/jumbo v5, "location"

    .line 1554
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 1556
    .local v2, "locationManager":Landroid/location/LocationManager;
    const-string/jumbo v5, "gps"

    invoke-virtual {v2, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 1558
    .local v1, "gps":Z
    const-string/jumbo v5, "network"

    invoke-virtual {v2, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1560
    .local v3, "network":Z
    if-nez v1, :cond_0

    if-eqz v3, :cond_1

    .line 1561
    :cond_0
    const/4 v5, 0x1

    .line 1567
    .end local v1    # "gps":Z
    .end local v2    # "locationManager":Landroid/location/LocationManager;
    .end local v3    # "network":Z
    :goto_0
    return v5

    .line 1563
    :catch_0
    move-exception v4

    .line 1564
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1567
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static p()Z
    .locals 3

    .prologue
    .line 1594
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1596
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 1597
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1603
    :goto_0
    return v2

    .line 1599
    :catch_0
    move-exception v1

    .line 1600
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1603
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static p(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1202
    if-eqz p0, :cond_0

    .line 1203
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1204
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1207
    :goto_0
    return v0

    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static q()Z
    .locals 3

    .prologue
    .line 1626
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "isFirstTime"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static q(Landroid/content/Context;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1484
    if-nez p0, :cond_1

    .line 1526
    :cond_0
    :goto_0
    return v11

    .line 1489
    :cond_1
    :try_start_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x10

    if-lt v9, v12, :cond_2

    .line 1491
    const-string/jumbo v9, "keyguard"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 1492
    .local v2, "km":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v9

    if-eqz v9, :cond_0

    move v11, v10

    goto :goto_0

    .line 1497
    .end local v2    # "km":Landroid/app/KeyguardManager;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1498
    .local v0, "cr":Landroid/content/ContentResolver;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x8

    if-ge v9, v12, :cond_6

    .line 1499
    const-string/jumbo v9, "lock_pattern_autolock"

    invoke-static {v0, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v9

    if-ne v9, v10, :cond_5

    move v7, v10

    .line 1504
    .local v7, "patternLocked":Z
    :goto_1
    const/4 v8, 0x0

    .line 1505
    .local v8, "pwLocked":Z
    const-string/jumbo v9, "com.android.internal.widget.LockPatternUtils"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 1506
    .local v5, "lockUtilsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_3

    .line 1507
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/content/Context;

    aput-object v13, v9, v12

    invoke-virtual {v5, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p0, v12, v13

    invoke-virtual {v9, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1508
    .local v4, "lockUtils":Ljava/lang/Object;
    const-string/jumbo v9, "getActivePasswordQuality"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v5, v9, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1510
    .local v6, "method":Ljava/lang/reflect/Method;
    if-eqz v6, :cond_3

    .line 1511
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1512
    .local v3, "lockProtectionLevel":I
    const/high16 v9, 0x20000

    if-lt v3, v9, :cond_3

    .line 1513
    const/4 v8, 0x1

    .line 1517
    .end local v3    # "lockProtectionLevel":I
    .end local v4    # "lockUtils":Ljava/lang/Object;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :cond_3
    if-nez v7, :cond_4

    if-eqz v8, :cond_0

    :cond_4
    move v11, v10

    goto :goto_0

    .end local v5    # "lockUtilsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "patternLocked":Z
    .end local v8    # "pwLocked":Z
    :cond_5
    move v7, v11

    .line 1499
    goto :goto_1

    .line 1501
    :cond_6
    const-string/jumbo v9, "lock_pattern_autolock"

    invoke-static {v0, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-ne v9, v10, :cond_7

    move v7, v10

    .restart local v7    # "patternLocked":Z
    :goto_2
    goto :goto_1

    .end local v7    # "patternLocked":Z
    :cond_7
    move v7, v11

    goto :goto_2

    .line 1520
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    .line 1521
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1522
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v1

    .line 1523
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static r()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1630
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "isFirstTime"

    aput-object v3, v1, v2

    .line 1631
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1630
    invoke-static {v0, v1, v4}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static r(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 1537
    :try_start_0
    new-instance v4, Landroid/content/ContextWrapper;

    invoke-direct {v4, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v2

    .line 1538
    .local v2, "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    invoke-virtual {v2}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getRootDetectComp()Lcom/taobao/wireless/security/sdk/rootdetect/IRootDetectComponent;

    move-result-object v0

    .line 1539
    .local v0, "comp":Lcom/taobao/wireless/security/sdk/rootdetect/IRootDetectComponent;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/taobao/wireless/security/sdk/rootdetect/IRootDetectComponent;->isRoot()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 1543
    .end local v0    # "comp":Lcom/taobao/wireless/security/sdk/rootdetect/IRootDetectComponent;
    .end local v2    # "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    :cond_0
    :goto_0
    return v3

    .line 1540
    :catch_0
    move-exception v1

    .line 1541
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static s()V
    .locals 3

    .prologue
    .line 1635
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "isFirstTime"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1636
    return-void
.end method

.method public static s(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 1718
    :try_start_0
    const-string/jumbo v6, "activity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1719
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const v6, 0x7fffffff

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 1720
    .local v4, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1721
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1722
    .local v1, "foregroundTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v1, :cond_0

    iget-object v6, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    .line 1723
    iget-object v6, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1724
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1725
    .local v2, "myPackageName":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1733
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "foregroundTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2    # "myPackageName":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    :goto_0
    return v5

    .line 1731
    :catch_0
    move-exception v6

    const-string/jumbo v6, "dingtalkbase"

    const-class v7, Lcms;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Exception isAppForeground"

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static t()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1639
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "isFirstTime"

    aput-object v2, v1, v6

    const/4 v2, 0x1

    .line 1640
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1639
    invoke-static {v0, v1, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1641
    return-void
.end method

.method public static u()J
    .locals 4

    .prologue
    .line 1644
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v0

    .line 1645
    .local v0, "lwpTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .end local v0    # "lwpTime":J
    :goto_0
    return-wide v0

    .restart local v0    # "lwpTime":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method
