.class public final Ls;
.super Ljava/lang/Object;
.source "AnimatorInflaterCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "id"    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p4, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v3, 0x0

    .line 130
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 131
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1501
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Ls;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 146
    .local v8, "animator":Landroid/animation/Animator;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object v8

    .line 133
    .end local v8    # "animator":Landroid/animation/Animator;
    :catch_0
    move-exception v9

    .line 134
    .local v9, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v10, Landroid/content/res/Resources$NotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Can\'t load animation resource ID #0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 137
    .local v10, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v10, v9}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 138
    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .end local v9    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v10    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v0

    .line 139
    :catch_1
    move-exception v9

    .line 140
    .local v9, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v10, Landroid/content/res/Resources$NotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Can\'t load animation resource ID #0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 143
    .restart local v10    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v10, v9}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 144
    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "parent"    # Landroid/animation/AnimatorSet;
    .param p6, "sequenceOrdering"    # I
    .param p7, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    const/4 v8, 0x0

    .line 510
    .local v8, "anim":Landroid/animation/Animator;
    const/16 v19, 0x0

    .line 514
    .local v19, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v20

    .line 516
    .local v20, "depth":I
    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v25

    .local v25, "type":I
    const/4 v4, 0x3

    move/from16 v0, v25

    if-ne v0, v4, :cond_1

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move/from16 v0, v20

    if-le v4, v0, :cond_8

    :cond_1
    const/4 v4, 0x1

    move/from16 v0, v25

    if-eq v0, v4, :cond_8

    .line 519
    const/4 v4, 0x2

    move/from16 v0, v25

    if-ne v0, v4, :cond_0

    .line 523
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v24

    .line 524
    .local v24, "name":Ljava/lang/String;
    const/16 v21, 0x0

    .line 526
    .local v21, "gotValues":Z
    const-string/jumbo v4, "objectAnimator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2872
    new-instance v8, Landroid/animation/ObjectAnimator;

    .end local v8    # "anim":Landroid/animation/Animator;
    invoke-direct {v8}, Landroid/animation/ObjectAnimator;-><init>()V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move/from16 v9, p7

    move-object/from16 v10, p3

    .line 2874
    invoke-static/range {v4 .. v10}, Ls;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    .line 552
    .restart local v8    # "anim":Landroid/animation/Animator;
    :goto_1
    if-eqz p5, :cond_0

    if-nez v21, :cond_0

    .line 553
    if-nez v19, :cond_2

    .line 554
    new-instance v19, Ljava/util/ArrayList;

    .end local v19    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .restart local v19    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 528
    :cond_3
    const-string/jumbo v4, "animator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 529
    const/4 v13, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    move/from16 v14, p7

    move-object/from16 v15, p3

    invoke-static/range {v9 .. v15}, Ls;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    move-result-object v8

    goto :goto_1

    .line 530
    :cond_4
    const-string/jumbo v4, "set"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 531
    new-instance v8, Landroid/animation/AnimatorSet;

    .end local v8    # "anim":Landroid/animation/Animator;
    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 532
    .restart local v8    # "anim":Landroid/animation/Animator;
    sget-object v4, Lo;->h:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2, v4}, Lds;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 535
    .local v17, "a":Landroid/content/res/TypedArray;
    const-string/jumbo v4, "ordering"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4, v5, v6}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v15

    .local v15, "ordering":I
    move-object v14, v8

    .line 538
    check-cast v14, Landroid/animation/AnimatorSet;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v16, p7

    invoke-static/range {v9 .. v16}, Ls;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    .line 540
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 541
    .end local v15    # "ordering":I
    .end local v17    # "a":Landroid/content/res/TypedArray;
    :cond_5
    const-string/jumbo v4, "propertyValuesHolder"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 543
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 542
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v4}, Ls;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v26

    .line 544
    .local v26, "values":[Landroid/animation/PropertyValuesHolder;
    if-eqz v26, :cond_6

    if-eqz v8, :cond_6

    instance-of v4, v8, Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_6

    move-object v4, v8

    .line 545
    check-cast v4, Landroid/animation/ValueAnimator;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 547
    :cond_6
    const/16 v21, 0x1

    .line 548
    goto/16 :goto_1

    .line 549
    .end local v26    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_7
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unknown animator name: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 559
    .end local v21    # "gotValues":Z
    .end local v24    # "name":Ljava/lang/String;
    :cond_8
    if-eqz p5, :cond_a

    if-eqz v19, :cond_a

    .line 560
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    .line 561
    .local v18, "animsArray":[Landroid/animation/Animator;
    const/16 v22, 0x0

    .line 562
    .local v22, "index":I
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/animation/Animator;

    .line 563
    .local v17, "a":Landroid/animation/Animator;
    add-int/lit8 v23, v22, 0x1

    .end local v22    # "index":I
    .local v23, "index":I
    aput-object v17, v18, v22

    move/from16 v22, v23

    .line 564
    .end local v23    # "index":I
    .restart local v22    # "index":I
    goto :goto_2

    .line 565
    .end local v17    # "a":Landroid/animation/Animator;
    :cond_9
    if-nez p6, :cond_b

    .line 566
    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 571
    .end local v18    # "animsArray":[Landroid/animation/Animator;
    .end local v22    # "index":I
    :cond_a
    :goto_3
    return-object v8

    .line 568
    .restart local v18    # "animsArray":[Landroid/animation/Animator;
    .restart local v22    # "index":I
    :cond_b
    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_3
.end method

.method private static a(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .locals 2
    .param p0, "sampleKeyframe"    # Landroid/animation/Keyframe;
    .param p1, "fraction"    # F

    .prologue
    .line 779
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 780
    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v0

    .line 783
    :goto_0
    return-object v0

    .line 781
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 782
    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_0

    .line 783
    :cond_1
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .locals 21
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueType"    # I
    .param p2, "valueFromId"    # I
    .param p3, "valueToId"    # I
    .param p4, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 206
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    .line 207
    .local v14, "tvFrom":Landroid/util/TypedValue;
    if-eqz v14, :cond_4

    const/4 v7, 0x1

    .line 208
    .local v7, "hasFrom":Z
    :goto_0
    if-eqz v7, :cond_5

    iget v5, v14, Landroid/util/TypedValue;->type:I

    .line 209
    .local v5, "fromType":I
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 210
    .local v15, "tvTo":Landroid/util/TypedValue;
    if-eqz v15, :cond_6

    const/4 v8, 0x1

    .line 211
    .local v8, "hasTo":Z
    :goto_2
    if-eqz v8, :cond_7

    iget v13, v15, Landroid/util/TypedValue;->type:I

    .line 213
    .local v13, "toType":I
    :goto_3
    const/16 v18, 0x4

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 215
    if-eqz v7, :cond_0

    invoke-static {v5}, Ls;->a(I)Z

    move-result v18

    if-nez v18, :cond_1

    :cond_0
    if-eqz v8, :cond_8

    invoke-static {v13}, Ls;->a(I)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 216
    :cond_1
    const/16 p1, 0x3

    .line 222
    :cond_2
    :goto_4
    if-nez p1, :cond_9

    const/4 v6, 0x1

    .line 224
    .local v6, "getFloats":Z
    :goto_5
    const/4 v11, 0x0

    .line 226
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 227
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "fromString":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 231
    .local v12, "toString":Ljava/lang/String;
    invoke-static {v4}, Ldu;->b(Ljava/lang/String;)[Ldu$b;

    move-result-object v9

    .line 233
    .local v9, "nodesFrom":[Ldu$b;
    invoke-static {v12}, Ldu;->b(Ljava/lang/String;)[Ldu$b;

    move-result-object v10

    .line 234
    .local v10, "nodesTo":[Ldu$b;
    if-nez v9, :cond_3

    if-eqz v10, :cond_b

    .line 235
    :cond_3
    if-eqz v9, :cond_d

    .line 236
    new-instance v3, Ls$a;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-direct {v3, v0}, Ls$a;-><init>(B)V

    .line 237
    .local v3, "evaluator":Landroid/animation/TypeEvaluator;
    if-eqz v10, :cond_c

    .line 238
    invoke-static {v9, v10}, Ldu;->a([Ldu$b;[Ldu$b;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 239
    new-instance v18, Landroid/view/InflateException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, " Can\'t morph from "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 207
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v5    # "fromType":I
    .end local v6    # "getFloats":Z
    .end local v7    # "hasFrom":Z
    .end local v8    # "hasTo":Z
    .end local v9    # "nodesFrom":[Ldu$b;
    .end local v10    # "nodesTo":[Ldu$b;
    .end local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "toString":Ljava/lang/String;
    .end local v13    # "toType":I
    .end local v15    # "tvTo":Landroid/util/TypedValue;
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 208
    .restart local v7    # "hasFrom":Z
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 210
    .restart local v5    # "fromType":I
    .restart local v15    # "tvTo":Landroid/util/TypedValue;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 211
    .restart local v8    # "hasTo":Z
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 218
    .restart local v13    # "toType":I
    :cond_8
    const/16 p1, 0x0

    goto :goto_4

    .line 222
    :cond_9
    const/4 v6, 0x0

    goto :goto_5

    .line 242
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .restart local v4    # "fromString":Ljava/lang/String;
    .restart local v6    # "getFloats":Z
    .restart local v9    # "nodesFrom":[Ldu$b;
    .restart local v10    # "nodesTo":[Ldu$b;
    .restart local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v12    # "toString":Ljava/lang/String;
    :cond_a
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v9, v18, v19

    const/16 v19, 0x1

    aput-object v10, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 330
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v9    # "nodesFrom":[Ldu$b;
    .end local v10    # "nodesTo":[Ldu$b;
    .end local v12    # "toString":Ljava/lang/String;
    :cond_b
    :goto_6
    return-object v11

    .line 245
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .restart local v4    # "fromString":Ljava/lang/String;
    .restart local v9    # "nodesFrom":[Ldu$b;
    .restart local v10    # "nodesTo":[Ldu$b;
    .restart local v12    # "toString":Ljava/lang/String;
    :cond_c
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v9, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 248
    goto :goto_6

    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_d
    if-eqz v10, :cond_b

    .line 249
    new-instance v3, Ls$a;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-direct {v3, v0}, Ls$a;-><init>(B)V

    .line 250
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v10, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto :goto_6

    .line 255
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v9    # "nodesFrom":[Ldu$b;
    .end local v10    # "nodesTo":[Ldu$b;
    .end local v12    # "toString":Ljava/lang/String;
    :cond_e
    const/4 v3, 0x0

    .line 257
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    const/16 v18, 0x3

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 259
    invoke-static {}, Lt;->a()Lt;

    move-result-object v3

    .line 261
    :cond_f
    if-eqz v6, :cond_16

    .line 264
    if-eqz v7, :cond_14

    .line 265
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v5, v0, :cond_11

    .line 266
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v16

    .line 270
    .local v16, "valueFrom":F
    :goto_7
    if-eqz v8, :cond_13

    .line 271
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v13, v0, :cond_12

    .line 272
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    .line 276
    .local v17, "valueTo":F
    :goto_8
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v16, v18, v19

    const/16 v19, 0x1

    aput v17, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 325
    .end local v16    # "valueFrom":F
    .end local v17    # "valueTo":F
    :cond_10
    :goto_9
    if-eqz v11, :cond_b

    if-eqz v3, :cond_b

    .line 326
    invoke-virtual {v11, v3}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto/16 :goto_6

    .line 268
    :cond_11
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    .restart local v16    # "valueFrom":F
    goto :goto_7

    .line 274
    :cond_12
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    .restart local v17    # "valueTo":F
    goto :goto_8

    .line 279
    .end local v17    # "valueTo":F
    :cond_13
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v16, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto :goto_9

    .line 282
    .end local v16    # "valueFrom":F
    :cond_14
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v13, v0, :cond_15

    .line 283
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    .line 287
    .restart local v17    # "valueTo":F
    :goto_a
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v17, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 289
    goto :goto_9

    .line 285
    .end local v17    # "valueTo":F
    :cond_15
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    .restart local v17    # "valueTo":F
    goto :goto_a

    .line 292
    .end local v17    # "valueTo":F
    :cond_16
    if-eqz v7, :cond_1c

    .line 293
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v5, v0, :cond_17

    .line 294
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 300
    .local v16, "valueFrom":I
    :goto_b
    if-eqz v8, :cond_1b

    .line 301
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v13, v0, :cond_19

    .line 302
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 308
    .local v17, "valueTo":I
    :goto_c
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v16, v18, v19

    const/16 v19, 0x1

    aput v17, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto/16 :goto_9

    .line 295
    .end local v16    # "valueFrom":I
    .end local v17    # "valueTo":I
    :cond_17
    invoke-static {v5}, Ls;->a(I)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 296
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v16

    .restart local v16    # "valueFrom":I
    goto :goto_b

    .line 298
    .end local v16    # "valueFrom":I
    :cond_18
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .restart local v16    # "valueFrom":I
    goto :goto_b

    .line 303
    :cond_19
    invoke-static {v13}, Ls;->a(I)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 304
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    .restart local v17    # "valueTo":I
    goto :goto_c

    .line 306
    .end local v17    # "valueTo":I
    :cond_1a
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .restart local v17    # "valueTo":I
    goto :goto_c

    .line 310
    .end local v17    # "valueTo":I
    :cond_1b
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v16, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto/16 :goto_9

    .line 313
    .end local v16    # "valueFrom":I
    :cond_1c
    if-eqz v8, :cond_10

    .line 314
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v13, v0, :cond_1d

    .line 315
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 321
    .restart local v17    # "valueTo":I
    :goto_d
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v17, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto/16 :goto_9

    .line 316
    .end local v17    # "valueTo":I
    :cond_1d
    invoke-static {v13}, Ls;->a(I)Z

    move-result v18

    if-eqz v18, :cond_1e

    .line 317
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    .restart local v17    # "valueTo":I
    goto :goto_d

    .line 319
    .end local v17    # "valueTo":I
    :cond_1e
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .restart local v17    # "valueTo":I
    goto :goto_d
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "anim"    # Landroid/animation/ValueAnimator;
    .param p5, "pathErrorScale"    # F
    .param p6, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 890
    sget-object v4, Lo;->g:[I

    invoke-static {p1, p2, p3, v4}, Lds;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 892
    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    sget-object v4, Lo;->k:[I

    invoke-static {p1, p2, p3, v4}, Lds;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 895
    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    if-nez p4, :cond_0

    .line 896
    new-instance p4, Landroid/animation/ValueAnimator;

    .end local p4    # "anim":Landroid/animation/ValueAnimator;
    invoke-direct {p4}, Landroid/animation/ValueAnimator;-><init>()V

    .line 899
    .restart local p4    # "anim":Landroid/animation/ValueAnimator;
    :cond_0
    invoke-static {p4, v0, v1, p5, p6}, Ls;->a(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V

    .line 902
    const-string/jumbo v4, "interpolator"

    invoke-static {v0, p6, v4, v5, v5}, Lds;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 904
    .local v3, "resID":I
    if-lez v3, :cond_1

    .line 905
    invoke-static {p0, v3}, Lr;->a(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 906
    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {p4, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 909
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 910
    if-eqz v1, :cond_2

    .line 911
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 913
    :cond_2
    return-object p4
.end method

.method private static a(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p3, "pixelSize"    # F
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 344
    const-string/jumbo v6, "duration"

    const/4 v7, 0x1

    const/16 v8, 0x12c

    invoke-static {p1, p4, v6, v7, v8}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v6

    int-to-long v0, v6

    .line 346
    .local v0, "duration":J
    const-string/jumbo v6, "startOffset"

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {p1, p4, v6, v7, v8}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v6

    int-to-long v4, v6

    .line 348
    .local v4, "startDelay":J
    const-string/jumbo v6, "valueType"

    const/4 v7, 0x7

    const/4 v8, 0x4

    invoke-static {p1, p4, v6, v7, v8}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 352
    .local v3, "valueType":I
    const-string/jumbo v6, "valueFrom"

    invoke-static {p4, v6}, Lds;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "valueTo"

    .line 353
    invoke-static {p4, v6}, Lds;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 354
    const/4 v6, 0x4

    if-ne v3, v6, :cond_2

    .line 1655
    const/4 v6, 0x5

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    .line 1656
    if-eqz v7, :cond_4

    const/4 v6, 0x1

    move v9, v6

    .line 1657
    :goto_0
    if-eqz v9, :cond_5

    iget v6, v7, Landroid/util/TypedValue;->type:I

    .line 1658
    :goto_1
    const/4 v7, 0x6

    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v10

    .line 1659
    if-eqz v10, :cond_6

    const/4 v7, 0x1

    move v8, v7

    .line 1660
    :goto_2
    if-eqz v8, :cond_7

    iget v7, v10, Landroid/util/TypedValue;->type:I

    .line 1664
    :goto_3
    if-eqz v9, :cond_0

    invoke-static {v6}, Ls;->a(I)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    if-eqz v8, :cond_8

    invoke-static {v7}, Ls;->a(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1665
    :cond_1
    const/4 v3, 0x3

    .line 359
    :cond_2
    :goto_4
    const/4 v6, 0x5

    const/4 v7, 0x6

    const-string/jumbo v8, ""

    invoke-static {p1, v3, v6, v7, v8}, Ls;->a(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 362
    .local v2, "pvh":Landroid/animation/PropertyValuesHolder;
    if-eqz v2, :cond_3

    .line 363
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 366
    .end local v2    # "pvh":Landroid/animation/PropertyValuesHolder;
    :cond_3
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 367
    invoke-virtual {p0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 369
    const-string/jumbo v6, "repeatCount"

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {p1, p4, v6, v7, v8}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 371
    const-string/jumbo v6, "repeatMode"

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static {p1, p4, v6, v7, v8}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 374
    if-eqz p2, :cond_a

    .line 2389
    check-cast p0, Landroid/animation/ObjectAnimator;

    .line 2390
    .end local p0    # "anim":Landroid/animation/ValueAnimator;
    const-string/jumbo v6, "pathData"

    const/4 v7, 0x1

    invoke-static {p2, p4, v6, v7}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 2401
    if-eqz v6, :cond_b

    .line 2402
    const-string/jumbo v7, "propertyXName"

    const/4 v8, 0x2

    invoke-static {p2, p4, v7, v8}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 2404
    const-string/jumbo v8, "propertyYName"

    const/4 v9, 0x3

    invoke-static {p2, p4, v8, v9}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 2413
    if-nez v7, :cond_9

    if-nez v8, :cond_9

    .line 2414
    new-instance v6, Landroid/view/InflateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " propertyXName or propertyYName is needed for PathData"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1656
    .restart local p0    # "anim":Landroid/animation/ValueAnimator;
    :cond_4
    const/4 v6, 0x0

    move v9, v6

    goto/16 :goto_0

    .line 1657
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1659
    :cond_6
    const/4 v7, 0x0

    move v8, v7

    goto/16 :goto_2

    .line 1660
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1667
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 2417
    .end local p0    # "anim":Landroid/animation/ValueAnimator;
    :cond_9
    invoke-static {v6}, Ldu;->a(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v6

    .line 2418
    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v9, p3

    invoke-static {v6, p0, v9, v7, v8}, Ls;->a(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V

    .line 2420
    :cond_a
    :goto_5
    return-void

    .line 2421
    :cond_b
    const-string/jumbo v6, "propertyName"

    const/4 v7, 0x0

    .line 2422
    invoke-static {p2, p4, v6, v7}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 2424
    invoke-virtual {p0, v6}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private static a(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "oa"    # Landroid/animation/ObjectAnimator;
    .param p2, "precision"    # F
    .param p3, "propertyXName"    # Ljava/lang/String;
    .param p4, "propertyYName"    # Ljava/lang/String;

    .prologue
    .line 435
    new-instance v8, Landroid/graphics/PathMeasure;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v8, v0, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 436
    .local v8, "measureForTotalLength":Landroid/graphics/PathMeasure;
    const/4 v14, 0x0

    .line 439
    .local v14, "totalLength":F
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v3, "contourLengths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_0
    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v10

    .line 443
    .local v10, "pathLength":F
    add-float/2addr v14, v10

    .line 444
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v17

    if-nez v17, :cond_0

    .line 449
    new-instance v11, Landroid/graphics/PathMeasure;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v11, v0, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 451
    .local v11, "pathMeasure":Landroid/graphics/PathMeasure;
    const/16 v17, 0x64

    div-float v18, v14, p2

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 453
    .local v9, "numPoints":I
    new-array v6, v9, [F

    .line 454
    .local v6, "mX":[F
    new-array v7, v9, [F

    .line 455
    .local v7, "mY":[F
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v12, v0, [F

    .line 457
    .local v12, "position":[F
    const/4 v2, 0x0

    .line 458
    .local v2, "contourIndex":I
    add-int/lit8 v17, v9, -0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v13, v14, v17

    .line 459
    .local v13, "step":F
    const/4 v4, 0x0

    .line 464
    .local v4, "currentDistance":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v9, :cond_2

    .line 465
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v11, v4, v12, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 466
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v11, v4, v12, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 468
    const/16 v17, 0x0

    aget v17, v12, v17

    aput v17, v6, v5

    .line 469
    const/16 v17, 0x1

    aget v17, v12, v17

    aput v17, v7, v5

    .line 470
    add-float/2addr v4, v13

    .line 471
    add-int/lit8 v17, v2, 0x1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    add-int/lit8 v17, v2, 0x1

    .line 472
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    cmpl-float v17, v4, v17

    if-lez v17, :cond_1

    .line 473
    add-int/lit8 v17, v2, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    sub-float v4, v4, v17

    .line 474
    add-int/lit8 v2, v2, 0x1

    .line 475
    invoke-virtual {v11}, Landroid/graphics/PathMeasure;->nextContour()Z

    .line 464
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 480
    :cond_2
    const/4 v15, 0x0

    .line 481
    .local v15, "x":Landroid/animation/PropertyValuesHolder;
    const/16 v16, 0x0

    .line 482
    .local v16, "y":Landroid/animation/PropertyValuesHolder;
    if-eqz p3, :cond_3

    .line 483
    move-object/from16 v0, p3

    invoke-static {v0, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 485
    :cond_3
    if-eqz p4, :cond_4

    .line 486
    move-object/from16 v0, p4

    invoke-static {v0, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 488
    :cond_4
    if-nez v15, :cond_5

    .line 489
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v16, v17, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 495
    :goto_1
    return-void

    .line 490
    :cond_5
    if-nez v16, :cond_6

    .line 491
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v15, v17, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1

    .line 493
    :cond_6
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v15, v17, v18

    const/16 v18, 0x1

    aput-object v16, v17, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1
.end method

.method private static a([Landroid/animation/Keyframe;FII)V
    .locals 5
    .param p0, "keyframes"    # [Landroid/animation/Keyframe;
    .param p1, "gap"    # F
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 806
    sub-int v3, p3, p2

    add-int/lit8 v0, v3, 0x2

    .line 807
    .local v0, "count":I
    int-to-float v3, v0

    div-float v2, p1, v3

    .line 808
    .local v2, "increment":F
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-gt v1, p3, :cond_0

    .line 809
    aget-object v3, p0, v1

    add-int/lit8 v4, v1, -0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    add-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 808
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 811
    :cond_0
    return-void
.end method

.method private static a(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 917
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    const/4 v13, 0x0

    .line 579
    .local v13, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    .local v11, "type":I
    const/4 v15, 0x3

    if-eq v11, v15, :cond_16

    const/4 v15, 0x1

    if-eq v11, v15, :cond_16

    .line 582
    const/4 v15, 0x2

    if-eq v11, v15, :cond_0

    .line 583
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 587
    :cond_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 589
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v15, "propertyValuesHolder"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 590
    sget-object v15, Lo;->i:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2, v15}, Lds;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 593
    .local v5, "a":Landroid/content/res/TypedArray;
    const-string/jumbo v15, "propertyName"

    const/16 v16, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-static {v5, v0, v15, v1}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 595
    .local v9, "propertyName":Ljava/lang/String;
    const-string/jumbo v15, "valueType"

    const/16 v16, 0x2

    const/16 v17, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v5, v0, v15, v1, v2}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v12

    .line 3692
    .local v12, "valueType":I
    const/4 v10, 0x0

    .line 3693
    const/16 v17, 0x0

    move/from16 v18, v12

    .line 3696
    :goto_1
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v15, v0, :cond_8

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_8

    .line 3698
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 3699
    const-string/jumbo v16, "keyframe"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1d

    .line 3700
    const/4 v15, 0x4

    move/from16 v0, v18

    if-ne v0, v15, :cond_1c

    .line 3701
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v15

    .line 4636
    sget-object v16, Lo;->j:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-static {v0, v1, v15, v2}, Lds;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 4639
    const-string/jumbo v15, "value"

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, v18

    invoke-static {v0, v1, v15, v2}, Lds;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    move-result-object v18

    .line 4641
    if-eqz v18, :cond_2

    const/4 v15, 0x1

    .line 4644
    :goto_2
    if-eqz v15, :cond_3

    move-object/from16 v0, v18

    iget v15, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v15}, Ls;->a(I)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 4645
    const/4 v15, 0x3

    .line 4649
    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    move/from16 v16, v15

    .line 3704
    :goto_4
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v15

    .line 4818
    sget-object v18, Lo;->j:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-static {v0, v1, v15, v2}, Lds;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    .line 4821
    const/4 v15, 0x0

    .line 4823
    const-string/jumbo v18, "fraction"

    const/16 v19, 0x3

    const/high16 v21, -0x40800000    # -1.0f

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v21

    .line 4826
    const-string/jumbo v18, "value"

    const/16 v19, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lds;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    move-result-object v22

    .line 4828
    if-eqz v22, :cond_4

    const/16 v18, 0x1

    move/from16 v19, v18

    .line 4829
    :goto_5
    const/16 v18, 0x4

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    .line 4832
    if-eqz v19, :cond_5

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ls;->a(I)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 4833
    const/16 v18, 0x3

    .line 4839
    :goto_6
    if-eqz v19, :cond_6

    .line 4840
    packed-switch v18, :pswitch_data_0

    :goto_7
    :pswitch_0
    move-object/from16 v18, v15

    .line 4858
    :goto_8
    const-string/jumbo v15, "interpolator"

    const/16 v19, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move/from16 v2, v19

    move/from16 v3, v21

    invoke-static {v0, v1, v15, v2, v3}, Lds;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v15

    .line 4860
    if-lez v15, :cond_1

    .line 4861
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lr;->a(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v15

    .line 4862
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4864
    :cond_1
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 3706
    if-eqz v18, :cond_1a

    .line 3707
    if-nez v17, :cond_19

    .line 3708
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3710
    :goto_9
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3712
    :goto_a
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    :goto_b
    move-object/from16 v17, v15

    move/from16 v18, v16

    .line 3714
    goto/16 :goto_1

    .line 4641
    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 4647
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 4828
    :cond_4
    const/16 v18, 0x0

    move/from16 v19, v18

    goto :goto_5

    .line 4835
    :cond_5
    const/16 v18, 0x0

    goto :goto_6

    .line 4842
    :pswitch_1
    const-string/jumbo v15, "value"

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v15, v2, v3}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v15

    .line 4844
    move/from16 v0, v21

    invoke-static {v0, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v15

    move-object/from16 v18, v15

    .line 4845
    goto :goto_8

    .line 4848
    :pswitch_2
    const-string/jumbo v15, "value"

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v15, v2, v3}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v15

    .line 4850
    move/from16 v0, v21

    invoke-static {v0, v15}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v15

    goto/16 :goto_7

    .line 4854
    :cond_6
    if-nez v18, :cond_7

    invoke-static/range {v21 .. v21}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v15

    :goto_c
    move-object/from16 v18, v15

    .line 4855
    goto/16 :goto_8

    :cond_7
    invoke-static/range {v21 .. v21}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v15

    goto :goto_c

    .line 3717
    :cond_8
    if-eqz v17, :cond_11

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_11

    .line 3723
    const/4 v15, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/animation/Keyframe;

    .line 3724
    add-int/lit8 v16, v19, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/animation/Keyframe;

    .line 3725
    invoke-virtual/range {v16 .. v16}, Landroid/animation/Keyframe;->getFraction()F

    move-result v20

    .line 3726
    const/high16 v21, 0x3f800000    # 1.0f

    cmpg-float v21, v20, v21

    if-gez v21, :cond_18

    .line 3727
    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_b

    .line 3728
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/animation/Keyframe;->setFraction(F)V

    move/from16 v16, v19

    .line 3734
    :goto_d
    invoke-virtual {v15}, Landroid/animation/Keyframe;->getFraction()F

    move-result v19

    .line 3735
    const/16 v20, 0x0

    cmpl-float v20, v19, v20

    if-eqz v20, :cond_9

    .line 3736
    const/16 v20, 0x0

    cmpg-float v19, v19, v20

    if-gez v19, :cond_c

    .line 3737
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 3743
    :cond_9
    :goto_e
    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/Keyframe;

    move-object/from16 v20, v0

    .line 3744
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3745
    const/16 v19, 0x0

    :goto_f
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_10

    .line 3746
    aget-object v15, v20, v19

    .line 3747
    invoke-virtual {v15}, Landroid/animation/Keyframe;->getFraction()F

    move-result v17

    const/16 v21, 0x0

    cmpg-float v17, v17, v21

    if-gez v17, :cond_a

    .line 3748
    if-nez v19, :cond_d

    .line 3749
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 3745
    :cond_a
    :goto_10
    add-int/lit8 v19, v19, 0x1

    goto :goto_f

    .line 3730
    :cond_b
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Ls;->a(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v16

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3731
    add-int/lit8 v16, v19, 0x1

    goto :goto_d

    .line 3739
    :cond_c
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v15, v0}, Ls;->a(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v15

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3740
    add-int/lit8 v16, v16, 0x1

    goto :goto_e

    .line 3750
    :cond_d
    add-int/lit8 v17, v16, -0x1

    move/from16 v0, v19

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 3751
    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_10

    .line 3757
    :cond_e
    add-int/lit8 v15, v19, 0x1

    move/from16 v17, v19

    :goto_11
    add-int/lit8 v21, v16, -0x1

    move/from16 v0, v21

    if-ge v15, v0, :cond_f

    .line 3758
    aget-object v21, v20, v15

    invoke-virtual/range {v21 .. v21}, Landroid/animation/Keyframe;->getFraction()F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-gez v21, :cond_f

    .line 3757
    add-int/lit8 v17, v15, 0x1

    move/from16 v23, v17

    move/from16 v17, v15

    move/from16 v15, v23

    goto :goto_11

    .line 3763
    :cond_f
    add-int/lit8 v15, v17, 0x1

    aget-object v15, v20, v15

    invoke-virtual {v15}, Landroid/animation/Keyframe;->getFraction()F

    move-result v15

    add-int/lit8 v21, v19, -0x1

    aget-object v21, v20, v21

    .line 3764
    invoke-virtual/range {v21 .. v21}, Landroid/animation/Keyframe;->getFraction()F

    move-result v21

    sub-float v15, v15, v21

    .line 3765
    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v0, v15, v1, v2}, Ls;->a([Landroid/animation/Keyframe;FII)V

    goto/16 :goto_10

    .line 3769
    :cond_10
    move-object/from16 v0, v20

    invoke-static {v9, v0}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 3770
    const/4 v15, 0x3

    move/from16 v0, v18

    if-ne v0, v15, :cond_11

    .line 3771
    invoke-static {}, Lt;->a()Lt;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 601
    .local v10, "pvh":Landroid/animation/PropertyValuesHolder;
    :cond_11
    if-nez v10, :cond_12

    .line 602
    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v5, v12, v15, v0, v9}, Ls;->a(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 607
    :cond_12
    if-eqz v10, :cond_14

    .line 608
    if-nez v13, :cond_13

    .line 609
    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .restart local v13    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    :cond_13
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_14
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 616
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v9    # "propertyName":Ljava/lang/String;
    .end local v10    # "pvh":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "valueType":I
    :cond_15
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto/16 :goto_0

    .line 619
    .end local v8    # "name":Ljava/lang/String;
    :cond_16
    const/4 v14, 0x0

    .line 620
    .local v14, "valuesArray":[Landroid/animation/PropertyValuesHolder;
    if-eqz v13, :cond_17

    .line 621
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 622
    .local v6, "count":I
    new-array v14, v6, [Landroid/animation/PropertyValuesHolder;

    .line 623
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_12
    if-ge v7, v6, :cond_17

    .line 624
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/animation/PropertyValuesHolder;

    aput-object v15, v14, v7

    .line 623
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 627
    .end local v6    # "count":I
    .end local v7    # "i":I
    :cond_17
    return-object v14

    .end local v14    # "valuesArray":[Landroid/animation/PropertyValuesHolder;
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "propertyName":Ljava/lang/String;
    .restart local v12    # "valueType":I
    :cond_18
    move/from16 v16, v19

    goto/16 :goto_d

    :cond_19
    move-object/from16 v15, v17

    goto/16 :goto_9

    :cond_1a
    move-object/from16 v15, v17

    goto/16 :goto_a

    :cond_1b
    move/from16 v18, v16

    goto/16 :goto_6

    :cond_1c
    move/from16 v16, v18

    goto/16 :goto_4

    :cond_1d
    move-object/from16 v15, v17

    move/from16 v16, v18

    goto/16 :goto_b

    .line 4840
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
