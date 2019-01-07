.class public final Lrg$2;
.super Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;
.source "AlertShowUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJ)V
    .locals 1

    .prologue
    .line 67
    iput-object p1, p0, Lrg$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lrg$2;->b:Ljava/lang/String;

    iput-wide p3, p0, Lrg$2;->c:J

    iput-wide p5, p0, Lrg$2;->d:J

    iput-wide p7, p0, Lrg$2;->e:J

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    .locals 17
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cachedPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .prologue
    .line 75
    move-object/from16 v0, p2

    instance-of v2, v0, Lcrn;

    if-nez v2, :cond_0

    .line 76
    new-instance p2, Lcrn;

    .end local p2    # "cachedPopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcrn;-><init>(Landroid/app/Activity;)V

    .restart local p2    # "cachedPopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    :cond_0
    move-object/from16 v11, p2

    .line 78
    check-cast v11, Lcrn;

    move-object/from16 v0, p0

    iget-object v2, v0, Lrg$2;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lrg$2;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lrg$2;->c:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lrg$2;->d:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lrg$2;->e:J

    .line 1024
    if-nez p1, :cond_1

    .line 1025
    const/4 v2, 0x0

    .line 78
    :goto_0
    invoke-virtual {v11, v2}, Lcrn;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;)V

    .line 81
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v10, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "8"

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v2, "isFloat"

    const-string/jumbo v3, "0"

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v2, "ding_bluepop_show"

    invoke-static {v2, v10}, Lcps;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 86
    return-object p2

    .line 1028
    .end local v10    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    new-instance v12, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;

    invoke-direct {v12}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;-><init>()V

    .line 1041
    new-instance v13, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;

    invoke-direct {v13}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;-><init>()V

    .line 1042
    invoke-static {v13}, Lrm;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v14

    .line 2032
    iput-object v14, v12, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->a:Lcrm;

    .line 1043
    sget v14, Laxo$i;->icon_cmail:I

    .line 2075
    iput v14, v13, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->b:I

    .line 1044
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v14

    invoke-virtual {v14}, Lcid;->c()Landroid/app/Application;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Laxo$c;->ui_common_warming_text_color:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 2088
    iput v14, v13, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->c:I

    .line 1045
    new-instance v14, Landroid/text/SpannableString;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v15

    invoke-virtual {v15}, Lcid;->c()Landroid/app/Application;

    move-result-object v15

    sget v16, Laxo$i;->dt_alimei_alert_title:I

    invoke-virtual/range {v15 .. v16}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2096
    iput-object v14, v13, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->d:Landroid/text/SpannableString;

    .line 1046
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v14

    invoke-virtual {v14}, Lcid;->c()Landroid/app/Application;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Laxo$c;->ui_common_warming_text_color:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 2104
    iput v14, v13, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->e:I

    .line 3056
    if-nez p1, :cond_2

    .line 5078
    :goto_1
    if-nez p1, :cond_5

    :goto_2
    move-object v2, v12

    .line 1034
    goto :goto_0

    .line 3059
    :cond_2
    new-instance v13, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;

    invoke-direct {v13}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;-><init>()V

    .line 3060
    invoke-static {v13}, Lrm;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v14

    .line 4040
    iput-object v14, v12, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->b:Lcrm;

    .line 3061
    new-instance v14, Landroid/text/SpannableString;

    if-nez v2, :cond_3

    const-string/jumbo v2, ""

    :cond_3
    invoke-direct {v14, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4136
    iput-object v14, v13, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 3062
    if-eqz v3, :cond_4

    .line 3063
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4144
    iput-object v2, v13, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->c:Landroid/text/SpannableString;

    .line 3065
    :cond_4
    new-instance v2, Lrm$1;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lrm$1;-><init>(Landroid/app/Activity;JJJ)V

    .line 4160
    iput-object v2, v13, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    goto :goto_1

    .line 5081
    :cond_5
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;-><init>()V

    .line 5082
    invoke-static {v2}, Lrm;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v3

    .line 6048
    iput-object v3, v12, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->c:Lcrm;

    .line 5083
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6173
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;->a:Ljava/util/List;

    .line 5086
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 5087
    new-instance v13, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    invoke-direct {v13}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;-><init>()V

    .line 5088
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5089
    new-instance v3, Landroid/text/SpannableString;

    sget v14, Laxo$i;->dt_calendar_alert_view_detail:I

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6196
    iput-object v3, v13, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 5090
    new-instance v2, Lrm$2;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lrm$2;-><init>(Landroid/app/Activity;JJJ)V

    .line 6204
    iput-object v2, v13, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    goto :goto_2
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)V
    .locals 0
    .param p1, "ddPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 94
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)Z
    .locals 1
    .param p1, "popWindow"    # Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method
