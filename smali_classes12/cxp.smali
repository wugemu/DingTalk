.class public final Lcxp;
.super Lcts;
.source "SystemMarkdownExMsgViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcxp$a;
    }
.end annotation


# instance fields
.field private S:Lcxp$a;

.field private a:Landroid/widget/LinearLayout;

.field private b:Ldnd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcts;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .param p1, "conversationType"    # I

    .prologue
    .line 69
    return-void
.end method

.method public final a(J)V
    .locals 0
    .param p1, "conversationTag"    # J

    .prologue
    .line 74
    return-void
.end method

.method public final a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Message;I)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "currentUid"    # J
    .param p4, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p5, "position"    # I

    .prologue
    .line 37
    invoke-super/range {p0 .. p5}, Lcts;->a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Message;I)V

    .line 38
    if-nez p4, :cond_1

    .line 2108
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    instance-of v0, p1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v0, :cond_9

    .line 42
    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;

    if-eqz v0, :cond_9

    .line 44
    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v10

    check-cast v10, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;

    .local v10, "content":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;
    move-object v11, p1

    .line 45
    check-cast v11, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 46
    .local v11, "msgBaseActivity":Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    iget-object v0, p0, Lcxp;->b:Ldnd;

    if-nez v0, :cond_2

    .line 47
    new-instance v0, Ldnd;

    iget-object v1, p0, Lcxp;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->aa()Ldxc;

    move-result-object v2

    .line 48
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ab()Ldne;

    move-result-object v3

    .line 1093
    iget-object v3, v3, Ldne;->e:Ldng;

    .line 49
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ac()Ldnw;

    move-result-object v4

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ad()Lldm;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ldnd;-><init>(Landroid/widget/LinearLayout;Ldxc;Ldng;Ldnw;Lldm;)V

    iput-object v0, p0, Lcxp;->b:Ldnd;

    .line 51
    :cond_2
    invoke-static/range {p4 .. p4}, Ldok;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "text":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Ldnt;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v9

    .line 53
    .local v9, "renderStyle":Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;
    iget-object v0, p0, Lcxp;->S:Lcxp$a;

    if-nez v0, :cond_3

    .line 54
    new-instance v0, Lcxp$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcxp$a;-><init>(B)V

    iput-object v0, p0, Lcxp;->S:Lcxp$a;

    .line 56
    :cond_3
    iget-object v1, p0, Lcxp;->S:Lcxp$a;

    .line 1128
    iget-object v0, p0, Lcxp;->d:Landroid/app/Activity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcxp;->Q:Lcom/alibaba/wukong/im/Message;

    if-nez v0, :cond_5

    .line 1129
    :cond_4
    const/4 v0, -0x1

    .line 56
    :goto_1
    invoke-static {v1, v0}, Lcxp$a;->a(Lcxp$a;I)V

    .line 57
    iget-object v0, p0, Lcxp;->S:Lcxp$a;

    invoke-virtual {v9, v0}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->setTextColorProvider(Ldnx;)V

    .line 58
    iget-object v1, p0, Lcxp;->b:Ldnd;

    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    const/4 v6, 0x0

    .line 59
    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v10}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;->authMediaParamMap()Ljava/util/Map;

    move-result-object v8

    move-object/from16 v4, p4

    .line 58
    invoke-virtual/range {v1 .. v9}, Ldnd;->a(JLcom/alibaba/wukong/im/Message;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;)V

    .line 2107
    .end local v5    # "text":Ljava/lang/String;
    .end local v9    # "renderStyle":Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;
    .end local v10    # "content":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;
    .end local v11    # "msgBaseActivity":Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    :goto_2
    iget-object v0, p0, Lcxp;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcxp;->Q:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    .line 2110
    iget-object v0, p0, Lcxp;->Q:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-static {v0}, Ldeo;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2113
    iget-object v0, p0, Lcxp;->R:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    if-eqz v0, :cond_0

    .line 2116
    iget-object v0, p0, Lcxp;->R:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    if-eqz v0, :cond_0

    .line 2119
    iget-object v0, p0, Lcxp;->d:Landroid/app/Activity;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 2120
    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x2

    aput v0, v1, v2

    const/4 v2, 0x3

    aput v0, v1, v2

    const/4 v2, 0x4

    aput v0, v1, v2

    const/4 v2, 0x5

    aput v0, v1, v2

    const/4 v2, 0x6

    aput v0, v1, v2

    const/4 v2, 0x7

    aput v0, v1, v2

    .line 2121
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 2122
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 2123
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v2, p0, Lcxp;->R:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    iget v2, v2, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->systemMsgBackgroundColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2124
    iget-object v0, p0, Lcxp;->a:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1131
    .restart local v5    # "text":Ljava/lang/String;
    .restart local v9    # "renderStyle":Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;
    .restart local v10    # "content":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;
    .restart local v11    # "msgBaseActivity":Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    :cond_5
    iget-object v0, p0, Lcxp;->Q:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-static {v0}, Ldeo;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1132
    const/4 v0, -0x1

    goto/16 :goto_1

    .line 1134
    :cond_6
    iget-object v0, p0, Lcxp;->R:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcxp;->R:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    if-nez v0, :cond_8

    .line 1135
    :cond_7
    const/4 v0, -0x1

    goto/16 :goto_1

    .line 1137
    :cond_8
    iget-object v0, p0, Lcxp;->R:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    iget v0, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->systemMsgColor:I

    goto/16 :goto_1

    .line 61
    .end local v5    # "text":Ljava/lang/String;
    .end local v9    # "renderStyle":Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;
    .end local v10    # "content":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;
    .end local v11    # "msgBaseActivity":Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    :cond_9
    iget-object v0, p0, Lcxp;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_2
.end method

.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 88
    sget v0, Lctk$f;->ll_markdown_parent:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcxp;->a:Landroid/widget/LinearLayout;

    .line 89
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lctk$g;->chatting_item_system_markdown:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcxp;->b:Ldnd;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcxp;->b:Ldnd;

    invoke-virtual {v0}, Ldnd;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcxp;->b:Ldnd;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcxp;->b:Ldnd;

    invoke-virtual {v0}, Ldnd;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final l()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method
