.class public Leeu;
.super Lefa;
.source "CalendarHeaderViewHolder.java"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Leeu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leeu;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lefa;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;JLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 25
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "managerCalTabObject"    # Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;
    .param p3, "orgId"    # J
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 69
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Leeu;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 72
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v5

    .line 73
    .local v5, "oaDatasource":Lcom/alibaba/dingtalk/oabase/OAInterface;
    const-wide/16 v8, 0x0

    .line 75
    .local v8, "appId":J
    :try_start_0
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mAppId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v8

    .line 79
    :goto_0
    const/16 v23, 0x0

    .line 80
    .local v23, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v5, :cond_0

    .line 81
    const/4 v10, 0x1

    move-wide/from16 v6, p3

    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(JJI)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v23

    .line 85
    :cond_0
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mAppIcon:Ljava/lang/String;

    .line 86
    .local v12, "appIcon":Ljava/lang/String;
    const/16 v20, 0x0

    .line 87
    .local v20, "link":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mLinkModel:Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;

    if-eqz v6, :cond_1

    .line 88
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mLinkModel:Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;

    iget-object v0, v6, Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;->mLink:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 90
    :cond_1
    const/4 v4, 0x0

    .line 91
    .local v4, "appName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mTextModels:Ljava/util/List;

    if-eqz v6, :cond_2

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mTextModels:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 92
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mTextModels:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;

    .line 93
    .local v22, "managerCalTextObject":Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;->mContent:Ljava/lang/String;

    .line 96
    .end local v22    # "managerCalTextObject":Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;
    :cond_2
    if-eqz v23, :cond_5

    .line 97
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 98
    move-object/from16 v0, v23

    iget-object v12, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->icon:Ljava/lang/String;

    .line 100
    :cond_3
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 101
    invoke-static/range {v23 .. v23}, Legf;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;

    move-result-object v20

    .line 103
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 104
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->name:Ljava/lang/String;

    .line 108
    :cond_5
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 110
    :try_start_1
    invoke-static {v12}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    .line 115
    :goto_1
    const-string/jumbo v6, "IMAGE"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 116
    .local v10, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    move-object/from16 v0, p0

    iget-object v11, v0, Leeu;->c:Landroid/widget/ImageView;

    const/4 v13, 0x0

    const/16 v14, 0x9

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v10 .. v17}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 119
    .end local v10    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Leeu;->d:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mLinkModel:Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;

    if-eqz v6, :cond_7

    .line 122
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mLinkModel:Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;

    iget-object v6, v6, Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;->mTitleObject:Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;

    if-eqz v6, :cond_7

    .line 123
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mLinkModel:Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;

    iget-object v6, v6, Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;->mTitleObject:Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;

    iget-object v0, v6, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;->mContent:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 124
    .local v21, "linkContent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Leeu;->e:Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 126
    move-object/from16 v19, v20

    .line 127
    .local v19, "finalLink":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Leeu;->e:Landroid/widget/TextView;

    new-instance v7, Leeu$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v7, v0, v1, v2}, Leeu$1;-><init>(Leeu;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    .end local v19    # "finalLink":Ljava/lang/String;
    .end local v21    # "linkContent":Ljava/lang/String;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Leeu;->b:Landroid/view/View;

    return-object v6

    .line 111
    :catch_0
    move-exception v18

    .line 112
    .local v18, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual/range {v18 .. v18}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1

    .line 142
    .end local v18    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    .restart local v21    # "linkContent":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Leeu;->e:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .end local v4    # "appName":Ljava/lang/String;
    .end local v12    # "appIcon":Ljava/lang/String;
    .end local v20    # "link":Ljava/lang/String;
    .end local v21    # "linkContent":Ljava/lang/String;
    .end local v23    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :catch_1
    move-exception v6

    goto/16 :goto_0
.end method

.method protected final a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ledz$g;->item_calendar_header:I

    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leeu;->b:Landroid/view/View;

    .line 62
    iget-object v0, p0, Leeu;->b:Landroid/view/View;

    sget v1, Ledz$f;->calendar_header_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Leeu;->c:Landroid/widget/ImageView;

    .line 63
    iget-object v0, p0, Leeu;->b:Landroid/view/View;

    sget v1, Ledz$f;->calendar_header_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leeu;->d:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Leeu;->b:Landroid/view/View;

    sget v1, Ledz$f;->calendar_header_link:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leeu;->e:Landroid/widget/TextView;

    .line 65
    return-void
.end method
