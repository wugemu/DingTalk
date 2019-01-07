.class public abstract Ldab;
.super Lctt;
.source "UserThirdPartyViewHolder.java"


# static fields
.field private static aG:Landroid/text/style/ForegroundColorSpan;

.field private static aH:Landroid/text/style/StyleSpan;

.field private static aI:Landroid/text/style/AbsoluteSizeSpan;


# instance fields
.field private Y:Landroid/view/View;

.field protected Z:Landroid/widget/LinearLayout;

.field private aA:Landroid/view/View;

.field private aB:Landroid/view/View;

.field private aC:Landroid/view/View;

.field private aD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final aE:[I

.field private final aF:[I

.field private aJ:I

.field private final aK:Ljava/lang/String;

.field private final aL:Ljava/lang/String;

.field private aM:Lcom/alibaba/wukong/im/Message;

.field private aN:Landroid/view/View$OnClickListener;

.field public final aa:I

.field protected ab:Lcom/alibaba/doraemon/image/ImageMagician;

.field private ac:Landroid/widget/TextView;

.field private ad:Landroid/widget/TextView;

.field private ae:Landroid/widget/TextView;

.field private af:Landroid/widget/TextView;

.field private ag:Landroid/view/View;

.field private ah:Landroid/view/View;

.field private ai:Landroid/widget/TextView;

.field private aj:[Landroid/widget/TextView;

.field private ak:[Landroid/widget/TextView;

.field private al:Landroid/view/View;

.field private am:Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;

.field private an:Landroid/widget/TextView;

.field private ao:Landroid/view/ViewStub;

.field private ap:Landroid/view/ViewStub;

.field private aq:Landroid/view/ViewStub;

.field private ar:Landroid/view/ViewStub;

.field private as:Landroid/view/View;

.field private at:Landroid/view/View;

.field private au:Landroid/view/View;

.field private av:Landroid/view/View;

.field private aw:Landroid/view/View;

.field private ax:Landroid/widget/TextView;

.field private ay:Landroid/view/View;

.field private az:Lpl/droidsonroids/gif/GifImageView;


# direct methods
.method public constructor <init>(Z)V
    .locals 8
    .param p1, "isTo"    # Z

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    invoke-direct {p0, p1}, Lctt;-><init>(Z)V

    .line 126
    new-array v0, v7, [I

    sget v1, Lctk$f;->item0:I

    aput v1, v0, v3

    sget v1, Lctk$f;->item1:I

    aput v1, v0, v4

    sget v1, Lctk$f;->item2:I

    aput v1, v0, v5

    sget v1, Lctk$f;->item3:I

    aput v1, v0, v6

    const/4 v1, 0x4

    sget v2, Lctk$f;->item4:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lctk$f;->item5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lctk$f;->item6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lctk$f;->item7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lctk$f;->item8:I

    aput v2, v0, v1

    iput-object v0, p0, Ldab;->aE:[I

    .line 128
    new-array v0, v6, [I

    sget v1, Lctk$f;->action0:I

    aput v1, v0, v3

    sget v1, Lctk$f;->action1:I

    aput v1, v0, v4

    sget v1, Lctk$f;->action2:I

    aput v1, v0, v5

    iput-object v0, p0, Ldab;->aF:[I

    .line 129
    iput v7, p0, Ldab;->aa:I

    .line 135
    const-string/jumbo v0, "btn"

    iput-object v0, p0, Ldab;->aK:Ljava/lang/String;

    .line 136
    const-string/jumbo v0, "txt"

    iput-object v0, p0, Ldab;->aL:Ljava/lang/String;

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Ldab;->ab:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 731
    new-instance v0, Ldab$6;

    invoke-direct {v0, p0}, Ldab$6;-><init>(Ldab;)V

    iput-object v0, p0, Ldab;->aN:Landroid/view/View$OnClickListener;

    .line 145
    return-void
.end method

.method static synthetic a(Ldab;)Lcom/alibaba/wukong/im/Message;
    .locals 1
    .param p0, "x0"    # Ldab;

    .prologue
    .line 91
    iget-object v0, p0, Ldab;->aM:Lcom/alibaba/wukong/im/Message;

    return-object v0
.end method

.method private a(JLandroid/app/Activity;[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;)V
    .locals 15
    .param p1, "mid"    # J
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "oaActionDos"    # [Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    .prologue
    .line 545
    if-nez p4, :cond_0

    const/4 v2, 0x0

    .line 546
    .local v2, "actionSize":I
    :goto_0
    iget-object v3, p0, Ldab;->ak:[Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Ldab;->ak:[Landroid/widget/TextView;

    array-length v12, v3

    .line 547
    .local v12, "viewSize":I
    :goto_1
    iget-object v3, p0, Ldab;->ak:[Landroid/widget/TextView;

    if-eqz v3, :cond_8

    .line 548
    invoke-static/range {p3 .. p3}, Ldkg;->a(Landroid/content/Context;)Ldkg;

    move-result-object v3

    iget-object v3, v3, Ldkg;->a:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 549
    invoke-static/range {p3 .. p3}, Ldkg;->a(Landroid/content/Context;)Ldkg;

    move-result-object v3

    iget-object v3, v3, Ldkg;->a:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 550
    iget-object v3, p0, Ldab;->al:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 551
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v12, :cond_8

    .line 552
    iget-object v3, p0, Ldab;->ak:[Landroid/widget/TextView;

    aget-object v3, v3, v11

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 551
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 545
    .end local v2    # "actionSize":I
    .end local v11    # "i":I
    .end local v12    # "viewSize":I
    :cond_0
    move-object/from16 v0, p4

    array-length v2, v0

    goto :goto_0

    .line 546
    .restart local v2    # "actionSize":I
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 555
    .restart local v12    # "viewSize":I
    :cond_2
    iget-object v3, p0, Ldab;->al:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 556
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    if-ge v11, v12, :cond_8

    .line 557
    if-ge v11, v2, :cond_7

    .line 558
    iget-object v3, p0, Ldab;->ak:[Landroid/widget/TextView;

    aget-object v3, v3, v11

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 559
    iget-object v3, p0, Ldab;->ak:[Landroid/widget/TextView;

    aget-object v3, v3, v11

    aget-object v4, p4, v11

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    const-string/jumbo v3, "btn"

    aget-object v4, p4, v11

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 562
    move v9, v11

    .line 563
    .local v9, "finalI":I
    iget-object v3, p0, Ldab;->ak:[Landroid/widget/TextView;

    aget-object v3, v3, v11

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 564
    iget-object v3, p0, Ldab;->ak:[Landroid/widget/TextView;

    aget-object v3, v3, v11

    sget v4, Lctk$e;->rounder_corners:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 565
    iget-object v3, p0, Ldab;->ak:[Landroid/widget/TextView;

    aget-object v3, v3, v11

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lctk$c;->text_color_white:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 566
    iget-object v3, p0, Ldab;->ak:[Landroid/widget/TextView;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/GradientDrawable;

    .line 567
    .local v10, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    aget-object v3, p4, v11

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;->bg:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 568
    aget-object v3, p4, v11

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;->bg:Ljava/lang/String;

    .line 3043
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcpz;->a(Ljava/lang/String;I)I

    move-result v3

    .line 568
    invoke-virtual {v10, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 573
    :goto_4
    iget-object v3, p0, Ldab;->ak:[Landroid/widget/TextView;

    aget-object v13, v3, v11

    new-instance v3, Ldab$5;

    move-object v4, p0

    move-object/from16 v5, p3

    move-wide/from16 v6, p1

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Ldab$5;-><init>(Ldab;Landroid/app/Activity;J[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;I)V

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    .end local v9    # "finalI":I
    .end local v10    # "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_3
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 570
    .restart local v9    # "finalI":I
    .restart local v10    # "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_4
    const/high16 v3, -0x1000000

    invoke-virtual {v10, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_4

    .line 590
    .end local v9    # "finalI":I
    .end local v10    # "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_5
    const-string/jumbo v3, "txt"

    aget-object v4, p4, v11

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 591
    iget-object v3, p0, Ldab;->ak:[Landroid/widget/TextView;

    aget-object v3, v3, v11

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    iget-object v3, p0, Ldab;->ak:[Landroid/widget/TextView;

    aget-object v3, v3, v11

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 593
    const/16 v3, 0x10

    invoke-static {v3}, Lcms;->b(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 594
    iget-object v3, p0, Ldab;->ak:[Landroid/widget/TextView;

    aget-object v3, v3, v11

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 598
    :goto_6
    iget-object v3, p0, Ldab;->ak:[Landroid/widget/TextView;

    aget-object v3, v3, v11

    aget-object v4, p4, v11

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;->bg:Ljava/lang/String;

    .line 4043
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcpz;->a(Ljava/lang/String;I)I

    move-result v4

    .line 598
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 596
    :cond_6
    iget-object v3, p0, Ldab;->ak:[Landroid/widget/TextView;

    aget-object v3, v3, v11

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 601
    :cond_7
    iget-object v3, p0, Ldab;->ak:[Landroid/widget/TextView;

    aget-object v3, v3, v11

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 606
    .end local v11    # "i":I
    :cond_8
    return-void
.end method

.method private a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "oaActionDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 715
    if-nez p1, :cond_0

    .line 729
    :goto_0
    return-void

    .line 718
    :cond_0
    if-nez p2, :cond_1

    .line 719
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 720
    sget v0, Lctk$f;->tag_url:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 721
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 724
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 725
    sget v0, Lctk$f;->tag_url:I

    iget-object v1, p2, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;->actionParams:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 726
    iget-object v0, p2, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v0, p0, Ldab;->aN:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic a(Ldab;J)V
    .locals 7
    .param p0, "x0"    # Ldab;
    .param p1, "x1"    # J

    .prologue
    .line 91
    .line 6805
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v2

    const/4 v6, 0x0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(JJZ)Ljava/lang/String;

    move-result-object v2

    .line 6806
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Ldab$8;

    invoke-direct {v1, p0}, Ldab$8;-><init>(Ldab;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Ldab;->d:Landroid/app/Activity;

    invoke-static {v1, v3, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method static synthetic a(Ldab;JLjava/lang/String;)V
    .locals 9
    .param p0, "x0"    # Ldab;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    const/high16 v8, 0x41900000    # 18.0f

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 91
    .line 5759
    iget-object v0, p0, Ldab;->d:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 5764
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_0

    .line 5765
    iget-object v0, p0, Ldab;->d:Landroid/app/Activity;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    mul-int/lit8 v1, v0, 0x4

    .line 5766
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 5767
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x8

    if-le v0, v3, :cond_2

    const/16 v0, 0x8

    .line 5768
    :goto_0
    invoke-virtual {p3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5769
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 5770
    new-array v0, v7, [Ljava/lang/String;

    invoke-virtual {p3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "..."

    aput-object v1, v0, v6

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 5774
    .end local p3    # "x2":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcok;->a()Lcok;

    .line 5775
    new-array v0, v4, [Landroid/text/SpannableString;

    .line 5776
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    sget v3, Lctk$i;->dt_im_checkin_thanks_text1:I

    invoke-static {v3}, Ldab;->b(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, "[\u5fae\u7b11]"

    aput-object v3, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Ldpu;->a(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableString;

    move-result-object v1

    aput-object v1, v0, v5

    .line 5777
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    sget v3, Lctk$i;->dt_im_checkin_thanks_text2:I

    invoke-static {v3}, Ldab;->b(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, "[\u62b1\u62f3]"

    aput-object v3, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Ldpu;->a(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableString;

    move-result-object v1

    aput-object v1, v0, v6

    .line 5778
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    sget v3, Lctk$i;->dt_im_checkin_thanks_text3:I

    invoke-static {v3}, Ldab;->b(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, "[\u53ef\u7231]"

    aput-object v3, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Ldpu;->a(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableString;

    move-result-object v1

    aput-object v1, v0, v7

    .line 5779
    const/4 v1, 0x3

    sget v2, Lctk$i;->dt_im_checkin_thanks_customize:I

    invoke-static {v2}, Ldab;->b(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p3, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v2

    aput-object v2, v0, v1

    .line 5780
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Ldab;->d:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lctk$i;->dt_im_checkin_thanks_title:I

    invoke-static {v2}, Ldab;->b(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p3, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ldab$7;

    invoke-direct {v2, p0, v0, p1, p2}, Ldab$7;-><init>(Ldab;[Landroid/text/SpannableString;J)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 5800
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 91
    :cond_1
    return-void

    .line 5767
    .restart local p3    # "x2":Ljava/lang/String;
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0
.end method

.method static synthetic a(Ldab;Landroid/text/SpannableString;J)V
    .locals 8
    .param p0, "x0"    # Ldab;
    .param p1, "x1"    # Landroid/text/SpannableString;
    .param p2, "x2"    # J

    .prologue
    .line 91
    .line 5836
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v2

    const/4 v6, 0x0

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(JJZ)Ljava/lang/String;

    move-result-object v2

    .line 5837
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Ldab$9;

    invoke-direct {v1, p0, p1}, Ldab$9;-><init>(Ldab;Landroid/text/SpannableString;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Ldab;->d:Landroid/app/Activity;

    invoke-static {v1, v3, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method static synthetic a(Ldab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Ldab;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 91
    .line 4875
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4876
    const-string/jumbo v1, "org_id"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4877
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4878
    const-string/jumbo v1, "index"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4880
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 91
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;I)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "contentColor"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 429
    if-eqz p2, :cond_0

    .line 430
    iget-object v0, p0, Ldab;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 434
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Ldab;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$c;->im_message_bg_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 885
    invoke-super {p0, p1, p2}, Lctt;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 886
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Ldab;->ab:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 887
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$c;->ui_common_level3_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Ldab;->aJ:I

    .line 888
    sget-object v0, Ldab;->aG:Landroid/text/style/ForegroundColorSpan;

    if-nez v0, :cond_0

    .line 889
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget v1, p0, Ldab;->aJ:I

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Ldab;->aG:Landroid/text/style/ForegroundColorSpan;

    .line 892
    :cond_0
    sget-object v0, Ldab;->aI:Landroid/text/style/AbsoluteSizeSpan;

    if-nez v0, :cond_1

    .line 893
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    sput-object v0, Ldab;->aI:Landroid/text/style/AbsoluteSizeSpan;

    .line 896
    :cond_1
    sget-object v0, Ldab;->aH:Landroid/text/style/StyleSpan;

    if-nez v0, :cond_2

    .line 897
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Ldab;->aH:Landroid/text/style/StyleSpan;

    .line 899
    :cond_2
    iget-object v0, p0, Ldab;->r:Landroid/view/View;

    sget v1, Lctk$f;->rl_makeup_below:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldab;->Y:Landroid/view/View;

    .line 900
    iget-object v0, p0, Ldab;->r:Landroid/view/View;

    sget v1, Lctk$f;->rl_body:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ldab;->Z:Landroid/widget/LinearLayout;

    .line 901
    iget-object v0, p0, Ldab;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_body_big_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldab;->ac:Landroid/widget/TextView;

    .line 902
    iget-object v0, p0, Ldab;->ac:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 903
    iget-object v0, p0, Ldab;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_body_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldab;->ad:Landroid/widget/TextView;

    .line 904
    iget-object v0, p0, Ldab;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_body_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldab;->ae:Landroid/widget/TextView;

    .line 905
    iget-object v0, p0, Ldab;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_author_date:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldab;->ai:Landroid/widget/TextView;

    .line 906
    iget-object v0, p0, Ldab;->r:Landroid/view/View;

    sget v1, Lctk$f;->view_author:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldab;->ag:Landroid/view/View;

    .line 907
    iget-object v0, p0, Ldab;->r:Landroid/view/View;

    sget v1, Lctk$f;->view_attachment:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldab;->ah:Landroid/view/View;

    .line 908
    iget-object v0, p0, Ldab;->r:Landroid/view/View;

    sget v1, Lctk$f;->view_read_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldab;->aw:Landroid/view/View;

    .line 909
    iget-object v0, p0, Ldab;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_attachment_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldab;->af:Landroid/widget/TextView;

    .line 910
    iget-object v0, p0, Ldab;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_read_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldab;->ax:Landroid/widget/TextView;

    .line 911
    iget-object v0, p0, Ldab;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_rich:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldab;->an:Landroid/widget/TextView;

    .line 912
    iget-object v0, p0, Ldab;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;

    iput-object v0, p0, Ldab;->am:Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;

    .line 913
    iget-object v0, p0, Ldab;->r:Landroid/view/View;

    sget v1, Lctk$f;->view_for_padding:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldab;->ay:Landroid/view/View;

    .line 914
    iget-object v0, p0, Ldab;->r:Landroid/view/View;

    sget v1, Lctk$f;->iv_remind:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifImageView;

    iput-object v0, p0, Ldab;->az:Lpl/droidsonroids/gif/GifImageView;

    .line 915
    iget-object v0, p0, Ldab;->r:Landroid/view/View;

    sget v1, Lctk$f;->header_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldab;->aB:Landroid/view/View;

    .line 916
    iget-object v0, p0, Ldab;->r:Landroid/view/View;

    sget v1, Lctk$f;->fl_btn_parent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldab;->aC:Landroid/view/View;

    .line 917
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldab;->aD:Ljava/util/List;

    .line 918
    iget-object v1, p0, Ldab;->aD:Ljava/util/List;

    iget-object v0, p0, Ldab;->r:Landroid/view/View;

    sget v2, Lctk$f;->tv_horizontal_1:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    iget-object v1, p0, Ldab;->aD:Ljava/util/List;

    iget-object v0, p0, Ldab;->r:Landroid/view/View;

    sget v2, Lctk$f;->tv_horizontal_2:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    iget-object v0, p0, Ldab;->r:Landroid/view/View;

    sget v1, Lctk$f;->view_stub_common_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Ldab;->ap:Landroid/view/ViewStub;

    .line 926
    iget-object v0, p0, Ldab;->r:Landroid/view/View;

    sget v1, Lctk$f;->view_stub_show_detail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Ldab;->ar:Landroid/view/ViewStub;

    .line 927
    iget-object v0, p0, Ldab;->r:Landroid/view/View;

    sget v1, Lctk$f;->view_stub_email_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Ldab;->ao:Landroid/view/ViewStub;

    .line 928
    iget-object v0, p0, Ldab;->r:Landroid/view/View;

    sget v1, Lctk$f;->view_stub_item_form:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Ldab;->aq:Landroid/view/ViewStub;

    .line 929
    iget-object v0, p0, Ldab;->r:Landroid/view/View;

    sget v1, Lctk$f;->container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldab;->aA:Landroid/view/View;

    .line 930
    invoke-virtual {p0, p2}, Ldab;->c(Landroid/view/View;)V

    .line 931
    return-void
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end method

.method protected a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v9, 0x9

    const/4 v8, 0x3

    const/4 v2, 0x0

    const/16 v7, 0x8

    .line 149
    iput-object p2, p0, Ldab;->aM:Lcom/alibaba/wukong/im/Message;

    .line 1248
    iget-object v0, p0, Ldab;->ad:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1249
    iget-object v0, p0, Ldab;->ae:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1250
    iget-object v0, p0, Ldab;->am:Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;

    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->setVisibility(I)V

    .line 1251
    iget-object v0, p0, Ldab;->ah:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1252
    iget-object v0, p0, Ldab;->aw:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1253
    iget-object v0, p0, Ldab;->ag:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1254
    iget-object v0, p0, Ldab;->an:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1257
    iget-object v0, p0, Ldab;->aA:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1258
    iget-object v0, p0, Ldab;->aA:Landroid/view/View;

    .line 2163
    new-instance v1, Ldab$1;

    invoke-direct {v1, p0, p2, p1}, Ldab$1;-><init>(Ldab;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V

    .line 1258
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1261
    :cond_0
    if-eqz p2, :cond_8

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_8

    instance-of v0, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v0, :cond_8

    move-object v0, p2

    .line 1262
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 1263
    instance-of v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    if-eqz v1, :cond_6

    .line 1264
    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    .line 1265
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->formList:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;

    if-eqz v1, :cond_2

    .line 1266
    iget-object v1, p0, Ldab;->aj:[Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 1267
    iget-object v1, p0, Ldab;->aq:Landroid/view/ViewStub;

    sget v3, Lctk$g;->item_form:I

    invoke-virtual {v1, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 1268
    iget-object v1, p0, Ldab;->aq:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    .line 1269
    new-array v1, v9, [Landroid/widget/TextView;

    iput-object v1, p0, Ldab;->aj:[Landroid/widget/TextView;

    move v3, v2

    .line 1270
    :goto_0
    if-ge v3, v9, :cond_1

    .line 1271
    iget-object v5, p0, Ldab;->aj:[Landroid/widget/TextView;

    iget-object v1, p0, Ldab;->aE:[I

    aget v1, v1, v3

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v6, Lctk$f;->tv_title:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v5, v3

    .line 1270
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1275
    :goto_1
    if-ge v1, v9, :cond_2

    .line 1276
    iget-object v3, p0, Ldab;->aj:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1275
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1280
    :cond_2
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->oaSenderActionDos:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->oaReceiverActionDos:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    if-eqz v0, :cond_8

    .line 1281
    :cond_3
    iget-object v0, p0, Ldab;->ak:[Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 1282
    iget-object v0, p0, Ldab;->ap:Landroid/view/ViewStub;

    sget v1, Lctk$g;->common_action:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 1283
    iget-object v0, p0, Ldab;->ap:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    .line 1284
    new-array v0, v8, [Landroid/widget/TextView;

    iput-object v0, p0, Ldab;->ak:[Landroid/widget/TextView;

    move v1, v2

    .line 1285
    :goto_2
    if-ge v1, v8, :cond_4

    .line 1286
    iget-object v4, p0, Ldab;->ak:[Landroid/widget/TextView;

    iget-object v0, p0, Ldab;->aF:[I

    aget v0, v0, v1

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v4, v1

    .line 1285
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1288
    :cond_4
    sget v0, Lctk$f;->rl_progress:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldab;->al:Landroid/view/View;

    :cond_5
    move v0, v2

    .line 1291
    :goto_3
    if-ge v0, v8, :cond_8

    .line 1292
    iget-object v1, p0, Ldab;->ak:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1291
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1301
    :cond_6
    instance-of v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    if-eqz v1, :cond_8

    move-object v1, v0

    .line 1302
    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    .line 1303
    iget-object v3, p0, Ldab;->as:Landroid/view/View;

    if-nez v3, :cond_7

    .line 1304
    iget-object v3, p0, Ldab;->ao:Landroid/view/ViewStub;

    sget v4, Lctk$g;->email_action:I

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 1305
    iget-object v3, p0, Ldab;->ao:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    .line 1307
    sget v4, Lctk$f;->view_reply:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Ldab;->as:Landroid/view/View;

    .line 1308
    sget v4, Lctk$f;->view_reply_all:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Ldab;->at:Landroid/view/View;

    .line 1309
    sget v4, Lctk$f;->view_forward:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Ldab;->au:Landroid/view/View;

    .line 1310
    sget v4, Lctk$f;->mail_action_blank:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Ldab;->av:Landroid/view/View;

    .line 1313
    :cond_7
    iget-object v3, v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailMessageID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1314
    iget-object v1, p0, Ldab;->av:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1315
    iget-object v1, p0, Ldab;->as:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1316
    iget-object v1, p0, Ldab;->at:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1317
    iget-object v1, p0, Ldab;->au:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1325
    :goto_4
    iget-object v1, p0, Ldab;->as:Landroid/view/View;

    new-instance v2, Ldab$2;

    invoke-direct {v2, p0, p2, v0}, Ldab$2;-><init>(Ldab;Lcom/alibaba/wukong/im/Message;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1334
    iget-object v1, p0, Ldab;->at:Landroid/view/View;

    new-instance v2, Ldab$3;

    invoke-direct {v2, p0, p2, v0}, Ldab$3;-><init>(Ldab;Lcom/alibaba/wukong/im/Message;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1343
    iget-object v1, p0, Ldab;->au:Landroid/view/View;

    new-instance v2, Ldab$4;

    invoke-direct {v2, p0, p2, v0}, Ldab$4;-><init>(Ldab;Lcom/alibaba/wukong/im/Message;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    :cond_8
    invoke-virtual {p0, p1, p2}, Ldab;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 153
    iget-object v0, p0, Ldab;->az:Lpl/droidsonroids/gif/GifImageView;

    invoke-static {p1, p2, v0}, Ldiw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lpl/droidsonroids/gif/GifImageView;)V

    .line 155
    return-void

    .line 1319
    :cond_9
    iget-object v1, p0, Ldab;->av:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1320
    iget-object v1, p0, Ldab;->as:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1321
    iget-object v1, p0, Ldab;->at:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1322
    iget-object v1, p0, Ldab;->au:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 422
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Ldab;->ae:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Ldab;->ae:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;J)V
    .locals 6
    .param p1, "author"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    const/4 v4, 0x0

    .line 508
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 509
    iget-object v2, p0, Ldab;->ag:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 510
    move-object v0, p1

    .line 511
    .local v0, "authorDate":Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    .line 512
    invoke-static {p2, p3, v4}, Lcog;->a(JZ)Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, "dateString":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    .end local v1    # "dateString":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Ldab;->ai:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    .end local v0    # "authorDate":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "richText"    # Ljava/lang/String;
    .param p2, "appendText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v4, 0x21

    const/4 v3, 0x0

    .line 357
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 358
    :cond_0
    iget-object v1, p0, Ldab;->an:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 360
    .local v0, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 361
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 362
    sget-object v1, Ldab;->aG:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 363
    sget-object v1, Ldab;->aH:Landroid/text/style/StyleSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 364
    sget-object v1, Ldab;->aI:Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 367
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 368
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 370
    :cond_2
    iget-object v1, p0, Ldab;->an:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    .end local v0    # "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_3
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "prefixColor"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 403
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    iget-object v1, p0, Ldab;->ad:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    iget-object v1, p0, Ldab;->ad:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 409
    iget-object v1, p0, Ldab;->ac:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 410
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    .line 411
    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$c;->ui_common_level1_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 412
    .local v0, "defaultColor":I
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 413
    iget-object v1, p0, Ldab;->ac:Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcpz;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 417
    :goto_0
    iget-object v1, p0, Ldab;->ac:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    .end local v0    # "defaultColor":I
    :cond_1
    return-void

    .line 415
    .restart local v0    # "defaultColor":I
    :cond_2
    iget-object v1, p0, Ldab;->ac:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method protected final a(ZJLandroid/app/Activity;Ljava/util/Map;[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;)V
    .locals 2
    .param p1, "isTo"    # Z
    .param p2, "mid"    # J
    .param p4, "activity"    # Landroid/app/Activity;
    .param p6, "oaReceiverActionDos"    # [Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;
    .param p7, "oaSenderActionDos"    # [Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;",
            "[",
            "Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 520
    .local p5, "localActionmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p5, :cond_3

    .line 521
    if-eqz p1, :cond_1

    .line 522
    const-string/jumbo v0, "senderAction"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 523
    const-class v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionListDo;

    invoke-static {p5, v0}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionListDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionListDo;->oaSenderActionDos:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    invoke-direct {p0, p2, p3, p4, v0}, Ldab;->a(JLandroid/app/Activity;[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;)V

    .line 542
    :goto_0
    return-void

    .line 525
    :cond_0
    invoke-direct {p0, p2, p3, p4, p7}, Ldab;->a(JLandroid/app/Activity;[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;)V

    goto :goto_0

    .line 528
    :cond_1
    const-string/jumbo v0, "receiverAction"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 529
    const-class v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionListDo;

    invoke-static {p5, v0}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionListDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionListDo;->oaReceiverActionDos:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    invoke-direct {p0, p2, p3, p4, v0}, Ldab;->a(JLandroid/app/Activity;[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;)V

    goto :goto_0

    .line 531
    :cond_2
    invoke-direct {p0, p2, p3, p4, p6}, Ldab;->a(JLandroid/app/Activity;[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;)V

    goto :goto_0

    .line 536
    :cond_3
    if-eqz p1, :cond_4

    .line 537
    invoke-direct {p0, p2, p3, p4, p7}, Ldab;->a(JLandroid/app/Activity;[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;)V

    goto :goto_0

    .line 539
    :cond_4
    invoke-direct {p0, p2, p3, p4, p6}, Ldab;->a(JLandroid/app/Activity;[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;)V

    goto :goto_0
.end method

.method public final a([Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;)V
    .locals 4
    .param p1, "oaActionDos"    # [Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 688
    if-eqz p1, :cond_5

    array-length v1, p1

    if-lez v1, :cond_5

    .line 689
    iget-object v1, p0, Ldab;->aC:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 690
    iget-object v2, p0, Ldab;->aD:Ljava/util/List;

    .line 4699
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v0

    .line 4702
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 4703
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4704
    if-eqz v0, :cond_3

    .line 4705
    if-eqz p1, :cond_2

    array-length v3, p1

    if-gt v3, v1, :cond_4

    .line 4706
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Ldab;->a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;)V

    .line 4702
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 4708
    :cond_4
    aget-object v3, p1, v1

    invoke-direct {p0, v0, v3}, Ldab;->a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;)V

    goto :goto_2

    .line 693
    :cond_5
    iget-object v0, p0, Ldab;->aC:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final a([Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;)V
    .locals 8
    .param p1, "formData"    # [Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 375
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 376
    .local v2, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    iget-object v5, p0, Ldab;->aj:[Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Ldab;->aj:[Landroid/widget/TextView;

    array-length v3, v5

    .line 377
    .local v3, "viewSize":I
    :goto_0
    if-eqz p1, :cond_2

    array-length v0, p1

    .line 378
    .local v0, "dataSize":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_6

    .line 379
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 380
    if-ge v1, v0, :cond_5

    .line 381
    iget-object v5, p0, Ldab;->aj:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    aget-object v5, p1, v1

    iget-object v5, v5, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;->key:Ljava/lang/String;

    if-nez v5, :cond_3

    const-string/jumbo v5, ""

    :goto_3
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 383
    aget-object v5, p1, v1

    iget-object v5, v5, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;->value:Ljava/lang/String;

    if-nez v5, :cond_4

    const-string/jumbo v5, ""

    :goto_4
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 384
    aget-object v5, p1, v1

    iget-object v5, v5, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;->key:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 385
    sget-object v5, Ldab;->aG:Landroid/text/style/ForegroundColorSpan;

    aget-object v6, p1, v1

    iget-object v6, v6, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;->key:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v2, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 387
    :cond_0
    iget-object v5, p0, Ldab;->aj:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "dataSize":I
    .end local v1    # "i":I
    .end local v3    # "viewSize":I
    :cond_1
    move v3, v4

    .line 376
    goto :goto_0

    .restart local v3    # "viewSize":I
    :cond_2
    move v0, v4

    .line 377
    goto :goto_1

    .line 382
    .restart local v0    # "dataSize":I
    .restart local v1    # "i":I
    :cond_3
    aget-object v5, p1, v1

    iget-object v5, v5, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;->key:Ljava/lang/String;

    goto :goto_3

    .line 383
    :cond_4
    aget-object v5, p1, v1

    iget-object v5, v5, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;->value:Ljava/lang/String;

    goto :goto_4

    .line 389
    :cond_5
    iget-object v5, p0, Ldab;->aj:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 392
    :cond_6
    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 15
    .param p1, "mediaIdString"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 466
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 467
    iget-object v0, p0, Ldab;->am:Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->setVisibility(I)V

    .line 468
    const/4 v11, 0x0

    .line 469
    .local v11, "mediaId":Lcom/laiwang/protocol/media/MediaId;
    const/4 v2, 0x0

    .line 471
    .local v2, "url":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    invoke-static/range {p1 .. p1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 473
    .local v12, "mediaIdUrl":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    move-object/from16 p1, v12

    .line 478
    .end local v12    # "mediaIdUrl":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v11

    .line 479
    invoke-static/range {p1 .. p1}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 483
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    move-object/from16 v2, p1

    .line 486
    :cond_1
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v11}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v0

    if-gtz v0, :cond_4

    .line 487
    :cond_2
    iget-object v0, p0, Ldab;->am:Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;

    const/high16 v1, 0x3f100000    # 0.5625f

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->setHeightWidthRatio(F)V

    .line 501
    :cond_3
    :goto_1
    iget-object v0, p0, Ldab;->ab:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Ldab;->am:Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 505
    .end local v2    # "url":Ljava/lang/String;
    .end local v11    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    :goto_2
    return-void

    .line 480
    .restart local v2    # "url":Ljava/lang/String;
    .restart local v11    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    :catch_0
    move-exception v8

    .line 481
    .local v8, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v8}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0

    .line 489
    .end local v8    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_4
    invoke-virtual {v11}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {v11}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v10, v0, v1

    .line 490
    .local v10, "heightWidthRatio":F
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, v10, v0

    if-lez v0, :cond_5

    .line 491
    const/high16 v10, 0x3f000000    # 0.5f

    .line 493
    :cond_5
    iget-object v0, p0, Ldab;->am:Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;

    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->setHeightWidthRatio(F)V

    .line 494
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$d;->im_oa_card_image_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    .line 495
    .local v14, "width":I
    int-to-float v0, v14

    mul-float/2addr v0, v10

    float-to-int v9, v0

    .line 496
    .local v9, "height":I
    invoke-virtual {v11}, Lcom/laiwang/protocol/media/MediaId;->getType()Lcom/laiwang/protocol/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/laiwang/protocol/media/MediaType;->IMAGE_GIF:Lcom/laiwang/protocol/media/MediaType;

    if-eq v0, v1, :cond_3

    .line 497
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v13

    .line 498
    .local v13, "strategy":Lhcj;
    invoke-virtual {v13, v2, v14, v9}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 503
    .end local v2    # "url":Ljava/lang/String;
    .end local v9    # "height":I
    .end local v10    # "heightWidthRatio":F
    .end local v11    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    .end local v13    # "strategy":Lhcj;
    .end local v14    # "width":I
    :cond_6
    iget-object v0, p0, Ldab;->am:Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected final c(I)V
    .locals 6
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 437
    if-lez p1, :cond_0

    .line 438
    iget-object v0, p0, Ldab;->ah:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Ldab;->af:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Ldab;->af:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->file_count:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    :cond_0
    return-void
.end method

.method protected abstract c(Landroid/view/View;)V
.end method

.method public final d()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 940
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 941
    .local v0, "oaContent":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v2, p0, Ldab;->ac:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Ldab;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 942
    iget-object v2, p0, Ldab;->ad:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Ldab;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 943
    iget-object v2, p0, Ldab;->ae:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Ldab;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 945
    iget-object v2, p0, Ldab;->aj:[Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 946
    iget-object v4, p0, Ldab;->aj:[Landroid/widget/TextView;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    .line 947
    .local v1, "temp":Landroid/widget/TextView;
    invoke-virtual {p0, v1}, Ldab;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 946
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 951
    .end local v1    # "temp":Landroid/widget/TextView;
    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Ldab;->g()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lctk$i;->dt_accessibility_conversation_send_coa_message:I

    invoke-static {v4}, Ldab;->b(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected final d(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 460
    iget-object v0, p0, Ldab;->ay:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldab;->ay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 461
    iget-object v0, p0, Ldab;->ay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 463
    :cond_0
    return-void
.end method

.method protected final d(J)V
    .locals 5
    .param p1, "reactionCount"    # J

    .prologue
    const/4 v4, 0x0

    .line 446
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v0, p0, Ldab;->aw:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 451
    iget-object v0, p0, Ldab;->aw:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 454
    :cond_2
    iget-object v0, p0, Ldab;->ax:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Ldab;->ax:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getApplication()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->dt_message_oa_read_count:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 956
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 957
    .local v0, "oaContent":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v2, p0, Ldab;->ac:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Ldab;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 958
    iget-object v2, p0, Ldab;->ad:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Ldab;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 959
    iget-object v2, p0, Ldab;->ae:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Ldab;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 961
    iget-object v2, p0, Ldab;->aj:[Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 962
    iget-object v3, p0, Ldab;->aj:[Landroid/widget/TextView;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 963
    .local v1, "temp":Landroid/widget/TextView;
    invoke-virtual {p0, v1}, Ldab;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 962
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 967
    .end local v1    # "temp":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected final o()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 972
    invoke-super {p0}, Lctt;->o()Z

    move-result v0

    .line 973
    .local v0, "result":Z
    iget-object v1, p0, Ldab;->d:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldab;->aB:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 974
    iget-object v2, p0, Ldab;->aB:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ldab;->d:Landroid/app/Activity;

    sget v3, Lctk$c;->ui_common_inverse_content_fg_color:I

    .line 975
    invoke-static {v1, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    .line 974
    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 977
    :cond_0
    return v0

    .line 975
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
