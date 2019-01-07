.class public abstract Landroid/support/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/Transition$c;,
        Landroid/support/transition/Transition$b;,
        Landroid/support/transition/Transition$a;,
        Landroid/support/transition/Transition$d;,
        Landroid/support/transition/Transition$MatchOrder;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final DEFAULT_MATCH_ORDER:[I

.field private static final LOG_TAG:Ljava/lang/String; = "Transition"

.field private static final MATCH_FIRST:I = 0x1

.field public static final MATCH_ID:I = 0x3

.field private static final MATCH_ID_STR:Ljava/lang/String; = "id"

.field public static final MATCH_INSTANCE:I = 0x1

.field private static final MATCH_INSTANCE_STR:Ljava/lang/String; = "instance"

.field public static final MATCH_ITEM_ID:I = 0x4

.field private static final MATCH_ITEM_ID_STR:Ljava/lang/String; = "itemId"

.field private static final MATCH_LAST:I = 0x4

.field public static final MATCH_NAME:I = 0x2

.field private static final MATCH_NAME_STR:Ljava/lang/String; = "name"

.field private static final STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

.field private static sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lfk",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/Transition$a;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mCanRemoveViews:Z

.field private mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mDuration:J

.field private mEndValues:Lbi;

.field private mEndValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbh;",
            ">;"
        }
    .end annotation
.end field

.field private mEnded:Z

.field private mEpicenterCallback:Landroid/support/transition/Transition$c;

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/Transition$d;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchOrder:[I

.field private mName:Ljava/lang/String;

.field private mNameOverrides:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNumInstances:I

.field mParent:Landroid/support/transition/TransitionSet;

.field private mPathMotion:Landroid/support/transition/PathMotion;

.field private mPaused:Z

.field mPropagation:Lbf;

.field private mSceneRoot:Landroid/view/ViewGroup;

.field private mStartDelay:J

.field private mStartValues:Lbi;

.field private mStartValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbh;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNameExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    .line 169
    new-instance v0, Landroid/support/transition/Transition$1;

    invoke-direct {v0}, Landroid/support/transition/Transition$1;-><init>()V

    sput-object v0, Landroid/support/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

    .line 203
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    return-void

    .line 162
    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mName:Ljava/lang/String;

    .line 181
    iput-wide v4, p0, Landroid/support/transition/Transition;->mStartDelay:J

    .line 182
    iput-wide v4, p0, Landroid/support/transition/Transition;->mDuration:J

    .line 183
    iput-object v1, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 186
    iput-object v1, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 187
    iput-object v1, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 188
    iput-object v1, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 189
    iput-object v1, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 190
    iput-object v1, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 191
    iput-object v1, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 192
    iput-object v1, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 193
    iput-object v1, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 194
    iput-object v1, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Lbi;

    invoke-direct {v0}, Lbi;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mStartValues:Lbi;

    .line 196
    new-instance v0, Lbi;

    invoke-direct {v0}, Lbi;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mEndValues:Lbi;

    .line 197
    iput-object v1, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    .line 198
    sget-object v0, Landroid/support/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v0, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    .line 207
    iput-object v1, p0, Landroid/support/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 215
    iput-boolean v2, p0, Landroid/support/transition/Transition;->mCanRemoveViews:Z

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 223
    iput v2, p0, Landroid/support/transition/Transition;->mNumInstances:I

    .line 226
    iput-boolean v2, p0, Landroid/support/transition/Transition;->mPaused:Z

    .line 230
    iput-boolean v2, p0, Landroid/support/transition/Transition;->mEnded:Z

    .line 233
    iput-object v1, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 252
    sget-object v0, Landroid/support/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

    iput-object v0, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/support/transition/Transition;->mName:Ljava/lang/String;

    .line 181
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Landroid/support/transition/Transition;->mStartDelay:J

    .line 182
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Landroid/support/transition/Transition;->mDuration:J

    .line 183
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 184
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 185
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 186
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 187
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 188
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 189
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 190
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 191
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 192
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 193
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 194
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 195
    new-instance v8, Lbi;

    invoke-direct {v8}, Lbi;-><init>()V

    iput-object v8, p0, Landroid/support/transition/Transition;->mStartValues:Lbi;

    .line 196
    new-instance v8, Lbi;

    invoke-direct {v8}, Lbi;-><init>()V

    iput-object v8, p0, Landroid/support/transition/Transition;->mEndValues:Lbi;

    .line 197
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    .line 198
    sget-object v8, Landroid/support/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v8, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    .line 207
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/support/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 215
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/support/transition/Transition;->mCanRemoveViews:Z

    .line 219
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/support/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 223
    const/4 v8, 0x0

    iput v8, p0, Landroid/support/transition/Transition;->mNumInstances:I

    .line 226
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/support/transition/Transition;->mPaused:Z

    .line 230
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/support/transition/Transition;->mEnded:Z

    .line 233
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 237
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 252
    sget-object v8, Landroid/support/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

    iput-object v8, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    .line 273
    sget-object v8, Lbc;->c:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    move-object v4, p2

    .line 274
    check-cast v4, Landroid/content/res/XmlResourceParser;

    .line 275
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    const-string/jumbo v8, "duration"

    const/4 v9, 0x1

    const/4 v10, -0x1

    invoke-static {v0, v4, v8, v9, v10}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v8

    int-to-long v2, v8

    .line 277
    .local v2, "duration":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-ltz v8, :cond_0

    .line 278
    invoke-virtual {p0, v2, v3}, Landroid/support/transition/Transition;->setDuration(J)Landroid/support/transition/Transition;

    .line 280
    :cond_0
    const-string/jumbo v8, "startDelay"

    const/4 v9, 0x2

    const/4 v10, -0x1

    invoke-static {v0, v4, v8, v9, v10}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v8

    int-to-long v6, v8

    .line 282
    .local v6, "startDelay":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    .line 283
    invoke-virtual {p0, v6, v7}, Landroid/support/transition/Transition;->setStartDelay(J)Landroid/support/transition/Transition;

    .line 285
    :cond_1
    const-string/jumbo v8, "interpolator"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v0, v4, v8, v9, v10}, Lds;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    .line 287
    .local v5, "resId":I
    if-lez v5, :cond_2

    .line 288
    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/support/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;

    .line 290
    :cond_2
    const-string/jumbo v8, "matchOrder"

    const/4 v9, 0x3

    invoke-static {v0, v4, v8, v9}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "matchOrder":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 293
    invoke-static {v1}, Landroid/support/transition/Transition;->parseMatchOrder(Ljava/lang/String;)[I

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/support/transition/Transition;->setMatchOrder([I)V

    .line 295
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 296
    return-void
.end method

.method static synthetic access$000(Landroid/support/transition/Transition;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/support/transition/Transition;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/support/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addUnmatched(Lfk;Lfk;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfk",
            "<",
            "Landroid/view/View;",
            "Lbh;",
            ">;",
            "Lfk",
            "<",
            "Landroid/view/View;",
            "Lbh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "unmatchedStart":Lfk;, "Lfk<Landroid/view/View;Lbh;>;"
    .local p2, "unmatchedEnd":Lfk;, "Lfk<Landroid/view/View;Lbh;>;"
    const/4 v4, 0x0

    .line 642
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lfk;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 643
    invoke-virtual {p1, v1}, Lfk;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbh;

    .line 644
    .local v2, "start":Lbh;
    iget-object v3, v2, Lbh;->b:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 645
    iget-object v3, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v3, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 651
    .end local v2    # "start":Lbh;
    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2}, Lfk;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 652
    invoke-virtual {p2, v1}, Lfk;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbh;

    .line 653
    .local v0, "end":Lbh;
    iget-object v3, v0, Lbh;->b:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 654
    iget-object v3, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    iget-object v3, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 658
    .end local v0    # "end":Lbh;
    :cond_3
    return-void
.end method

.method private static addViewValues(Lbi;Landroid/view/View;Lbh;)V
    .locals 9
    .param p0, "transitionValuesMaps"    # Lbi;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "transitionValues"    # Lbh;

    .prologue
    const/4 v8, 0x0

    .line 1529
    iget-object v7, p0, Lbi;->a:Lfk;

    invoke-virtual {v7, p1, p2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1531
    .local v1, "id":I
    if-ltz v1, :cond_0

    .line 1532
    iget-object v7, p0, Lbi;->b:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    if-ltz v7, :cond_3

    .line 1534
    iget-object v7, p0, Lbi;->b:Landroid/util/SparseArray;

    invoke-virtual {v7, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1539
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    .line 1540
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 1541
    iget-object v7, p0, Lbi;->d:Lfk;

    invoke-virtual {v7, v5}, Lfk;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1543
    iget-object v7, p0, Lbi;->d:Lfk;

    invoke-virtual {v7, v5, v8}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/ListView;

    if-eqz v7, :cond_2

    .line 1549
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 1550
    .local v4, "listview":Landroid/widget/ListView;
    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1551
    invoke-virtual {v4, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    .line 1552
    .local v6, "position":I
    invoke-virtual {v4, v6}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    .line 1553
    .local v2, "itemId":J
    iget-object v7, p0, Lbi;->c:Lfp;

    invoke-virtual {v7, v2, v3}, Lfp;->d(J)I

    move-result v7

    if-ltz v7, :cond_5

    .line 1555
    iget-object v7, p0, Lbi;->c:Lfp;

    .line 4096
    invoke-virtual {v7, v2, v3, v8}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1555
    check-cast v0, Landroid/view/View;

    .line 1556
    .local v0, "alreadyMatched":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1557
    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Z)V

    .line 1558
    iget-object v7, p0, Lbi;->c:Lfp;

    invoke-virtual {v7, v2, v3, v8}, Lfp;->b(JLjava/lang/Object;)V

    .line 1566
    .end local v0    # "alreadyMatched":Landroid/view/View;
    .end local v2    # "itemId":J
    .end local v4    # "listview":Landroid/widget/ListView;
    .end local v6    # "position":I
    :cond_2
    :goto_2
    return-void

    .line 1536
    .end local v5    # "name":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lbi;->b:Landroid/util/SparseArray;

    invoke-virtual {v7, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1545
    .restart local v5    # "name":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lbi;->d:Lfk;

    invoke-virtual {v7, v5, p1}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1561
    .restart local v2    # "itemId":J
    .restart local v4    # "listview":Landroid/widget/ListView;
    .restart local v6    # "position":I
    :cond_5
    const/4 v7, 0x1

    invoke-static {p1, v7}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Z)V

    .line 1562
    iget-object v7, p0, Lbi;->c:Lfp;

    invoke-virtual {v7, v2, v3, p1}, Lfp;->b(JLjava/lang/Object;)V

    goto :goto_2
.end method

.method private static alreadyContains([II)Z
    .locals 3
    .param p0, "array"    # [I
    .param p1, "searchIndex"    # I

    .prologue
    .line 526
    aget v1, p0, p1

    .line 527
    .local v1, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 528
    aget v2, p0, v0

    if-ne v2, v1, :cond_0

    .line 529
    const/4 v2, 0x1

    .line 532
    :goto_1
    return v2

    .line 527
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 532
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private captureHierarchy(Landroid/view/View;Z)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .prologue
    .line 1596
    if-nez p1, :cond_1

    .line 1651
    :cond_0
    return-void

    .line 1599
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1600
    .local v1, "id":I
    iget-object v5, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1603
    :cond_2
    iget-object v5, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1606
    :cond_3
    iget-object v5, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    .line 1607
    iget-object v5, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1608
    .local v2, "numTypes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 1609
    iget-object v5, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1608
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1614
    .end local v0    # "i":I
    .end local v2    # "numTypes":I
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_5

    .line 1615
    new-instance v4, Lbh;

    invoke-direct {v4}, Lbh;-><init>()V

    .line 1616
    .local v4, "values":Lbh;
    iput-object p1, v4, Lbh;->b:Landroid/view/View;

    .line 1617
    if-eqz p2, :cond_8

    .line 1618
    invoke-virtual {p0, v4}, Landroid/support/transition/Transition;->captureStartValues(Lbh;)V

    .line 1622
    :goto_1
    iget-object v5, v4, Lbh;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1623
    invoke-virtual {p0, v4}, Landroid/support/transition/Transition;->capturePropagationValues(Lbh;)V

    .line 1624
    if-eqz p2, :cond_9

    .line 1625
    iget-object v5, p0, Landroid/support/transition/Transition;->mStartValues:Lbi;

    invoke-static {v5, p1, v4}, Landroid/support/transition/Transition;->addViewValues(Lbi;Landroid/view/View;Lbh;)V

    .line 1630
    .end local v4    # "values":Lbh;
    :cond_5
    :goto_2
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    .line 1632
    iget-object v5, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1635
    :cond_6
    iget-object v5, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1638
    :cond_7
    iget-object v5, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    if-eqz v5, :cond_a

    .line 1639
    iget-object v5, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1640
    .restart local v2    # "numTypes":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v2, :cond_a

    .line 1641
    iget-object v5, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1640
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1620
    .end local v0    # "i":I
    .end local v2    # "numTypes":I
    .restart local v4    # "values":Lbh;
    :cond_8
    invoke-virtual {p0, v4}, Landroid/support/transition/Transition;->captureEndValues(Lbh;)V

    goto :goto_1

    .line 1627
    :cond_9
    iget-object v5, p0, Landroid/support/transition/Transition;->mEndValues:Lbi;

    invoke-static {v5, p1, v4}, Landroid/support/transition/Transition;->addViewValues(Lbi;Landroid/view/View;Lbh;)V

    goto :goto_2

    .end local v4    # "values":Lbh;
    :cond_a
    move-object v3, p1

    .line 1646
    check-cast v3, Landroid/view/ViewGroup;

    .line 1647
    .local v3, "parent":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 1648
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Landroid/support/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    .line 1647
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;
    .locals 1
    .param p2, "targetId"    # I
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1306
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-lez p2, :cond_0

    .line 1307
    if-eqz p3, :cond_1

    .line 1308
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/transition/Transition$b;->a(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1313
    :cond_0
    :goto_0
    return-object p1

    .line 1310
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/transition/Transition$b;->b(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0
.end method

.method private static excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;
    .locals 0
    .param p2, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;Z)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1157
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    .line 1158
    if-eqz p2, :cond_1

    .line 1159
    invoke-static {p0, p1}, Landroid/support/transition/Transition$b;->a(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1164
    :cond_0
    :goto_0
    return-object p0

    .line 1161
    :cond_1
    invoke-static {p0, p1}, Landroid/support/transition/Transition$b;->b(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0
.end method

.method private excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;
    .locals 0
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/lang/Class;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1389
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class;>;"
    if-eqz p2, :cond_0

    .line 1390
    if-eqz p3, :cond_1

    .line 1391
    invoke-static {p1, p2}, Landroid/support/transition/Transition$b;->a(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1396
    :cond_0
    :goto_0
    return-object p1

    .line 1393
    :cond_1
    invoke-static {p1, p2}, Landroid/support/transition/Transition$b;->b(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0
.end method

.method private excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;
    .locals 0
    .param p2, "target"    # Landroid/view/View;
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1321
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p2, :cond_0

    .line 1322
    if-eqz p3, :cond_1

    .line 1323
    invoke-static {p1, p2}, Landroid/support/transition/Transition$b;->a(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1328
    :cond_0
    :goto_0
    return-object p1

    .line 1325
    :cond_1
    invoke-static {p1, p2}, Landroid/support/transition/Transition$b;->b(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0
.end method

.method private static getRunningAnimators()Lfk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfk",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/Transition$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 855
    sget-object v1, Landroid/support/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfk;

    .line 856
    .local v0, "runningAnimators":Lfk;, "Lfk<Landroid/animation/Animator;Landroid/support/transition/Transition$a;>;"
    if-nez v0, :cond_0

    .line 857
    new-instance v0, Lfk;

    .end local v0    # "runningAnimators":Lfk;, "Lfk<Landroid/animation/Animator;Landroid/support/transition/Transition$a;>;"
    invoke-direct {v0}, Lfk;-><init>()V

    .line 858
    .restart local v0    # "runningAnimators":Lfk;, "Lfk<Landroid/animation/Animator;Landroid/support/transition/Transition$a;>;"
    sget-object v1, Landroid/support/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 860
    :cond_0
    return-object v0
.end method

.method private static isValidMatch(I)Z
    .locals 1
    .param p0, "match"    # I

    .prologue
    .line 522
    if-lez p0, :cond_0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValueChanged(Lbh;Lbh;Ljava/lang/String;)Z
    .locals 4
    .param p0, "oldValues"    # Lbh;
    .param p1, "newValues"    # Lbh;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1860
    iget-object v3, p0, Lbh;->a:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1861
    .local v2, "oldValue":Ljava/lang/Object;
    iget-object v3, p1, Lbh;->a:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1863
    .local v1, "newValue":Ljava/lang/Object;
    if-nez v2, :cond_0

    if-eqz v1, :cond_3

    .line 1866
    :cond_0
    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 1878
    .local v0, "changed":Z
    :cond_1
    :goto_0
    return v0

    .line 1871
    .end local v0    # "changed":Z
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchIds(Lfk;Lfk;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfk",
            "<",
            "Landroid/view/View;",
            "Lbh;",
            ">;",
            "Lfk",
            "<",
            "Landroid/view/View;",
            "Lbh;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p1, "unmatchedStart":Lfk;, "Lfk<Landroid/view/View;Lbh;>;"
    .local p2, "unmatchedEnd":Lfk;, "Lfk<Landroid/view/View;Lbh;>;"
    .local p3, "startIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    .local p4, "endIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 590
    .local v3, "numStartIds":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 591
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 592
    .local v5, "startView":Landroid/view/View;
    if-eqz v5, :cond_0

    invoke-virtual {p0, v5}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 593
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {p4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 594
    .local v1, "endView":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 595
    invoke-virtual {p1, v5}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbh;

    .line 596
    .local v4, "startValues":Lbh;
    invoke-virtual {p2, v1}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbh;

    .line 597
    .local v0, "endValues":Lbh;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 598
    iget-object v6, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    iget-object v6, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    invoke-virtual {p1, v5}, Lfk;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    invoke-virtual {p2, v1}, Lfk;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    .end local v0    # "endValues":Lbh;
    .end local v1    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Lbh;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 606
    .end local v5    # "startView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private matchInstances(Lfk;Lfk;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfk",
            "<",
            "Landroid/view/View;",
            "Lbh;",
            ">;",
            "Lfk",
            "<",
            "Landroid/view/View;",
            "Lbh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 541
    .local p1, "unmatchedStart":Lfk;, "Lfk<Landroid/view/View;Lbh;>;"
    .local p2, "unmatchedEnd":Lfk;, "Lfk<Landroid/view/View;Lbh;>;"
    invoke-virtual {p1}, Lfk;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 542
    invoke-virtual {p1, v1}, Lfk;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 543
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 544
    invoke-virtual {p2, v3}, Lfk;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbh;

    .line 545
    .local v0, "end":Lbh;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lbh;->b:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lbh;->b:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 546
    invoke-virtual {p1, v1}, Lfk;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbh;

    .line 547
    .local v2, "start":Lbh;
    iget-object v4, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v4, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    .end local v0    # "end":Lbh;
    .end local v2    # "start":Lbh;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 552
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private matchItemIds(Lfk;Lfk;Lfp;Lfp;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfk",
            "<",
            "Landroid/view/View;",
            "Lbh;",
            ">;",
            "Lfk",
            "<",
            "Landroid/view/View;",
            "Lbh;",
            ">;",
            "Lfp",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lfp",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 562
    .local p1, "unmatchedStart":Lfk;, "Lfk<Landroid/view/View;Lbh;>;"
    .local p2, "unmatchedEnd":Lfk;, "Lfk<Landroid/view/View;Lbh;>;"
    .local p3, "startItemIds":Lfp;, "Lfp<Landroid/view/View;>;"
    .local p4, "endItemIds":Lfp;, "Lfp<Landroid/view/View;>;"
    invoke-virtual {p3}, Lfp;->a()I

    move-result v3

    .line 563
    .local v3, "numStartIds":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 564
    invoke-virtual {p3, v2}, Lfp;->b(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 565
    .local v5, "startView":Landroid/view/View;
    if-eqz v5, :cond_0

    invoke-virtual {p0, v5}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 566
    invoke-virtual {p3, v2}, Lfp;->a(I)J

    move-result-wide v6

    .line 3096
    const/4 v8, 0x0

    invoke-virtual {p4, v6, v7, v8}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 566
    check-cast v1, Landroid/view/View;

    .line 567
    .local v1, "endView":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 568
    invoke-virtual {p1, v5}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbh;

    .line 569
    .local v4, "startValues":Lbh;
    invoke-virtual {p2, v1}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbh;

    .line 570
    .local v0, "endValues":Lbh;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 571
    iget-object v6, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    iget-object v6, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-virtual {p1, v5}, Lfk;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    invoke-virtual {p2, v1}, Lfk;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    .end local v0    # "endValues":Lbh;
    .end local v1    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Lbh;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 579
    .end local v5    # "startView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private matchNames(Lfk;Lfk;Lfk;Lfk;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfk",
            "<",
            "Landroid/view/View;",
            "Lbh;",
            ">;",
            "Lfk",
            "<",
            "Landroid/view/View;",
            "Lbh;",
            ">;",
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 616
    .local p1, "unmatchedStart":Lfk;, "Lfk<Landroid/view/View;Lbh;>;"
    .local p2, "unmatchedEnd":Lfk;, "Lfk<Landroid/view/View;Lbh;>;"
    .local p3, "startNames":Lfk;, "Lfk<Ljava/lang/String;Landroid/view/View;>;"
    .local p4, "endNames":Lfk;, "Lfk<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p3}, Lfk;->size()I

    move-result v3

    .line 617
    .local v3, "numStartNames":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 618
    invoke-virtual {p3, v2}, Lfk;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 619
    .local v5, "startView":Landroid/view/View;
    if-eqz v5, :cond_0

    invoke-virtual {p0, v5}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 620
    invoke-virtual {p3, v2}, Lfk;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p4, v6}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 621
    .local v1, "endView":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 622
    invoke-virtual {p1, v5}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbh;

    .line 623
    .local v4, "startValues":Lbh;
    invoke-virtual {p2, v1}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbh;

    .line 624
    .local v0, "endValues":Lbh;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 625
    iget-object v6, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    iget-object v6, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    invoke-virtual {p1, v5}, Lfk;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    invoke-virtual {p2, v1}, Lfk;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    .end local v0    # "endValues":Lbh;
    .end local v1    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Lbh;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 633
    .end local v5    # "startView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private matchStartAndEnd(Lbi;Lbi;)V
    .locals 5
    .param p1, "startValues"    # Lbi;
    .param p2, "endValues"    # Lbi;

    .prologue
    .line 662
    new-instance v2, Lfk;

    iget-object v3, p1, Lbi;->a:Lfk;

    invoke-direct {v2, v3}, Lfk;-><init>(Lfw;)V

    .line 663
    .local v2, "unmatchedStart":Lfk;, "Lfk<Landroid/view/View;Lbh;>;"
    new-instance v1, Lfk;

    iget-object v3, p2, Lbi;->a:Lfk;

    invoke-direct {v1, v3}, Lfk;-><init>(Lfw;)V

    .line 665
    .local v1, "unmatchedEnd":Lfk;, "Lfk<Landroid/view/View;Lbh;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 666
    iget-object v3, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_0

    .line 665
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 668
    :pswitch_0
    invoke-direct {p0, v2, v1}, Landroid/support/transition/Transition;->matchInstances(Lfk;Lfk;)V

    goto :goto_1

    .line 671
    :pswitch_1
    iget-object v3, p1, Lbi;->d:Lfk;

    iget-object v4, p2, Lbi;->d:Lfk;

    invoke-direct {p0, v2, v1, v3, v4}, Landroid/support/transition/Transition;->matchNames(Lfk;Lfk;Lfk;Lfk;)V

    goto :goto_1

    .line 675
    :pswitch_2
    iget-object v3, p1, Lbi;->b:Landroid/util/SparseArray;

    iget-object v4, p2, Lbi;->b:Landroid/util/SparseArray;

    invoke-direct {p0, v2, v1, v3, v4}, Landroid/support/transition/Transition;->matchIds(Lfk;Lfk;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_1

    .line 679
    :pswitch_3
    iget-object v3, p1, Lbi;->c:Lfp;

    iget-object v4, p2, Lbi;->c:Lfp;

    invoke-direct {p0, v2, v1, v3, v4}, Landroid/support/transition/Transition;->matchItemIds(Lfk;Lfk;Lfp;Lfp;)V

    goto :goto_1

    .line 684
    :cond_0
    invoke-direct {p0, v2, v1}, Landroid/support/transition/Transition;->addUnmatched(Lfk;Lfk;)V

    .line 685
    return-void

    .line 666
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static parseMatchOrder(Ljava/lang/String;)[I
    .locals 8
    .param p0, "matchOrderString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 300
    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v5, ","

    invoke-direct {v3, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .local v3, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v1, v5, [I

    .line 303
    .local v1, "matches":[I
    const/4 v0, 0x0

    .line 304
    .local v0, "index":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 305
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 306
    .local v4, "token":Ljava/lang/String;
    const-string/jumbo v5, "id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 307
    const/4 v5, 0x3

    aput v5, v1, v0

    .line 323
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 324
    goto :goto_0

    .line 308
    :cond_0
    const-string/jumbo v5, "instance"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 309
    const/4 v5, 0x1

    aput v5, v1, v0

    goto :goto_1

    .line 310
    :cond_1
    const-string/jumbo v5, "name"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 311
    const/4 v5, 0x2

    aput v5, v1, v0

    goto :goto_1

    .line 312
    :cond_2
    const-string/jumbo v5, "itemId"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 313
    const/4 v5, 0x4

    aput v5, v1, v0

    goto :goto_1

    .line 314
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 316
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    new-array v2, v5, [I

    .line 317
    .local v2, "smallerMatches":[I
    invoke-static {v1, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    move-object v1, v2

    .line 319
    add-int/lit8 v0, v0, -0x1

    .line 320
    goto :goto_1

    .line 321
    .end local v2    # "smallerMatches":[I
    :cond_4
    new-instance v5, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Unknown match type in matchOrder: \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 325
    .end local v4    # "token":Ljava/lang/String;
    :cond_5
    return-object v1
.end method

.method private runAnimator(Landroid/animation/Animator;Lfk;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Lfk",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/Transition$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 892
    .local p2, "runningAnimators":Lfk;, "Lfk<Landroid/animation/Animator;Landroid/support/transition/Transition$a;>;"
    if-eqz p1, :cond_0

    .line 894
    new-instance v0, Landroid/support/transition/Transition$2;

    invoke-direct {v0, p0, p2}, Landroid/support/transition/Transition$2;-><init>(Landroid/support/transition/Transition;Lfk;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 906
    invoke-virtual {p0, p1}, Landroid/support/transition/Transition;->animate(Landroid/animation/Animator;)V

    .line 908
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Landroid/support/transition/Transition$d;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "listener"    # Landroid/support/transition/Transition$d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 2031
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2032
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2034
    :cond_0
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2035
    return-object p0
.end method

.method public addTarget(I)Landroid/support/transition/Transition;
    .locals 2
    .param p1, "targetId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1020
    if-lez p1, :cond_0

    .line 1021
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1023
    :cond_0
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 996
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    return-object p0
.end method

.method public addTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "targetType"    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1075
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1076
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 1078
    :cond_0
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    return-object p0
.end method

.method public addTarget(Ljava/lang/String;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1045
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1046
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 1048
    :cond_0
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    return-object p0
.end method

.method protected animate(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 1893
    if-nez p1, :cond_0

    .line 1894
    invoke-virtual {p0}, Landroid/support/transition/Transition;->end()V

    .line 1914
    :goto_0
    return-void

    .line 1896
    :cond_0
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1897
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1899
    :cond_1
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getStartDelay()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 1900
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getStartDelay()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1902
    :cond_2
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1903
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1905
    :cond_3
    new-instance v0, Landroid/support/transition/Transition$3;

    invoke-direct {v0, p0}, Landroid/support/transition/Transition$3;-><init>(Landroid/support/transition/Transition;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1912
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method protected cancel()V
    .locals 6
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2006
    iget-object v5, p0, Landroid/support/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2007
    .local v2, "numAnimators":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2008
    iget-object v5, p0, Landroid/support/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 2009
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2007
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2011
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_0
    iget-object v5, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 2012
    iget-object v5, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2013
    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2014
    .local v4, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$d;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2015
    .local v3, "numListeners":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 2016
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/Transition$d;

    invoke-interface {v5}, Landroid/support/transition/Transition$d;->a()V

    .line 2015
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2019
    .end local v3    # "numListeners":I
    .end local v4    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$d;>;"
    :cond_1
    return-void
.end method

.method public abstract captureEndValues(Lbh;)V
    .param p1    # Lbh;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method capturePropagationValues(Lbh;)V
    .locals 5
    .param p1, "transitionValues"    # Lbh;

    .prologue
    .line 2178
    iget-object v3, p0, Landroid/support/transition/Transition;->mPropagation:Lbf;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lbh;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2179
    iget-object v3, p0, Landroid/support/transition/Transition;->mPropagation:Lbf;

    invoke-virtual {v3}, Lbf;->a()[Ljava/lang/String;

    move-result-object v2

    .line 2180
    .local v2, "propertyNames":[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 2194
    .end local v2    # "propertyNames":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2183
    .restart local v2    # "propertyNames":[Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    .line 2184
    .local v0, "containsAll":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 2185
    iget-object v3, p1, Lbh;->a:Ljava/util/Map;

    aget-object v4, v2, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2186
    const/4 v0, 0x0

    .line 2190
    :cond_2
    if-nez v0, :cond_0

    .line 2191
    iget-object v3, p0, Landroid/support/transition/Transition;->mPropagation:Lbf;

    invoke-virtual {v3, p1}, Lbf;->a(Lbh;)V

    goto :goto_0

    .line 2184
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public abstract captureStartValues(Lbh;)V
    .param p1    # Lbh;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public captureValues(Landroid/view/ViewGroup;Z)V
    .locals 9
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "start"    # Z

    .prologue
    .line 1466
    invoke-virtual {p0, p2}, Landroid/support/transition/Transition;->clearValues(Z)V

    .line 1467
    iget-object v8, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_0

    iget-object v8, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_9

    :cond_0
    iget-object v8, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 1468
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_1
    iget-object v8, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 1469
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1470
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v8, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_6

    .line 1471
    iget-object v8, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1472
    .local v2, "id":I
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1473
    .local v7, "view":Landroid/view/View;
    if-eqz v7, :cond_3

    .line 1474
    new-instance v6, Lbh;

    invoke-direct {v6}, Lbh;-><init>()V

    .line 1475
    .local v6, "values":Lbh;
    iput-object v7, v6, Lbh;->b:Landroid/view/View;

    .line 1476
    if-eqz p2, :cond_4

    .line 1477
    invoke-virtual {p0, v6}, Landroid/support/transition/Transition;->captureStartValues(Lbh;)V

    .line 1481
    :goto_1
    iget-object v8, v6, Lbh;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1482
    invoke-virtual {p0, v6}, Landroid/support/transition/Transition;->capturePropagationValues(Lbh;)V

    .line 1483
    if-eqz p2, :cond_5

    .line 1484
    iget-object v8, p0, Landroid/support/transition/Transition;->mStartValues:Lbi;

    invoke-static {v8, v7, v6}, Landroid/support/transition/Transition;->addViewValues(Lbi;Landroid/view/View;Lbh;)V

    .line 1470
    .end local v6    # "values":Lbh;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1479
    .restart local v6    # "values":Lbh;
    :cond_4
    invoke-virtual {p0, v6}, Landroid/support/transition/Transition;->captureEndValues(Lbh;)V

    goto :goto_1

    .line 1486
    :cond_5
    iget-object v8, p0, Landroid/support/transition/Transition;->mEndValues:Lbi;

    invoke-static {v8, v7, v6}, Landroid/support/transition/Transition;->addViewValues(Lbi;Landroid/view/View;Lbh;)V

    goto :goto_2

    .line 1490
    .end local v2    # "id":I
    .end local v6    # "values":Lbh;
    .end local v7    # "view":Landroid/view/View;
    :cond_6
    const/4 v1, 0x0

    :goto_3
    iget-object v8, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_a

    .line 1491
    iget-object v8, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1492
    .restart local v7    # "view":Landroid/view/View;
    new-instance v6, Lbh;

    invoke-direct {v6}, Lbh;-><init>()V

    .line 1493
    .restart local v6    # "values":Lbh;
    iput-object v7, v6, Lbh;->b:Landroid/view/View;

    .line 1494
    if-eqz p2, :cond_7

    .line 1495
    invoke-virtual {p0, v6}, Landroid/support/transition/Transition;->captureStartValues(Lbh;)V

    .line 1499
    :goto_4
    iget-object v8, v6, Lbh;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    invoke-virtual {p0, v6}, Landroid/support/transition/Transition;->capturePropagationValues(Lbh;)V

    .line 1501
    if-eqz p2, :cond_8

    .line 1502
    iget-object v8, p0, Landroid/support/transition/Transition;->mStartValues:Lbi;

    invoke-static {v8, v7, v6}, Landroid/support/transition/Transition;->addViewValues(Lbi;Landroid/view/View;Lbh;)V

    .line 1490
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1497
    :cond_7
    invoke-virtual {p0, v6}, Landroid/support/transition/Transition;->captureEndValues(Lbh;)V

    goto :goto_4

    .line 1504
    :cond_8
    iget-object v8, p0, Landroid/support/transition/Transition;->mEndValues:Lbi;

    invoke-static {v8, v7, v6}, Landroid/support/transition/Transition;->addViewValues(Lbi;Landroid/view/View;Lbh;)V

    goto :goto_5

    .line 1508
    .end local v1    # "i":I
    .end local v6    # "values":Lbh;
    .end local v7    # "view":Landroid/view/View;
    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    .line 1510
    :cond_a
    if-nez p2, :cond_d

    iget-object v8, p0, Landroid/support/transition/Transition;->mNameOverrides:Lfk;

    if-eqz v8, :cond_d

    .line 1511
    iget-object v8, p0, Landroid/support/transition/Transition;->mNameOverrides:Lfk;

    invoke-virtual {v8}, Lfk;->size()I

    move-result v3

    .line 1512
    .local v3, "numOverrides":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1513
    .local v4, "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, v3, :cond_b

    .line 1514
    iget-object v8, p0, Landroid/support/transition/Transition;->mNameOverrides:Lfk;

    invoke-virtual {v8, v1}, Lfk;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1515
    .local v0, "fromName":Ljava/lang/String;
    iget-object v8, p0, Landroid/support/transition/Transition;->mStartValues:Lbi;

    iget-object v8, v8, Lbi;->d:Lfk;

    invoke-virtual {v8, v0}, Lfk;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1513
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1517
    .end local v0    # "fromName":Ljava/lang/String;
    :cond_b
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v3, :cond_d

    .line 1518
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1519
    .restart local v7    # "view":Landroid/view/View;
    if-eqz v7, :cond_c

    .line 1520
    iget-object v8, p0, Landroid/support/transition/Transition;->mNameOverrides:Lfk;

    invoke-virtual {v8, v1}, Lfk;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1521
    .local v5, "toName":Ljava/lang/String;
    iget-object v8, p0, Landroid/support/transition/Transition;->mStartValues:Lbi;

    iget-object v8, v8, Lbi;->d:Lfk;

    invoke-virtual {v8, v5, v7}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    .end local v5    # "toName":Ljava/lang/String;
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1525
    .end local v1    # "i":I
    .end local v3    # "numOverrides":I
    .end local v4    # "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "view":Landroid/view/View;
    :cond_d
    return-void
.end method

.method public clearValues(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 1574
    if-eqz p1, :cond_0

    .line 1575
    iget-object v0, p0, Landroid/support/transition/Transition;->mStartValues:Lbi;

    iget-object v0, v0, Lbi;->a:Lfk;

    invoke-virtual {v0}, Lfk;->clear()V

    .line 1576
    iget-object v0, p0, Landroid/support/transition/Transition;->mStartValues:Lbi;

    iget-object v0, v0, Lbi;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1577
    iget-object v0, p0, Landroid/support/transition/Transition;->mStartValues:Lbi;

    iget-object v0, v0, Lbi;->c:Lfp;

    invoke-virtual {v0}, Lfp;->b()V

    .line 1583
    :goto_0
    return-void

    .line 1579
    :cond_0
    iget-object v0, p0, Landroid/support/transition/Transition;->mEndValues:Lbi;

    iget-object v0, v0, Lbi;->a:Lfk;

    invoke-virtual {v0}, Lfk;->clear()V

    .line 1580
    iget-object v0, p0, Landroid/support/transition/Transition;->mEndValues:Lbi;

    iget-object v0, v0, Lbi;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1581
    iget-object v0, p0, Landroid/support/transition/Transition;->mEndValues:Lbi;

    iget-object v0, v0, Lbi;->c:Lfp;

    invoke-virtual {v0}, Lfp;->b()V

    goto :goto_0
.end method

.method public clone()Landroid/support/transition/Transition;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2213
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/Transition;

    .line 2214
    .local v0, "clone":Landroid/support/transition/Transition;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 2215
    new-instance v2, Lbi;

    invoke-direct {v2}, Lbi;-><init>()V

    iput-object v2, v0, Landroid/support/transition/Transition;->mStartValues:Lbi;

    .line 2216
    new-instance v2, Lbi;

    invoke-direct {v2}, Lbi;-><init>()V

    iput-object v2, v0, Landroid/support/transition/Transition;->mEndValues:Lbi;

    .line 2217
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 2218
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2221
    .end local v0    # "clone":Landroid/support/transition/Transition;
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/support/transition/Transition;->clone()Landroid/support/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lbh;Lbh;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Lbh;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "endValues"    # Lbh;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 484
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Lbi;Lbi;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 30
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Lbi;
    .param p3, "endValues"    # Lbi;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lbi;",
            "Lbi;",
            "Ljava/util/ArrayList",
            "<",
            "Lbh;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lbh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 705
    .local p4, "startValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbh;>;"
    .local p5, "endValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbh;>;"
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Lfk;

    move-result-object v24

    .line 706
    .local v24, "runningAnimators":Lfk;, "Lfk<Landroid/animation/Animator;Landroid/support/transition/Transition$a;>;"
    const-wide v20, 0x7fffffffffffffffL

    .line 707
    .local v20, "minStartDelay":J
    new-instance v26, Landroid/util/SparseIntArray;

    invoke-direct/range {v26 .. v26}, Landroid/util/SparseIntArray;-><init>()V

    .line 708
    .local v26, "startDelays":Landroid/util/SparseIntArray;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 709
    .local v27, "startValuesListCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, v27

    if-ge v15, v0, :cond_b

    .line 710
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lbh;

    .line 711
    .local v25, "start":Lbh;
    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lbh;

    .line 712
    .local v14, "end":Lbh;
    if-eqz v25, :cond_0

    move-object/from16 v0, v25

    iget-object v6, v0, Lbh;->c:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 713
    const/16 v25, 0x0

    .line 715
    :cond_0
    if-eqz v14, :cond_1

    iget-object v6, v14, Lbh;->c:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 716
    const/4 v14, 0x0

    .line 718
    :cond_1
    if-nez v25, :cond_2

    if-eqz v14, :cond_8

    .line 722
    :cond_2
    if-eqz v25, :cond_3

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v14}, Landroid/support/transition/Transition;->isTransitionRequired(Lbh;Lbh;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    const/16 v17, 0x1

    .line 723
    .local v17, "isChanged":Z
    :goto_1
    if-eqz v17, :cond_8

    .line 742
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v14}, Landroid/support/transition/Transition;->createAnimator(Landroid/view/ViewGroup;Lbh;Lbh;)Landroid/animation/Animator;

    move-result-object v11

    .line 743
    .local v11, "animator":Landroid/animation/Animator;
    if-eqz v11, :cond_8

    .line 746
    const/4 v9, 0x0

    .line 747
    .local v9, "infoValues":Lbh;
    if-eqz v14, :cond_a

    .line 748
    iget-object v5, v14, Lbh;->b:Landroid/view/View;

    .line 749
    .local v5, "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v23

    .line 750
    .local v23, "properties":[Ljava/lang/String;
    if-eqz v5, :cond_6

    if-eqz v23, :cond_6

    move-object/from16 v0, v23

    array-length v6, v0

    if-lez v6, :cond_6

    .line 751
    new-instance v9, Lbh;

    .end local v9    # "infoValues":Lbh;
    invoke-direct {v9}, Lbh;-><init>()V

    .line 752
    .restart local v9    # "infoValues":Lbh;
    iput-object v5, v9, Lbh;->b:Landroid/view/View;

    .line 753
    move-object/from16 v0, p3

    iget-object v6, v0, Lbi;->a:Lfk;

    invoke-virtual {v6, v5}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lbh;

    .line 754
    .local v19, "newValues":Lbh;
    if-eqz v19, :cond_5

    .line 755
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_2
    move-object/from16 v0, v23

    array-length v6, v0

    move/from16 v0, v18

    if-ge v0, v6, :cond_5

    .line 756
    iget-object v6, v9, Lbh;->a:Ljava/util/Map;

    aget-object v7, v23, v18

    move-object/from16 v0, v19

    iget-object v8, v0, Lbh;->a:Ljava/util/Map;

    aget-object v28, v23, v18

    .line 757
    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 756
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 722
    .end local v5    # "view":Landroid/view/View;
    .end local v9    # "infoValues":Lbh;
    .end local v11    # "animator":Landroid/animation/Animator;
    .end local v17    # "isChanged":Z
    .end local v18    # "j":I
    .end local v19    # "newValues":Lbh;
    .end local v23    # "properties":[Ljava/lang/String;
    :cond_4
    const/16 v17, 0x0

    goto :goto_1

    .line 760
    .restart local v5    # "view":Landroid/view/View;
    .restart local v9    # "infoValues":Lbh;
    .restart local v11    # "animator":Landroid/animation/Animator;
    .restart local v17    # "isChanged":Z
    .restart local v19    # "newValues":Lbh;
    .restart local v23    # "properties":[Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v24 .. v24}, Lfk;->size()I

    move-result v22

    .line 761
    .local v22, "numExistingAnims":I
    const/16 v18, 0x0

    .restart local v18    # "j":I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 762
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lfk;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Animator;

    .line 763
    .local v10, "anim":Landroid/animation/Animator;
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/Transition$a;

    .line 764
    .local v4, "info":Landroid/support/transition/Transition$a;
    iget-object v6, v4, Landroid/support/transition/Transition$a;->c:Lbh;

    if-eqz v6, :cond_9

    iget-object v6, v4, Landroid/support/transition/Transition$a;->a:Landroid/view/View;

    if-ne v6, v5, :cond_9

    iget-object v6, v4, Landroid/support/transition/Transition$a;->b:Ljava/lang/String;

    .line 765
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 766
    iget-object v6, v4, Landroid/support/transition/Transition$a;->c:Lbh;

    invoke-virtual {v6, v9}, Lbh;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 768
    const/4 v11, 0x0

    .line 777
    .end local v4    # "info":Landroid/support/transition/Transition$a;
    .end local v10    # "anim":Landroid/animation/Animator;
    .end local v18    # "j":I
    .end local v19    # "newValues":Lbh;
    .end local v22    # "numExistingAnims":I
    .end local v23    # "properties":[Ljava/lang/String;
    :cond_6
    :goto_4
    if-eqz v11, :cond_8

    .line 778
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/transition/Transition;->mPropagation:Lbf;

    if-eqz v6, :cond_7

    .line 779
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/transition/Transition;->mPropagation:Lbf;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-virtual {v6, v0, v1, v2, v14}, Lbf;->a(Landroid/view/ViewGroup;Landroid/support/transition/Transition;Lbh;Lbh;)J

    move-result-wide v12

    .line 780
    .local v12, "delay":J
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    long-to-int v7, v12

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 781
    move-wide/from16 v0, v20

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    .line 783
    .end local v12    # "delay":J
    :cond_7
    new-instance v4, Landroid/support/transition/Transition$a;

    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v6

    .line 784
    invoke-static/range {p1 .. p1}, Lbs;->a(Landroid/view/View;)Lcc;

    move-result-object v8

    move-object/from16 v7, p0

    invoke-direct/range {v4 .. v9}, Landroid/support/transition/Transition$a;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/support/transition/Transition;Lcc;Lbh;)V

    .line 785
    .restart local v4    # "info":Landroid/support/transition/Transition$a;
    move-object/from16 v0, v24

    invoke-virtual {v0, v11, v4}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    .end local v4    # "info":Landroid/support/transition/Transition$a;
    .end local v5    # "view":Landroid/view/View;
    .end local v9    # "infoValues":Lbh;
    .end local v11    # "animator":Landroid/animation/Animator;
    .end local v17    # "isChanged":Z
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 761
    .restart local v4    # "info":Landroid/support/transition/Transition$a;
    .restart local v5    # "view":Landroid/view/View;
    .restart local v9    # "infoValues":Lbh;
    .restart local v10    # "anim":Landroid/animation/Animator;
    .restart local v11    # "animator":Landroid/animation/Animator;
    .restart local v17    # "isChanged":Z
    .restart local v18    # "j":I
    .restart local v19    # "newValues":Lbh;
    .restart local v22    # "numExistingAnims":I
    .restart local v23    # "properties":[Ljava/lang/String;
    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 775
    .end local v4    # "info":Landroid/support/transition/Transition$a;
    .end local v5    # "view":Landroid/view/View;
    .end local v10    # "anim":Landroid/animation/Animator;
    .end local v18    # "j":I
    .end local v19    # "newValues":Lbh;
    .end local v22    # "numExistingAnims":I
    .end local v23    # "properties":[Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v25

    iget-object v5, v0, Lbh;->b:Landroid/view/View;

    .restart local v5    # "view":Landroid/view/View;
    goto :goto_4

    .line 791
    .end local v5    # "view":Landroid/view/View;
    .end local v9    # "infoValues":Lbh;
    .end local v11    # "animator":Landroid/animation/Animator;
    .end local v14    # "end":Lbh;
    .end local v17    # "isChanged":Z
    .end local v25    # "start":Lbh;
    :cond_b
    const-wide/16 v6, 0x0

    cmp-long v6, v20, v6

    if-eqz v6, :cond_c

    .line 792
    const/4 v15, 0x0

    :goto_5
    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v15, v6, :cond_c

    .line 793
    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v16

    .line 794
    .local v16, "index":I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/Animator;

    .line 795
    .restart local v11    # "animator":Landroid/animation/Animator;
    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    int-to-long v6, v6

    sub-long v6, v6, v20

    invoke-virtual {v11}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v28

    add-long v12, v6, v28

    .line 796
    .restart local v12    # "delay":J
    invoke-virtual {v11, v12, v13}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 792
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 799
    .end local v11    # "animator":Landroid/animation/Animator;
    .end local v12    # "delay":J
    .end local v16    # "index":I
    :cond_c
    return-void
.end method

.method protected end()V
    .locals 6
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1952
    iget v4, p0, Landroid/support/transition/Transition;->mNumInstances:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/support/transition/Transition;->mNumInstances:I

    .line 1953
    iget v4, p0, Landroid/support/transition/Transition;->mNumInstances:I

    if-nez v4, :cond_5

    .line 1954
    iget-object v4, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1955
    iget-object v4, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1956
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1957
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$d;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1958
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1959
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/Transition$d;

    invoke-interface {v4, p0}, Landroid/support/transition/Transition$d;->a(Landroid/support/transition/Transition;)V

    .line 1958
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1962
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$d;>;"
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v4, p0, Landroid/support/transition/Transition;->mStartValues:Lbi;

    iget-object v4, v4, Lbi;->c:Lfp;

    invoke-virtual {v4}, Lfp;->a()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1963
    iget-object v4, p0, Landroid/support/transition/Transition;->mStartValues:Lbi;

    iget-object v4, v4, Lbi;->c:Lfp;

    invoke-virtual {v4, v0}, Lfp;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1964
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 1965
    invoke-static {v3, v5}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Z)V

    .line 1962
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1968
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Landroid/support/transition/Transition;->mEndValues:Lbi;

    iget-object v4, v4, Lbi;->c:Lfp;

    invoke-virtual {v4}, Lfp;->a()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 1969
    iget-object v4, p0, Landroid/support/transition/Transition;->mEndValues:Lbi;

    iget-object v4, v4, Lbi;->c:Lfp;

    invoke-virtual {v4, v0}, Lfp;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1970
    .restart local v3    # "view":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 1971
    invoke-static {v3, v5}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Z)V

    .line 1968
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1974
    .end local v3    # "view":Landroid/view/View;
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/support/transition/Transition;->mEnded:Z

    .line 1976
    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method public excludeChildren(IZ)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "targetId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1297
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/Transition;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 1298
    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1267
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/Transition;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 1268
    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1380
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/Transition;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 1381
    return-object p0
.end method

.method public excludeTarget(IZ)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "targetId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1215
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/Transition;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 1216
    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1189
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/Transition;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 1190
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1353
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/Transition;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 1354
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1241
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroid/support/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 1242
    return-object p0
.end method

.method forceToEnd(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1985
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Lfk;

    move-result-object v4

    .line 1986
    .local v4, "runningAnimators":Lfk;, "Lfk<Landroid/animation/Animator;Landroid/support/transition/Transition$a;>;"
    invoke-virtual {v4}, Lfk;->size()I

    move-result v3

    .line 1987
    .local v3, "numOldAnims":I
    if-eqz p1, :cond_1

    .line 1988
    invoke-static {p1}, Lbs;->a(Landroid/view/View;)Lcc;

    move-result-object v5

    .line 1989
    .local v5, "windowId":Lcc;
    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1990
    invoke-virtual {v4, v1}, Lfk;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition$a;

    .line 1991
    .local v2, "info":Landroid/support/transition/Transition$a;
    iget-object v6, v2, Landroid/support/transition/Transition$a;->a:Landroid/view/View;

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    iget-object v6, v2, Landroid/support/transition/Transition$a;->d:Lcc;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1992
    invoke-virtual {v4, v1}, Lfk;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1993
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 1989
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1997
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/support/transition/Transition$a;
    .end local v5    # "windowId":Lcc;
    :cond_1
    return-void
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 352
    iget-wide v0, p0, Landroid/support/transition/Transition;->mDuration:J

    return-wide v0
.end method

.method public getEpicenter()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 2135
    iget-object v0, p0, Landroid/support/transition/Transition;->mEpicenterCallback:Landroid/support/transition/Transition$c;

    if-nez v0, :cond_0

    .line 2136
    const/4 v0, 0x0

    .line 2138
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/transition/Transition;->mEpicenterCallback:Landroid/support/transition/Transition$c;

    invoke-virtual {v0}, Landroid/support/transition/Transition$c;->a()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public getEpicenterCallback()Landroid/support/transition/Transition$c;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 2122
    iget-object v0, p0, Landroid/support/transition/Transition;->mEpicenterCallback:Landroid/support/transition/Transition$c;

    return-object v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getMatchedTransitionValues(Landroid/view/View;Z)Lbh;
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInStart"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1680
    iget-object v7, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    if-eqz v7, :cond_1

    .line 1681
    iget-object v6, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    invoke-virtual {v6, p1, p2}, Landroid/support/transition/TransitionSet;->getMatchedTransitionValues(Landroid/view/View;Z)Lbh;

    move-result-object v5

    .line 1704
    :cond_0
    :goto_0
    return-object v5

    .line 1683
    :cond_1
    if-eqz p2, :cond_2

    iget-object v3, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1684
    .local v3, "lookIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbh;>;"
    :goto_1
    if-nez v3, :cond_3

    move-object v5, v6

    .line 1685
    goto :goto_0

    .line 1683
    .end local v3    # "lookIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbh;>;"
    :cond_2
    iget-object v3, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    goto :goto_1

    .line 1687
    .restart local v3    # "lookIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbh;>;"
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1688
    .local v0, "count":I
    const/4 v2, -0x1

    .line 1689
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_5

    .line 1690
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbh;

    .line 1691
    .local v5, "values":Lbh;
    if-nez v5, :cond_4

    move-object v5, v6

    .line 1692
    goto :goto_0

    .line 1694
    :cond_4
    iget-object v7, v5, Lbh;->b:Landroid/view/View;

    if-ne v7, p1, :cond_6

    .line 1695
    move v2, v1

    .line 1699
    .end local v5    # "values":Lbh;
    :cond_5
    const/4 v5, 0x0

    .line 1700
    .restart local v5    # "values":Lbh;
    if-ltz v2, :cond_0

    .line 1701
    if-eqz p2, :cond_7

    iget-object v4, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1702
    .local v4, "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbh;>;"
    :goto_3
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "values":Lbh;
    check-cast v5, Lbh;

    .restart local v5    # "values":Lbh;
    goto :goto_0

    .line 1689
    .end local v4    # "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbh;>;"
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1701
    :cond_7
    iget-object v4, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    goto :goto_3
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 2239
    iget-object v0, p0, Landroid/support/transition/Transition;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPathMotion()Landroid/support/transition/PathMotion;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 2092
    iget-object v0, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    return-object v0
.end method

.method public getPropagation()Lbf;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 2170
    iget-object v0, p0, Landroid/support/transition/Transition;->mPropagation:Lbf;

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 379
    iget-wide v0, p0, Landroid/support/transition/Transition;->mStartDelay:J

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1410
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetNames()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1439
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetTypes()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1454
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1424
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 433
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Lbh;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "start"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1661
    iget-object v1, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    if-eqz v1, :cond_0

    .line 1662
    iget-object v1, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    invoke-virtual {v1, p1, p2}, Landroid/support/transition/TransitionSet;->getTransitionValues(Landroid/view/View;Z)Lbh;

    move-result-object v1

    .line 1665
    :goto_0
    return-object v1

    .line 1664
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/transition/Transition;->mStartValues:Lbi;

    .line 1665
    .local v0, "valuesMaps":Lbi;
    :goto_1
    iget-object v1, v0, Lbi;->a:Lfk;

    invoke-virtual {v1, p1}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbh;

    goto :goto_0

    .line 1664
    .end local v0    # "valuesMaps":Lbi;
    :cond_1
    iget-object v0, p0, Landroid/support/transition/Transition;->mEndValues:Lbi;

    goto :goto_1
.end method

.method public isTransitionRequired(Lbh;Lbh;)Z
    .locals 7
    .param p1, "startValues"    # Lbh;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "endValues"    # Lbh;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1834
    const/4 v3, 0x0

    .line 1837
    .local v3, "valuesChanged":Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1838
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v1

    .line 1839
    .local v1, "properties":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1840
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v1, v4

    .line 1841
    .local v2, "property":Ljava/lang/String;
    invoke-static {p1, p2, v2}, Landroid/support/transition/Transition;->isValueChanged(Lbh;Lbh;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1842
    const/4 v3, 0x1

    .line 1855
    .end local v1    # "properties":[Ljava/lang/String;
    .end local v2    # "property":Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 1840
    .restart local v1    # "properties":[Ljava/lang/String;
    .restart local v2    # "property":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1847
    .end local v2    # "property":Ljava/lang/String;
    :cond_2
    iget-object v4, p1, Lbh;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1848
    .local v0, "key":Ljava/lang/String;
    invoke-static {p1, p2, v0}, Landroid/support/transition/Transition;->isValueChanged(Lbh;Lbh;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1849
    const/4 v3, 0x1

    .line 1850
    goto :goto_1
.end method

.method isValidTarget(Landroid/view/View;)Z
    .locals 8
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 812
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 813
    .local v2, "targetId":I
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 851
    :goto_0
    return v4

    .line 816
    :cond_0
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 817
    goto :goto_0

    .line 819
    :cond_1
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 820
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 821
    .local v1, "numTypes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 822
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 823
    .local v3, "type":Ljava/lang/Class;
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    .line 824
    goto :goto_0

    .line 821
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 828
    .end local v0    # "i":I
    .end local v1    # "numTypes":I
    .end local v3    # "type":Ljava/lang/Class;
    :cond_3
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 829
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    .line 830
    goto :goto_0

    .line 833
    :cond_4
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 834
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 835
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    move v4, v6

    .line 836
    goto :goto_0

    .line 838
    :cond_7
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    move v4, v6

    .line 839
    goto/16 :goto_0

    .line 841
    :cond_9
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v6

    .line 842
    goto/16 :goto_0

    .line 844
    :cond_a
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v4, :cond_c

    .line 845
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_c

    .line 846
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v6

    .line 847
    goto/16 :goto_0

    .line 845
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_c
    move v4, v5

    .line 851
    goto/16 :goto_0
.end method

.method public pause(Landroid/view/View;)V
    .locals 9
    .param p1, "sceneRoot"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1716
    iget-boolean v8, p0, Landroid/support/transition/Transition;->mEnded:Z

    if-nez v8, :cond_3

    .line 1717
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Lfk;

    move-result-object v5

    .line 1718
    .local v5, "runningAnimators":Lfk;, "Lfk<Landroid/animation/Animator;Landroid/support/transition/Transition$a;>;"
    invoke-virtual {v5}, Lfk;->size()I

    move-result v4

    .line 1719
    .local v4, "numOldAnims":I
    invoke-static {p1}, Lbs;->a(Landroid/view/View;)Lcc;

    move-result-object v7

    .line 1720
    .local v7, "windowId":Lcc;
    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1721
    invoke-virtual {v5, v1}, Lfk;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition$a;

    .line 1722
    .local v2, "info":Landroid/support/transition/Transition$a;
    iget-object v8, v2, Landroid/support/transition/Transition$a;->a:Landroid/view/View;

    if-eqz v8, :cond_0

    iget-object v8, v2, Landroid/support/transition/Transition$a;->d:Lcc;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1723
    invoke-virtual {v5, v1}, Lfk;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1724
    .local v0, "anim":Landroid/animation/Animator;
    invoke-static {v0}, Laa;->a(Landroid/animation/Animator;)V

    .line 1720
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1727
    .end local v2    # "info":Landroid/support/transition/Transition$a;
    :cond_1
    iget-object v8, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 1728
    iget-object v8, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1729
    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1730
    .local v6, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$d;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1731
    .local v3, "numListeners":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 1732
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/transition/Transition$d;

    invoke-interface {v8}, Landroid/support/transition/Transition$d;->b()V

    .line 1731
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1735
    .end local v3    # "numListeners":I
    .end local v6    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$d;>;"
    :cond_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/support/transition/Transition;->mPaused:Z

    .line 1737
    .end local v1    # "i":I
    .end local v4    # "numOldAnims":I
    .end local v5    # "runningAnimators":Lfk;, "Lfk<Landroid/animation/Animator;Landroid/support/transition/Transition$a;>;"
    .end local v7    # "windowId":Lcc;
    :cond_3
    return-void
.end method

.method public playTransition(Landroid/view/ViewGroup;)V
    .locals 18
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 1779
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1780
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1781
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/transition/Transition;->mStartValues:Lbi;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/transition/Transition;->mEndValues:Lbi;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/support/transition/Transition;->matchStartAndEnd(Lbi;Lbi;)V

    .line 1783
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Lfk;

    move-result-object v15

    .line 1784
    .local v15, "runningAnimators":Lfk;, "Lfk<Landroid/animation/Animator;Landroid/support/transition/Transition$a;>;"
    invoke-virtual {v15}, Lfk;->size()I

    move-result v11

    .line 1785
    .local v11, "numOldAnims":I
    invoke-static/range {p1 .. p1}, Lbs;->a(Landroid/view/View;)Lcc;

    move-result-object v17

    .line 1786
    .local v17, "windowId":Lcc;
    add-int/lit8 v10, v11, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_5

    .line 1787
    invoke-virtual {v15, v10}, Lfk;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Animator;

    .line 1788
    .local v7, "anim":Landroid/animation/Animator;
    if-eqz v7, :cond_2

    .line 1789
    invoke-virtual {v15, v7}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/transition/Transition$a;

    .line 1790
    .local v12, "oldInfo":Landroid/support/transition/Transition$a;
    if-eqz v12, :cond_2

    iget-object v1, v12, Landroid/support/transition/Transition$a;->a:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, v12, Landroid/support/transition/Transition$a;->d:Lcc;

    .line 1791
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1792
    iget-object v13, v12, Landroid/support/transition/Transition$a;->c:Lbh;

    .line 1793
    .local v13, "oldValues":Lbh;
    iget-object v14, v12, Landroid/support/transition/Transition$a;->a:Landroid/view/View;

    .line 1794
    .local v14, "oldView":Landroid/view/View;
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v1}, Landroid/support/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Lbh;

    move-result-object v16

    .line 1795
    .local v16, "startValues":Lbh;
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v1}, Landroid/support/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Lbh;

    move-result-object v9

    .line 1796
    .local v9, "endValues":Lbh;
    if-nez v16, :cond_0

    if-eqz v9, :cond_3

    :cond_0
    iget-object v1, v12, Landroid/support/transition/Transition$a;->e:Landroid/support/transition/Transition;

    .line 1797
    invoke-virtual {v1, v13, v9}, Landroid/support/transition/Transition;->isTransitionRequired(Lbh;Lbh;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v8, 0x1

    .line 1798
    .local v8, "cancel":Z
    :goto_1
    if-eqz v8, :cond_2

    .line 1799
    invoke-virtual {v7}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v7}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1803
    :cond_1
    invoke-virtual {v7}, Landroid/animation/Animator;->cancel()V

    .line 1786
    .end local v8    # "cancel":Z
    .end local v9    # "endValues":Lbh;
    .end local v12    # "oldInfo":Landroid/support/transition/Transition$a;
    .end local v13    # "oldValues":Lbh;
    .end local v14    # "oldView":Landroid/view/View;
    .end local v16    # "startValues":Lbh;
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 1797
    .restart local v9    # "endValues":Lbh;
    .restart local v12    # "oldInfo":Landroid/support/transition/Transition$a;
    .restart local v13    # "oldValues":Lbh;
    .restart local v14    # "oldView":Landroid/view/View;
    .restart local v16    # "startValues":Lbh;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 1808
    .restart local v8    # "cancel":Z
    :cond_4
    invoke-virtual {v15, v7}, Lfk;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1815
    .end local v7    # "anim":Landroid/animation/Animator;
    .end local v8    # "cancel":Z
    .end local v9    # "endValues":Lbh;
    .end local v12    # "oldInfo":Landroid/support/transition/Transition$a;
    .end local v13    # "oldValues":Lbh;
    .end local v14    # "oldView":Landroid/view/View;
    .end local v16    # "startValues":Lbh;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/transition/Transition;->mStartValues:Lbi;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/transition/Transition;->mEndValues:Lbi;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/support/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Lbi;Lbi;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1816
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/Transition;->runAnimators()V

    .line 1817
    return-void
.end method

.method public removeListener(Landroid/support/transition/Transition$d;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "listener"    # Landroid/support/transition/Transition$d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 2047
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2054
    :cond_0
    :goto_0
    return-object p0

    .line 2050
    :cond_1
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2051
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2052
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public removeTarget(I)Landroid/support/transition/Transition;
    .locals 2
    .param p1, "targetId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1110
    if-lez p1, :cond_0

    .line 1111
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1113
    :cond_0
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1094
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1095
    return-object p0
.end method

.method public removeTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "target"    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1146
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1149
    :cond_0
    return-object p0
.end method

.method public removeTarget(Ljava/lang/String;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1128
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1131
    :cond_0
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .locals 9
    .param p1, "sceneRoot"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1748
    iget-boolean v8, p0, Landroid/support/transition/Transition;->mPaused:Z

    if-eqz v8, :cond_3

    .line 1749
    iget-boolean v8, p0, Landroid/support/transition/Transition;->mEnded:Z

    if-nez v8, :cond_2

    .line 1750
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Lfk;

    move-result-object v5

    .line 1751
    .local v5, "runningAnimators":Lfk;, "Lfk<Landroid/animation/Animator;Landroid/support/transition/Transition$a;>;"
    invoke-virtual {v5}, Lfk;->size()I

    move-result v4

    .line 1752
    .local v4, "numOldAnims":I
    invoke-static {p1}, Lbs;->a(Landroid/view/View;)Lcc;

    move-result-object v7

    .line 1753
    .local v7, "windowId":Lcc;
    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1754
    invoke-virtual {v5, v1}, Lfk;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition$a;

    .line 1755
    .local v2, "info":Landroid/support/transition/Transition$a;
    iget-object v8, v2, Landroid/support/transition/Transition$a;->a:Landroid/view/View;

    if-eqz v8, :cond_0

    iget-object v8, v2, Landroid/support/transition/Transition$a;->d:Lcc;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1756
    invoke-virtual {v5, v1}, Lfk;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1757
    .local v0, "anim":Landroid/animation/Animator;
    invoke-static {v0}, Laa;->b(Landroid/animation/Animator;)V

    .line 1753
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1760
    .end local v2    # "info":Landroid/support/transition/Transition$a;
    :cond_1
    iget-object v8, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 1761
    iget-object v8, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1762
    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1763
    .local v6, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$d;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1764
    .local v3, "numListeners":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 1765
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/transition/Transition$d;

    invoke-interface {v8}, Landroid/support/transition/Transition$d;->c()V

    .line 1764
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1769
    .end local v1    # "i":I
    .end local v3    # "numListeners":I
    .end local v4    # "numOldAnims":I
    .end local v5    # "runningAnimators":Lfk;, "Lfk<Landroid/animation/Animator;Landroid/support/transition/Transition$a;>;"
    .end local v6    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$d;>;"
    .end local v7    # "windowId":Lcc;
    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/support/transition/Transition;->mPaused:Z

    .line 1771
    :cond_3
    return-void
.end method

.method protected runAnimators()V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 874
    invoke-virtual {p0}, Landroid/support/transition/Transition;->start()V

    .line 875
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Lfk;

    move-result-object v1

    .line 877
    .local v1, "runningAnimators":Lfk;, "Lfk<Landroid/animation/Animator;Landroid/support/transition/Transition$a;>;"
    iget-object v2, p0, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 881
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v1, v0}, Lfk;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 882
    invoke-virtual {p0}, Landroid/support/transition/Transition;->start()V

    .line 883
    invoke-direct {p0, v0, v1}, Landroid/support/transition/Transition;->runAnimator(Landroid/animation/Animator;Lfk;)V

    goto :goto_0

    .line 886
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    iget-object v2, p0, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 887
    invoke-virtual {p0}, Landroid/support/transition/Transition;->end()V

    .line 888
    return-void
.end method

.method setCanRemoveViews(Z)V
    .locals 0
    .param p1, "canRemoveViews"    # Z

    .prologue
    .line 2202
    iput-boolean p1, p0, Landroid/support/transition/Transition;->mCanRemoveViews:Z

    .line 2203
    return-void
.end method

.method public setDuration(J)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "duration"    # J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 339
    iput-wide p1, p0, Landroid/support/transition/Transition;->mDuration:J

    .line 340
    return-object p0
.end method

.method public setEpicenterCallback(Landroid/support/transition/Transition$c;)V
    .locals 0
    .param p1, "epicenterCallback"    # Landroid/support/transition/Transition$c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2107
    iput-object p1, p0, Landroid/support/transition/Transition;->mEpicenterCallback:Landroid/support/transition/Transition$c;

    .line 2108
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 393
    iput-object p1, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 394
    return-object p0
.end method

.method public varargs setMatchOrder([I)V
    .locals 4
    .param p1, "matches"    # [I

    .prologue
    .line 505
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 506
    :cond_0
    sget-object v2, Landroid/support/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v2, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    .line 519
    :goto_0
    return-void

    .line 508
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_4

    .line 509
    aget v1, p1, v0

    .line 510
    .local v1, "match":I
    invoke-static {v1}, Landroid/support/transition/Transition;->isValidMatch(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 511
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "matches contains invalid value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 513
    :cond_2
    invoke-static {p1, v0}, Landroid/support/transition/Transition;->alreadyContains([II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 514
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "matches contains a duplicate value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 508
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 517
    .end local v1    # "match":I
    :cond_4
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    goto :goto_0
.end method

.method public setPathMotion(Landroid/support/transition/PathMotion;)V
    .locals 1
    .param p1, "pathMotion"    # Landroid/support/transition/PathMotion;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2074
    if-nez p1, :cond_0

    .line 2075
    sget-object v0, Landroid/support/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

    iput-object v0, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    .line 2079
    :goto_0
    return-void

    .line 2077
    :cond_0
    iput-object p1, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    goto :goto_0
.end method

.method public setPropagation(Lbf;)V
    .locals 0
    .param p1, "transitionPropagation"    # Lbf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2153
    iput-object p1, p0, Landroid/support/transition/Transition;->mPropagation:Lbf;

    .line 2154
    return-void
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Landroid/support/transition/Transition;
    .locals 0
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 2197
    iput-object p1, p0, Landroid/support/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 2198
    return-object p0
.end method

.method public setStartDelay(J)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "startDelay"    # J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 366
    iput-wide p1, p0, Landroid/support/transition/Transition;->mStartDelay:J

    .line 367
    return-object p0
.end method

.method protected start()V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1925
    iget v3, p0, Landroid/support/transition/Transition;->mNumInstances:I

    if-nez v3, :cond_1

    .line 1926
    iget-object v3, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1927
    iget-object v3, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1928
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1929
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$d;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1930
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1931
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/Transition$d;

    invoke-interface {v3}, Landroid/support/transition/Transition$d;->d()V

    .line 1930
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1934
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$d;>;"
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/transition/Transition;->mEnded:Z

    .line 1936
    :cond_1
    iget v3, p0, Landroid/support/transition/Transition;->mNumInstances:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/support/transition/Transition;->mNumInstances:I

    .line 1937
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2207
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Landroid/support/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, -0x1

    .line 2243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2244
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2245
    .local v1, "result":Ljava/lang/String;
    iget-wide v2, p0, Landroid/support/transition/Transition;->mDuration:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 2246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "dur("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/support/transition/Transition;->mDuration:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2248
    :cond_0
    iget-wide v2, p0, Landroid/support/transition/Transition;->mStartDelay:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 2249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "dly("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/support/transition/Transition;->mStartDelay:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2251
    :cond_1
    iget-object v2, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_2

    .line 2252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "interp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2254
    :cond_2
    iget-object v2, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    iget-object v2, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 2255
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "tgts("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2256
    iget-object v2, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 2257
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 2258
    if-lez v0, :cond_4

    .line 2259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2261
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2264
    .end local v0    # "i":I
    :cond_5
    iget-object v2, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 2265
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 2266
    if-lez v0, :cond_6

    .line 2267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2269
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2265
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2272
    .end local v0    # "i":I
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2274
    :cond_8
    return-object v1
.end method
