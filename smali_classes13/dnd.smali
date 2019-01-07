.class public final Ldnd;
.super Ljava/lang/Object;
.source "MdInstantRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldnd$a;
    }
.end annotation


# static fields
.field private static final b:I

.field private static final c:I


# instance fields
.field private final a:Ljava/lang/String;

.field private d:Ldng;

.field private e:Ldxc;

.field private f:Landroid/widget/LinearLayout;

.field private g:Ldnw;

.field private h:Lldm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget v0, Lctk$f;->icon:I

    sput v0, Ldnd;->b:I

    .line 39
    sget v0, Lctk$f;->ll_markdown_parent:I

    sput v0, Ldnd;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout;Ldxc;Ldng;Ldnw;Lldm;)V
    .locals 1
    .param p1, "parentLayout"    # Landroid/widget/LinearLayout;
    .param p2, "threadExecutor"    # Ldxc;
    .param p3, "cache"    # Ldng;
    .param p4, "layoutRender"    # Ldnw;
    .param p5, "parser"    # Lldm;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldnd;->a:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Ldnd;->f:Landroid/widget/LinearLayout;

    .line 49
    iput-object p2, p0, Ldnd;->e:Ldxc;

    .line 50
    iput-object p3, p0, Ldnd;->d:Ldng;

    .line 51
    iput-object p4, p0, Ldnd;->g:Ldnw;

    .line 52
    iput-object p5, p0, Ldnd;->h:Lldm;

    .line 53
    return-void
.end method

.method static synthetic a(Ldnd;)Ldxc;
    .locals 1
    .param p0, "x0"    # Ldnd;

    .prologue
    .line 35
    iget-object v0, p0, Ldnd;->e:Ldxc;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)Ljava/lang/String;
    .locals 8
    .param p1, "llMarkdownParent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 208
    const-string/jumbo v1, ""

    .line 209
    .local v1, "result":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 210
    :cond_0
    const-string/jumbo v3, ""

    .line 233
    :goto_0
    return-object v3

    .line 213
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 215
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 219
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 220
    new-array v3, v7, [Ljava/lang/String;

    aput-object v1, v3, v5

    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "view":Landroid/view/View;
    invoke-direct {p0, v2}, Ldnd;->a(Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 224
    .restart local v2    # "view":Landroid/view/View;
    :cond_3
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    move-object v3, v2

    .line 228
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 229
    new-array v3, v7, [Ljava/lang/String;

    aput-object v1, v3, v5

    check-cast v2, Landroid/widget/TextView;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v3, v1

    .line 233
    goto :goto_0
.end method

.method private a(JLcom/alibaba/wukong/im/Message;JLldd;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;)V
    .locals 19
    .param p1, "messsageId"    # J
    .param p3, "authMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "renderVersion"    # J
    .param p6, "node"    # Lldd;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "isLeft"    # Z
    .param p11, "renderStyle"    # Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/wukong/im/Message;",
            "J",
            "Lldd;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;",
            "Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    .line 3072
    .local p9, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .local p10, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Ldnd;->f:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Ldnd;->f:Landroid/widget/LinearLayout;

    sget v5, Ldnd;->c:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Ldnd;->f:Landroid/widget/LinearLayout;

    sget v5, Ldnd;->c:I

    .line 3073
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_2

    .line 3074
    move-object/from16 v0, p0

    iget-object v4, v0, Ldnd;->f:Landroid/widget/LinearLayout;

    sget v5, Ldnd;->c:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, p4, v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    .line 146
    :goto_0
    if-nez v4, :cond_3

    .line 201
    :cond_0
    :goto_1
    return-void

    .line 3074
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 3076
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 149
    :cond_3
    if-eqz p6, :cond_0

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 153
    .local v14, "startRender":J
    const/16 v17, 0x0

    .line 154
    .local v17, "view":Landroid/view/View;
    if-nez p7, :cond_4

    .line 155
    const-string/jumbo p7, ""

    .line 162
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Ldnd;->g:Ldnw;

    move-object/from16 v0, p0

    iget-object v12, v0, Ldnd;->d:Ldng;

    move-object/from16 v5, p6

    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move/from16 v11, p8

    invoke-virtual/range {v4 .. v12}, Ldnw;->a(Lldd;JLcom/alibaba/wukong/im/Message;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;ZLdng;)Landroid/widget/LinearLayout;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 168
    :goto_2
    if-nez v17, :cond_5

    .line 169
    move-object/from16 v0, p7

    move-object/from16 v1, p9

    invoke-static {v0, v1}, Ldoh;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldog;->a(Ljava/lang/String;)Lldd;

    move-result-object p6

    .line 170
    if-eqz p6, :cond_0

    .line 173
    move-object/from16 v0, p0

    iget-object v4, v0, Ldnd;->d:Ldng;

    move-wide/from16 v0, p1

    move-object/from16 v2, p6

    invoke-virtual {v4, v0, v1, v2}, Ldng;->a(JLldd;)V

    .line 175
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Ldnd;->g:Ldnw;

    move-object/from16 v0, p0

    iget-object v12, v0, Ldnd;->d:Ldng;

    move-object/from16 v5, p6

    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move/from16 v11, p8

    invoke-virtual/range {v4 .. v12}, Ldnw;->a(Lldd;JLcom/alibaba/wukong/im/Message;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;ZLdng;)Landroid/widget/LinearLayout;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    .line 183
    :cond_5
    :goto_3
    if-nez v17, :cond_7

    .line 184
    if-nez p11, :cond_6

    .line 185
    sget-object p11, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->NORMAL:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    .line 187
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Ldnd;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->NORMAL:Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    invoke-virtual/range {p11 .. p11}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->getTextColorProvider()Ldnx;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ldnt;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;Ldnx;)Landroid/widget/TextView;

    move-result-object v13

    .line 188
    .local v13, "textView":Landroid/widget/TextView;
    move-object/from16 v0, p7

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    move-object/from16 v17, v13

    .line 192
    .end local v13    # "textView":Landroid/widget/TextView;
    :cond_7
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "render messageId:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ",content:"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p7, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "\n consumes:"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v14

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 192
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    .line 195
    if-eqz v17, :cond_0

    .line 196
    move-object/from16 v0, p0

    iget-object v4, v0, Ldnd;->f:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 163
    :catch_0
    move-exception v16

    .line 164
    .local v16, "throwable":Ljava/lang/Throwable;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V

    .line 165
    const-string/jumbo v4, "Markdown-Parse"

    const/4 v5, 0x0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "markdown instant-parse render error,content"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 166
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, ",error:"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 165
    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 176
    .end local v16    # "throwable":Ljava/lang/Throwable;
    :catch_1
    move-exception v16

    .line 177
    .restart local v16    # "throwable":Ljava/lang/Throwable;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    const-string/jumbo v4, "Markdown-Parse"

    const/4 v5, 0x0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "markdown instant-parse text default error,content"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 179
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, ",error:"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 178
    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method static synthetic a(Ldnd;JLcom/alibaba/wukong/im/Message;JLjava/lang/String;ZLjava/util/Map;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;)V
    .locals 17
    .param p0, "x0"    # Ldnd;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "x3"    # J
    .param p6, "x4"    # Ljava/lang/String;
    .param p7, "x5"    # Z
    .param p8, "x6"    # Ljava/util/Map;
    .param p9, "x7"    # Ljava/util/Map;
    .param p10, "x8"    # Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    .prologue
    .line 35
    .line 3124
    move-object/from16 v0, p0

    iget-object v2, v0, Ldnd;->d:Ldng;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ldng;->a(J)Lldd;

    move-result-object v9

    .line 3125
    if-nez v9, :cond_1

    .line 3126
    move-object/from16 v0, p0

    iget-object v2, v0, Ldnd;->h:Lldm;

    move-object/from16 v0, p0

    iget-object v3, v0, Ldnd;->a:Ljava/lang/String;

    move-object/from16 v0, p6

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Ldoh;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-static {v2, v3, v0, v1, v4}, Ldok;->a(Lldm;Ljava/lang/String;JLjava/lang/String;)Lldd;

    move-result-object v9

    .line 3127
    if-eqz v9, :cond_0

    .line 3128
    move-object/from16 v0, p0

    iget-object v2, v0, Ldnd;->d:Ldng;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v9}, Ldng;->a(JLldd;)V

    .line 3137
    :cond_0
    :goto_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v15

    new-instance v2, Ldnd$2;

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    invoke-direct/range {v2 .. v14}, Ldnd$2;-><init>(Ldnd;JLcom/alibaba/wukong/im/Message;JLldd;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;)V

    invoke-virtual {v15, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 35
    return-void

    .line 3131
    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "get node from background parser, messageId:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ",text:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p6, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Ldnd;JLcom/alibaba/wukong/im/Message;JLldd;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;)V
    .locals 0
    .param p0, "x0"    # Ldnd;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "x3"    # J
    .param p6, "x4"    # Lldd;
    .param p7, "x5"    # Ljava/lang/String;
    .param p8, "x6"    # Z
    .param p9, "x7"    # Ljava/util/Map;
    .param p10, "x8"    # Ljava/util/Map;
    .param p11, "x9"    # Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    .prologue
    .line 35
    invoke-direct/range {p0 .. p11}, Ldnd;->a(JLcom/alibaba/wukong/im/Message;JLldd;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Ldnd;->f:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Ldnd;->a(Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLcom/alibaba/wukong/im/Message;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;)V
    .locals 23
    .param p1, "messageId"    # J
    .param p3, "authMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "isLeft"    # Z
    .param p8, "renderStyle"    # Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;",
            "Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    .line 1056
    .local p6, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .local p7, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Ldnd;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1057
    move-object/from16 v0, p0

    iget-object v2, v0, Ldnd;->f:Landroid/widget/LinearLayout;

    sget v3, Ldnd;->c:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 1058
    move-object/from16 v0, p0

    iget-object v2, v0, Ldnd;->f:Landroid/widget/LinearLayout;

    sget v3, Ldnd;->b:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldnd$a;

    .line 1059
    if-eqz v2, :cond_1

    .line 1246
    iget-boolean v3, v2, Ldnd$a;->b:Z

    if-nez v3, :cond_0

    .line 1247
    iget-object v3, v2, Ldnd$a;->a:Lcom/alibaba/doraemon/threadpool/Thread;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->cancel(Z)V

    .line 1248
    const/4 v3, 0x1

    iput-boolean v3, v2, Ldnd$a;->b:Z

    .line 1061
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ldnd;->f:Landroid/widget/LinearLayout;

    sget v3, Ldnd;->b:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 102
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2066
    .local v6, "renderVersion":J
    move-object/from16 v0, p0

    iget-object v2, v0, Ldnd;->f:Landroid/widget/LinearLayout;

    sget v3, Ldnd;->c:I

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 2067
    new-instance v2, Ldnd$a;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Ldnd$a;-><init>(Ldnd;)V

    .line 2068
    move-object/from16 v0, p0

    iget-object v3, v0, Ldnd;->f:Landroid/widget/LinearLayout;

    sget v4, Ldnd;->b:I

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Ldnd;->d:Ldng;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ldng;->a(J)Lldd;

    move-result-object v8

    .line 105
    .local v8, "node":Lldd;
    if-eqz v8, :cond_3

    .line 106
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "md cache hit, id:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ",text:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    .line 107
    invoke-direct/range {v2 .. v13}, Ldnd;->a(JLcom/alibaba/wukong/im/Message;JLldd;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;)V

    .line 120
    :cond_2
    :goto_0
    return-void

    .line 109
    :cond_3
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "md cache not hit, id:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ",text:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    .line 2080
    move-object/from16 v0, p0

    iget-object v2, v0, Ldnd;->f:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Ldnd;->f:Landroid/widget/LinearLayout;

    sget v3, Ldnd;->b:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2081
    move-object/from16 v0, p0

    iget-object v2, v0, Ldnd;->f:Landroid/widget/LinearLayout;

    sget v3, Ldnd;->b:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldnd$a;

    move-object/from16 v22, v2

    .line 111
    .local v22, "taskInfo":Ldnd$a;
    :goto_1
    if-eqz v22, :cond_2

    .line 112
    new-instance v10, Ldnd$1;

    move-object/from16 v11, p0

    move-wide/from16 v12, p1

    move-object/from16 v14, p3

    move-wide v15, v6

    move-object/from16 v17, p4

    move/from16 v18, p5

    move-object/from16 v19, p6

    move-object/from16 v20, p7

    move-object/from16 v21, p8

    invoke-direct/range {v10 .. v21}, Ldnd$1;-><init>(Ldnd;JLcom/alibaba/wukong/im/Message;JLjava/lang/String;ZLjava/util/Map;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;)V

    .line 2253
    move-object/from16 v0, v22

    iget-boolean v2, v0, Ldnd$a;->b:Z

    if-nez v2, :cond_2

    move-object/from16 v0, v22

    iget-boolean v2, v0, Ldnd$a;->c:Z

    if-nez v2, :cond_2

    .line 2254
    const/4 v2, 0x1

    move-object/from16 v0, v22

    iput-boolean v2, v0, Ldnd$a;->c:Z

    .line 2255
    move-object/from16 v0, v22

    iget-object v2, v0, Ldnd$a;->a:Lcom/alibaba/doraemon/threadpool/Thread;

    invoke-interface {v2, v10}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2083
    .end local v22    # "taskInfo":Ldnd$a;
    :cond_4
    const/16 v22, 0x0

    goto :goto_1
.end method
