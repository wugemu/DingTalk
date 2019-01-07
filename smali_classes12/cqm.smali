.class public final Lcqm;
.super Ljava/lang/Object;
.source "SJLinkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcqm$b;,
        Lcqm$a;
    }
.end annotation


# static fields
.field public static final a:Lcqm$a;

.field public static final b:Lcqm$a;

.field public static final c:Lcqm$b;

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Z

.field private static f:Lcqi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    sput-object v1, Lcqm;->d:Ljava/lang/reflect/Method;

    .line 114
    const/4 v0, 0x0

    sput-boolean v0, Lcqm;->e:Z

    .line 119
    sput-object v1, Lcqm;->f:Lcqi;

    .line 181
    new-instance v0, Lcqm$1;

    invoke-direct {v0}, Lcqm$1;-><init>()V

    sput-object v0, Lcqm;->a:Lcqm$a;

    .line 199
    new-instance v0, Lcqm$2;

    invoke-direct {v0}, Lcqm$2;-><init>()V

    sput-object v0, Lcqm;->b:Lcqm$a;

    .line 222
    new-instance v0, Lcqm$3;

    invoke-direct {v0}, Lcqm$3;-><init>()V

    sput-object v0, Lcqm;->c:Lcqm$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    return-void
.end method

.method private static final a(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "t"    # Landroid/widget/TextView;

    .prologue
    .line 363
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 365
    .local v0, "m":Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_1

    .line 366
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 370
    :cond_1
    return-void
.end method

.method public static final a(Ljava/lang/String;IILandroid/text/Spannable;Landroid/view/View;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Landroid/text/Spannable;
    .param p4, "view"    # Landroid/view/View;

    .prologue
    .line 476
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "http://"

    .line 477
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "tel:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 478
    :cond_0
    new-instance v0, Lcqk;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcqk;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 482
    .local v0, "span":Landroid/text/style/ClickableSpan;
    :goto_0
    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 483
    return-void

    .line 480
    .end local v0    # "span":Landroid/text/style/ClickableSpan;
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/span/NoUnderlineURLSpan;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/utils/span/NoUnderlineURLSpan;-><init>(Ljava/lang/String;)V

    .restart local v0    # "span":Landroid/text/style/ClickableSpan;
    goto :goto_0
.end method

.method public static final a(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcqh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 668
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcqh;>;"
    new-instance v2, Lcqm$4;

    invoke-direct {v2}, Lcqm$4;-><init>()V

    .line 694
    .local v2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcqh;>;"
    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 696
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 697
    .local v4, "len":I
    const/4 v3, 0x0

    .line 699
    .local v3, "i":I
    :goto_0
    add-int/lit8 v6, v4, -0x1

    if-ge v3, v6, :cond_4

    .line 700
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqh;

    .line 701
    .local v0, "a":Lcqh;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcqh;

    .line 702
    .local v1, "b":Lcqh;
    const/4 v5, -0x1

    .line 704
    .local v5, "remove":I
    iget v6, v0, Lcqh;->b:I

    iget v7, v1, Lcqh;->b:I

    if-gt v6, v7, :cond_3

    iget v6, v0, Lcqh;->c:I

    iget v7, v1, Lcqh;->b:I

    if-le v6, v7, :cond_3

    .line 705
    iget v6, v1, Lcqh;->c:I

    iget v7, v0, Lcqh;->c:I

    if-gt v6, v7, :cond_1

    .line 706
    add-int/lit8 v5, v3, 0x1

    .line 713
    :cond_0
    :goto_1
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 714
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 715
    add-int/lit8 v4, v4, -0x1

    .line 716
    goto :goto_0

    .line 707
    :cond_1
    iget v6, v0, Lcqh;->c:I

    iget v7, v0, Lcqh;->b:I

    sub-int/2addr v6, v7

    iget v7, v1, Lcqh;->c:I

    iget v8, v1, Lcqh;->b:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_2

    .line 708
    add-int/lit8 v5, v3, 0x1

    goto :goto_1

    .line 709
    :cond_2
    iget v6, v0, Lcqh;->c:I

    iget v7, v0, Lcqh;->b:I

    sub-int/2addr v6, v7

    iget v7, v1, Lcqh;->c:I

    iget v8, v1, Lcqh;->b:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_0

    .line 710
    move v5, v3

    goto :goto_1

    .line 721
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 722
    goto :goto_0

    .line 723
    .end local v0    # "a":Lcqh;
    .end local v1    # "b":Lcqh;
    .end local v5    # "remove":I
    :cond_4
    return-void
.end method

.method public static final a(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 20
    .param p1, "text"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcqh;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 564
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcqh;>;"
    invoke-static {}, Lcqm;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 565
    if-nez p1, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    new-instance v11, Landroid/text/SpannableString;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 570
    .local v11, "newText":Landroid/text/Spannable;
    const/4 v1, 0x0

    invoke-interface {v11}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v11, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/style/URLSpan;

    .line 571
    .local v13, "old":[Landroid/text/style/URLSpan;
    if-eqz v13, :cond_2

    array-length v1, v13

    if-lez v1, :cond_2

    .line 572
    array-length v1, v13

    add-int/lit8 v9, v1, -0x1

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_2

    .line 573
    aget-object v1, v13, v9

    invoke-interface {v11, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 572
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 577
    .end local v9    # "i":I
    :cond_2
    const/4 v1, 0x4

    invoke-static {v11, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 578
    const/4 v1, 0x0

    invoke-interface {v11}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v11, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/text/style/URLSpan;

    .line 579
    .local v19, "urlSpans":[Landroid/text/style/URLSpan;
    if-eqz v19, :cond_0

    .line 580
    move-object/from16 v0, v19

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_0

    aget-object v18, v19, v1

    .line 581
    .local v18, "urlSpan":Landroid/text/style/URLSpan;
    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 582
    .local v15, "start":I
    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 583
    .local v8, "end":I
    invoke-virtual/range {v18 .. v18}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v17

    .line 585
    .local v17, "url":Ljava/lang/String;
    new-instance v10, Lcqh;

    invoke-direct {v10}, Lcqh;-><init>()V

    .line 586
    .local v10, "linkSpec":Lcqh;
    iput v15, v10, Lcqh;->b:I

    .line 587
    iput v8, v10, Lcqh;->c:I

    .line 588
    move-object/from16 v0, v17

    iput-object v0, v10, Lcqh;->a:Ljava/lang/String;

    .line 590
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3126
    .end local v8    # "end":I
    .end local v10    # "linkSpec":Lcqh;
    .end local v11    # "newText":Landroid/text/Spannable;
    .end local v13    # "old":[Landroid/text/style/URLSpan;
    .end local v15    # "start":I
    .end local v17    # "url":Ljava/lang/String;
    .end local v18    # "urlSpan":Landroid/text/style/URLSpan;
    .end local v19    # "urlSpans":[Landroid/text/style/URLSpan;
    :cond_3
    sget-object v1, Lcqm;->d:Ljava/lang/reflect/Method;

    if-nez v1, :cond_5

    sget-object v1, Lcqm;->f:Lcqi;

    if-nez v1, :cond_5

    .line 3129
    sget-boolean v1, Lcqm;->e:Z

    if-nez v1, :cond_5

    .line 3135
    :try_start_0
    sget-object v1, Lcqm;->d:Ljava/lang/reflect/Method;

    if-nez v1, :cond_4

    .line 3136
    const-class v1, Landroid/text/util/Linkify;

    const-string/jumbo v2, "gatherTelLinks"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/util/ArrayList;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/text/Spannable;

    aput-object v5, v3, v4

    .line 3137
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3139
    sput-object v1, Lcqm;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3142
    :cond_4
    sget-object v1, Lcqm;->f:Lcqi;

    if-nez v1, :cond_5

    .line 3143
    const-string/jumbo v1, "android.text.util.LinkSpec"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 3145
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 3146
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3148
    const-string/jumbo v3, "start"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 3149
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3151
    const-string/jumbo v4, "end"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 3152
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3154
    new-instance v4, Lcqi;

    invoke-direct {v4}, Lcqi;-><init>()V

    .line 3155
    sput-object v4, Lcqm;->f:Lcqi;

    iput-object v2, v4, Lcqi;->a:Ljava/lang/reflect/Field;

    .line 3156
    sget-object v2, Lcqm;->f:Lcqi;

    iput-object v3, v2, Lcqi;->b:Ljava/lang/reflect/Field;

    .line 3157
    sget-object v2, Lcqm;->f:Lcqi;

    iput-object v1, v2, Lcqi;->c:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 597
    :cond_5
    :goto_3
    :try_start_1
    sget-object v1, Lcqm;->d:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_7

    sget-object v1, Lcqm;->f:Lcqi;

    if-eqz v1, :cond_7

    sget-object v1, Lcqm;->f:Lcqi;

    iget-object v1, v1, Lcqi;->a:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_7

    sget-object v1, Lcqm;->f:Lcqi;

    iget-object v1, v1, Lcqi;->b:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_7

    sget-object v1, Lcqm;->f:Lcqi;

    iget-object v1, v1, Lcqi;->c:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_7

    .line 602
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v12, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v1, Lcqm;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 606
    .local v16, "tmp":Ljava/lang/Object;
    if-eqz v16, :cond_6

    .line 608
    new-instance v14, Lcqh;

    invoke-direct {v14}, Lcqh;-><init>()V

    .line 609
    .local v14, "spec":Lcqh;
    sget-object v2, Lcqm;->f:Lcqi;

    iget-object v2, v2, Lcqi;->a:Ljava/lang/reflect/Field;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcqh;->a:Ljava/lang/String;

    .line 610
    sget-object v2, Lcqm;->f:Lcqi;

    iget-object v2, v2, Lcqi;->b:Ljava/lang/reflect/Field;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    iput v2, v14, Lcqh;->b:I

    .line 611
    sget-object v2, Lcqm;->f:Lcqi;

    iget-object v2, v2, Lcqi;->c:Ljava/lang/reflect/Field;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    iput v2, v14, Lcqh;->c:I

    .line 612
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_4

    .line 621
    .end local v12    # "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v14    # "spec":Lcqh;
    .end local v16    # "tmp":Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 622
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_0

    .line 3161
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    const/4 v1, 0x1

    sput-boolean v1, Lcqm;->e:Z

    goto :goto_3

    .line 3164
    :catch_2
    move-exception v1

    const/4 v1, 0x1

    sput-boolean v1, Lcqm;->e:Z

    goto/16 :goto_3

    .line 3167
    :catch_3
    move-exception v1

    const/4 v1, 0x1

    sput-boolean v1, Lcqm;->e:Z

    goto/16 :goto_3

    .line 3169
    :catch_4
    move-exception v1

    .line 3170
    const/4 v2, 0x1

    sput-boolean v2, Lcqm;->e:Z

    .line 3171
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 617
    :cond_7
    :try_start_2
    sget-object v3, Lcqn;->i:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "tel:"

    aput-object v2, v4, v1

    sget-object v5, Lcqm;->b:Lcqm$a;

    sget-object v6, Lcqm;->c:Lcqm$b;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v6}, Lcqm;->a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcqm$a;Lcqm$b;)V
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    goto/16 :goto_0

    .line 623
    :catch_5
    move-exception v7

    .line 624
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    .line 625
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v7

    .line 626
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static final a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcqm$a;Lcqm$b;)V
    .locals 14
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Lcqm$a;
    .param p5, "transformFilter"    # Lcqm$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcqh;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Lcqm$a;",
            "Lcqm$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 532
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcqh;>;"
    move-object/from16 v0, p2

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 534
    .local v8, "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 535
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    .line 536
    .local v10, "start":I
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    .line 538
    .local v7, "end":I
    if-eqz p4, :cond_1

    move-object/from16 v0, p4

    invoke-interface {v0, p1, v10, v7}, Lcqm$a;->a(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    :cond_1
    new-instance v9, Lcqh;

    invoke-direct {v9}, Lcqh;-><init>()V

    .line 540
    .local v9, "spec":Lcqh;
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1502
    if-eqz p5, :cond_2

    .line 1503
    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Lcqm$b;->a(Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object v1

    .line 1506
    :cond_2
    const/4 v13, 0x0

    .line 1508
    const/4 v2, 0x0

    move v12, v2

    :goto_1
    move-object/from16 v0, p3

    array-length v2, v0

    if-ge v12, v2, :cond_6

    .line 1509
    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-object v4, p3, v12

    const/4 v5, 0x0

    aget-object v6, p3, v12

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1510
    const/4 v13, 0x1

    .line 1513
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v4, p3, v12

    const/4 v5, 0x0

    aget-object v6, p3, v12

    .line 1514
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p3, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p3, v12

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move v1, v13

    .line 1522
    :goto_2
    if-nez v1, :cond_3

    .line 1523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 542
    .local v11, "url":Ljava/lang/String;
    :cond_3
    iput-object v11, v9, Lcqh;->a:Ljava/lang/String;

    .line 543
    iput v10, v9, Lcqh;->b:I

    .line 544
    iput v7, v9, Lcqh;->c:I

    .line 546
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1508
    .end local v11    # "url":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_1

    .line 549
    .end local v7    # "end":I
    .end local v9    # "spec":Lcqh;
    .end local v10    # "start":I
    :cond_5
    return-void

    .restart local v7    # "end":I
    .restart local v9    # "spec":Lcqh;
    .restart local v10    # "start":I
    :cond_6
    move-object v11, v1

    move v1, v13

    goto :goto_2
.end method

.method private static final a()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 554
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-lt v2, v3, :cond_0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    .line 2072
    iget-object v2, v2, Lcid;->b:Lckd;

    .line 554
    invoke-virtual {v2}, Lckd;->k()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 557
    .local v0, "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return v1

    .line 555
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 556
    .restart local v0    # "t":Ljava/lang/Throwable;
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DingTalkBase userGatherTelLinksV2 exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3022
    const-string/jumbo v4, "im"

    invoke-static {v2, v3, v4}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/text/Spannable;ILandroid/view/View;)Z
    .locals 11
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 283
    if-nez p1, :cond_0

    move v1, v9

    .line 324
    :goto_0
    return v1

    .line 287
    :cond_0
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v9, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/URLSpan;

    .line 289
    .local v8, "old":[Landroid/text/style/URLSpan;
    array-length v1, v8

    add-int/lit8 v6, v1, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_1

    .line 290
    aget-object v1, v8, v6

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 289
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 293
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcqh;>;"
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    .line 296
    sget-object v2, Lcqn;->d:Ljava/util/regex/Pattern;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "http://"

    aput-object v1, v3, v9

    const-string/jumbo v1, "https://"

    aput-object v1, v3, v10

    const/4 v1, 0x2

    const-string/jumbo v4, "rtsp://"

    aput-object v4, v3, v1

    sget-object v4, Lcqm;->a:Lcqm$a;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcqm;->a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcqm$a;Lcqm$b;)V

    .line 301
    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    .line 302
    sget-object v2, Lcqn;->h:Ljava/util/regex/Pattern;

    new-array v3, v10, [Ljava/lang/String;

    const-string/jumbo v1, "mailto:"

    aput-object v1, v3, v9

    move-object v1, p0

    move-object v4, v5

    invoke-static/range {v0 .. v5}, Lcqm;->a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcqm$a;Lcqm$b;)V

    .line 306
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 307
    invoke-static {v0, p0}, Lcqm;->a(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 310
    :cond_4
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 311
    invoke-static {v0, p0}, Lcqm;->b(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 314
    :cond_5
    invoke-static {v0}, Lcqm;->a(Ljava/util/ArrayList;)V

    .line 316
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    move v1, v9

    .line 317
    goto :goto_0

    .line 320
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcqh;

    .line 321
    .local v7, "link":Lcqh;
    iget-object v2, v7, Lcqh;->a:Ljava/lang/String;

    iget v3, v7, Lcqh;->b:I

    iget v4, v7, Lcqh;->c:I

    invoke-static {v2, v3, v4, p0, p2}, Lcqm;->a(Ljava/lang/String;IILandroid/text/Spannable;Landroid/view/View;)V

    goto :goto_2

    .end local v7    # "link":Lcqh;
    :cond_7
    move v1, v10

    .line 324
    goto/16 :goto_0
.end method

.method public static final a(Landroid/widget/TextView;I)Z
    .locals 5
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "mask"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 334
    if-nez p1, :cond_1

    .line 358
    :cond_0
    :goto_0
    return v2

    .line 338
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 340
    .local v1, "t":Ljava/lang/CharSequence;
    instance-of v4, v1, Landroid/text/Spannable;

    if-eqz v4, :cond_2

    .line 341
    check-cast v1, Landroid/text/Spannable;

    .end local v1    # "t":Ljava/lang/CharSequence;
    invoke-static {v1, p1, p0}, Lcqm;->a(Landroid/text/Spannable;ILandroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 342
    invoke-static {p0}, Lcqm;->a(Landroid/widget/TextView;)V

    move v2, v3

    .line 343
    goto :goto_0

    .line 348
    .restart local v1    # "t":Ljava/lang/CharSequence;
    :cond_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 349
    .local v0, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 351
    invoke-static {v0, p1, p0}, Lcqm;->a(Landroid/text/Spannable;ILandroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 352
    invoke-static {p0}, Lcqm;->a(Landroid/widget/TextView;)V

    .line 353
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 355
    goto :goto_0
.end method

.method public static final b(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 10
    .param p1, "s"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcqh;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 634
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcqh;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 636
    .local v7, "string":Ljava/lang/String;
    const/4 v1, 0x0

    .line 638
    .local v1, "base":I
    :goto_0
    invoke-static {v7}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 641
    .local v6, "start":I
    if-ltz v6, :cond_0

    .line 645
    new-instance v5, Lcqh;

    invoke-direct {v5}, Lcqh;-><init>()V

    .line 646
    .local v5, "spec":Lcqh;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 647
    .local v4, "length":I
    add-int v3, v6, v4

    .line 649
    .local v3, "end":I
    add-int v8, v1, v6

    iput v8, v5, Lcqh;->b:I

    .line 650
    add-int v8, v1, v3

    iput v8, v5, Lcqh;->c:I

    .line 651
    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 652
    add-int/2addr v1, v3

    .line 657
    :try_start_0
    const-string/jumbo v8, "UTF-8"

    invoke-static {v0, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 662
    .local v2, "encodedAddress":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "geo:0,0?q="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcqh;->a:Ljava/lang/String;

    .line 663
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 665
    .end local v2    # "encodedAddress":Ljava/lang/String;
    .end local v3    # "end":I
    .end local v4    # "length":I
    .end local v5    # "spec":Lcqh;
    .end local v6    # "start":I
    :cond_0
    return-void

    .line 659
    .restart local v3    # "end":I
    .restart local v4    # "length":I
    .restart local v5    # "spec":Lcqh;
    .restart local v6    # "start":I
    :catch_0
    move-exception v8

    goto :goto_0
.end method
