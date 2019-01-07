.class public final Lco;
.super Lcn;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco$d;,
        Lco$a;,
        Lco$b;,
        Lco$c;,
        Lco$h;,
        Lco$g;,
        Lco$f;,
        Lco$e;
    }
.end annotation


# static fields
.field static final D:Landroid/view/animation/Interpolator;

.field static final E:Landroid/view/animation/Interpolator;

.field static final F:Landroid/view/animation/Interpolator;

.field static final G:Landroid/view/animation/Interpolator;

.field public static a:Z

.field static p:Ljava/lang/reflect/Field;


# instance fields
.field A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco$h;",
            ">;"
        }
    .end annotation
.end field

.field public B:Lcp;

.field C:Ljava/lang/Runnable;

.field private final H:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lft",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco$f;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field d:I

.field final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcf;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcf;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public l:Lcm;

.field m:Lck;

.field n:Landroid/support/v4/app/Fragment;

.field o:Landroid/support/v4/app/Fragment;

.field q:Z

.field public r:Z

.field s:Z

.field t:Ljava/lang/String;

.field u:Z

.field v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcf;",
            ">;"
        }
    .end annotation
.end field

.field w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field y:Landroid/os/Bundle;

.field z:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x40200000    # 2.5f

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 642
    const/4 v0, 0x0

    sput-boolean v0, Lco;->a:Z

    .line 674
    const/4 v0, 0x0

    sput-object v0, Lco;->p:Ljava/lang/reflect/Field;

    .line 1093
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lco;->D:Landroid/view/animation/Interpolator;

    .line 1094
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lco;->E:Landroid/view/animation/Interpolator;

    .line 1095
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lco;->F:Landroid/view/animation/Interpolator;

    .line 1096
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lco;->G:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 641
    invoke-direct {p0}, Lcn;-><init>()V

    .line 653
    iput v1, p0, Lco;->d:I

    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco;->e:Ljava/util/ArrayList;

    .line 665
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lco;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 668
    iput v1, p0, Lco;->k:I

    .line 688
    iput-object v2, p0, Lco;->y:Landroid/os/Bundle;

    .line 689
    iput-object v2, p0, Lco;->z:Landroid/util/SparseArray;

    .line 697
    new-instance v0, Lco$1;

    invoke-direct {v0, p0}, Lco$1;-><init>(Lco;)V

    iput-object v0, p0, Lco;->C:Ljava/lang/Runnable;

    .line 3963
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;IILfl;)I
    .locals 10
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcf;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Lfl",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcf;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local p5, "added":Lfl;, "Lfl<Landroid/support/v4/app/Fragment;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2433
    move v4, p4

    .line 2434
    .local v4, "postponeIndex":I
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_7

    .line 2435
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcf;

    .line 2436
    .local v5, "record":Lcf;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .local v1, "isPop":Z
    move v7, v8

    .line 24987
    :goto_1
    iget-object v6, v5, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v7, v6, :cond_4

    .line 24988
    iget-object v6, v5, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcf$a;

    .line 24989
    invoke-static {v6}, Lcf;->b(Lcf$a;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v9

    .line 2437
    :goto_2
    if-eqz v6, :cond_5

    add-int/lit8 v6, v0, 0x1

    .line 2438
    invoke-virtual {v5, p1, v6, p4}, Lcf;->a(Ljava/util/ArrayList;II)Z

    move-result v6

    if-nez v6, :cond_5

    move v2, v9

    .line 2439
    .local v2, "isPostponed":Z
    :goto_3
    if-eqz v2, :cond_2

    .line 2440
    iget-object v6, p0, Lco;->A:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 2441
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lco;->A:Ljava/util/ArrayList;

    .line 2443
    :cond_0
    new-instance v3, Lco$h;

    invoke-direct {v3, v5, v1}, Lco$h;-><init>(Lcf;Z)V

    .line 2445
    .local v3, "listener":Lco$h;
    iget-object v6, p0, Lco;->A:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2446
    invoke-virtual {v5, v3}, Lcf;->a(Landroid/support/v4/app/Fragment$b;)V

    .line 2449
    if-eqz v1, :cond_6

    .line 2450
    invoke-virtual {v5}, Lcf;->e()V

    .line 2456
    :goto_4
    add-int/lit8 v4, v4, -0x1

    .line 2457
    if-eq v0, v4, :cond_1

    .line 2458
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2459
    invoke-virtual {p1, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2463
    :cond_1
    invoke-direct {p0, p5}, Lco;->b(Lfl;)V

    .line 2434
    .end local v3    # "listener":Lco$h;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 24987
    .end local v2    # "isPostponed":Z
    :cond_3
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    :cond_4
    move v6, v8

    .line 24993
    goto :goto_2

    :cond_5
    move v2, v8

    .line 2438
    goto :goto_3

    .line 2452
    .restart local v2    # "isPostponed":Z
    .restart local v3    # "listener":Lco$h;
    :cond_6
    invoke-virtual {v5, v8}, Lcf;->a(Z)V

    goto :goto_4

    .line 2466
    .end local v1    # "isPop":Z
    .end local v2    # "isPostponed":Z
    .end local v3    # "listener":Lco$h;
    .end local v5    # "record":Lcf;
    :cond_7
    return v4
.end method

.method private static a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;
    .locals 5
    .param p0, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1262
    const/4 v2, 0x0

    .line 1264
    .local v2, "originalListener":Landroid/view/animation/Animation$AnimationListener;
    :try_start_0
    sget-object v3, Lco;->p:Ljava/lang/reflect/Field;

    if-nez v3, :cond_0

    .line 1265
    const-class v3, Landroid/view/animation/Animation;

    const-string/jumbo v4, "mListener"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1266
    sput-object v3, Lco;->p:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1268
    :cond_0
    sget-object v3, Lco;->p:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/view/animation/Animation$AnimationListener;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1274
    :goto_0
    return-object v2

    .line 1269
    :catch_0
    move-exception v1

    .line 1270
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "No field with the name mListener is found in Animation class"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1271
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 1272
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "Cannot access Animation\'s mListener field"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static a(FF)Lco$c;
    .locals 4
    .param p0, "start"    # F
    .param p1, "end"    # F

    .prologue
    .line 1116
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1117
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Lco;->E:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1118
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1119
    new-instance v1, Lco$c;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lco$c;-><init>(Landroid/view/animation/Animation;B)V

    return-object v1
.end method

.method private static a(FFFF)Lco$c;
    .locals 11
    .param p0, "startScale"    # F
    .param p1, "endScale"    # F
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F

    .prologue
    .line 1102
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1103
    .local v10, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move v1, p0

    move v2, p1

    move v3, p0

    move v4, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1105
    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    sget-object v1, Lco;->D:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1106
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1107
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1108
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1109
    .local v9, "alpha":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Lco;->E:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1110
    const-wide/16 v2, 0xdc

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1111
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1112
    new-instance v1, Lco$c;

    const/4 v2, 0x0

    invoke-direct {v1, v10, v2}, Lco$c;-><init>(Landroid/view/animation/Animation;B)V

    return-object v1
.end method

.method private a(Landroid/support/v4/app/Fragment;IZI)Lco$c;
    .locals 12
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "transitionStyle"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1124
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextAnim()I

    move-result v5

    .line 1125
    .local v5, "nextAnim":I
    invoke-virtual {p1, p2, p3, v5}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1126
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 1127
    new-instance v8, Lco$c;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Lco$c;-><init>(Landroid/view/animation/Animation;B)V

    .line 1217
    :goto_0
    return-object v8

    .line 1130
    :cond_0
    invoke-virtual {p1, p2, p3, v5}, Landroid/support/v4/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v1

    .line 1131
    .local v1, "animator":Landroid/animation/Animator;
    if-eqz v1, :cond_1

    .line 1132
    new-instance v8, Lco$c;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9}, Lco$c;-><init>(Landroid/animation/Animator;B)V

    goto :goto_0

    .line 1135
    :cond_1
    if-eqz v5, :cond_5

    .line 1136
    iget-object v8, p0, Lco;->l:Lcm;

    .line 4198
    iget-object v8, v8, Lcm;->c:Landroid/content/Context;

    .line 1136
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 1137
    .local v2, "dir":Ljava/lang/String;
    const-string/jumbo v8, "anim"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1138
    .local v4, "isAnim":Z
    const/4 v7, 0x0

    .line 1139
    .local v7, "successfulLoad":Z
    if-eqz v4, :cond_3

    .line 1142
    :try_start_0
    iget-object v8, p0, Lco;->l:Lcm;

    .line 5198
    iget-object v8, v8, Lcm;->c:Landroid/content/Context;

    .line 1142
    invoke-static {v8, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1143
    if-eqz v0, :cond_2

    .line 1144
    new-instance v8, Lco$c;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Lco$c;-><init>(Landroid/view/animation/Animation;B)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1148
    :catch_0
    move-exception v3

    .line 1149
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    throw v3

    .line 1147
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    const/4 v7, 0x1

    .line 1154
    :cond_3
    :goto_1
    if-nez v7, :cond_5

    .line 1157
    :try_start_1
    iget-object v8, p0, Lco;->l:Lcm;

    .line 6198
    iget-object v8, v8, Lcm;->c:Landroid/content/Context;

    .line 1157
    invoke-static {v8, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 1158
    if-eqz v1, :cond_5

    .line 1159
    new-instance v8, Lco$c;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9}, Lco$c;-><init>(Landroid/animation/Animator;B)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1161
    :catch_1
    move-exception v3

    .line 1162
    .local v3, "e":Ljava/lang/RuntimeException;
    if-eqz v4, :cond_4

    .line 1164
    throw v3

    .line 1167
    :cond_4
    iget-object v8, p0, Lco;->l:Lcm;

    .line 7198
    iget-object v8, v8, Lcm;->c:Landroid/content/Context;

    .line 1167
    invoke-static {v8, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1168
    if-eqz v0, :cond_5

    .line 1169
    new-instance v8, Lco$c;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Lco$c;-><init>(Landroid/view/animation/Animation;B)V

    goto :goto_0

    .line 1175
    .end local v2    # "dir":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "isAnim":Z
    .end local v7    # "successfulLoad":Z
    :cond_5
    if-nez p2, :cond_6

    .line 1176
    const/4 v8, 0x0

    goto :goto_0

    .line 7607
    :cond_6
    const/4 v8, -0x1

    .line 7608
    sparse-switch p2, :sswitch_data_0

    move v6, v8

    .line 1180
    .local v6, "styleIndex":I
    :goto_2
    if-gez v6, :cond_a

    .line 1181
    const/4 v8, 0x0

    goto :goto_0

    .line 7610
    .end local v6    # "styleIndex":I
    :sswitch_0
    if-eqz p3, :cond_7

    const/4 v8, 0x1

    :goto_3
    move v6, v8

    .line 7611
    goto :goto_2

    .line 7610
    :cond_7
    const/4 v8, 0x2

    goto :goto_3

    .line 7613
    :sswitch_1
    if-eqz p3, :cond_8

    const/4 v8, 0x3

    :goto_4
    move v6, v8

    .line 7614
    goto :goto_2

    .line 7613
    :cond_8
    const/4 v8, 0x4

    goto :goto_4

    .line 7616
    :sswitch_2
    if-eqz p3, :cond_9

    const/4 v8, 0x5

    :goto_5
    move v6, v8

    goto :goto_2

    :cond_9
    const/4 v8, 0x6

    goto :goto_5

    .line 1184
    .restart local v6    # "styleIndex":I
    :cond_a
    packed-switch v6, :pswitch_data_0

    .line 1200
    if-nez p4, :cond_b

    iget-object v8, p0, Lco;->l:Lcm;

    invoke-virtual {v8}, Lcm;->e()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1201
    iget-object v8, p0, Lco;->l:Lcm;

    invoke-virtual {v8}, Lcm;->f()I

    move-result p4

    .line 1203
    :cond_b
    if-nez p4, :cond_c

    .line 1204
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1186
    :pswitch_0
    const/high16 v8, 0x3f900000    # 1.125f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v8, v9, v10, v11}, Lco;->a(FFFF)Lco$c;

    move-result-object v8

    goto/16 :goto_0

    .line 1188
    :pswitch_1
    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f79999a    # 0.975f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Lco;->a(FFFF)Lco$c;

    move-result-object v8

    goto/16 :goto_0

    .line 1190
    :pswitch_2
    const v8, 0x3f79999a    # 0.975f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v8, v9, v10, v11}, Lco;->a(FFFF)Lco$c;

    move-result-object v8

    goto/16 :goto_0

    .line 1192
    :pswitch_3
    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f89999a    # 1.075f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Lco;->a(FFFF)Lco$c;

    move-result-object v8

    goto/16 :goto_0

    .line 1194
    :pswitch_4
    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v8, v9}, Lco;->a(FF)Lco$c;

    move-result-object v8

    goto/16 :goto_0

    .line 1196
    :pswitch_5
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lco;->a(FF)Lco$c;

    move-result-object v8

    goto/16 :goto_0

    .line 1217
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_0

    .end local v6    # "styleIndex":I
    .restart local v2    # "dir":Ljava/lang/String;
    .restart local v4    # "isAnim":Z
    .restart local v7    # "successfulLoad":Z
    :catch_2
    move-exception v8

    goto/16 :goto_1

    .line 7608
    .line 1184
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(ILcf;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "bse"    # Lcf;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2124
    monitor-enter p0

    .line 2125
    :try_start_0
    iget-object v1, p0, Lco;->i:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 2126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lco;->i:Ljava/util/ArrayList;

    .line 2128
    :cond_0
    iget-object v1, p0, Lco;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2129
    .local v0, "N":I
    if-ge p1, v0, :cond_1

    .line 2131
    iget-object v1, p0, Lco;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2145
    :goto_0
    monitor-exit p0

    return-void

    .line 2133
    :cond_1
    :goto_1
    if-ge v0, p1, :cond_3

    .line 2134
    iget-object v1, p0, Lco;->i:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2135
    iget-object v1, p0, Lco;->j:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 2136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lco;->j:Ljava/util/ArrayList;

    .line 2139
    :cond_2
    iget-object v1, p0, Lco;->j:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2140
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2143
    :cond_3
    iget-object v1, p0, Lco;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2145
    .end local v0    # "N":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private a(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "onlyRecursive"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3370
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3371
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Lcn;

    move-result-object v1

    .line 3372
    .local v1, "parentManager":Lcn;
    instance-of v2, v1, Lco;

    if-eqz v2, :cond_0

    .line 3373
    check-cast v1, Lco;

    .end local v1    # "parentManager":Lcn;
    const/4 v2, 0x1

    .line 3374
    invoke-direct {v1, p1, p2, v2}, Lco;->a(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V

    .line 3377
    :cond_0
    iget-object v2, p0, Lco;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lft;

    .line 3378
    .local v0, "p":Lft;
    if-eqz p3, :cond_1

    iget-object v2, v0, Lft;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0

    .line 3382
    .end local v0    # "p":Lft;
    :cond_2
    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3401
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3402
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Lcn;

    move-result-object v1

    .line 3403
    .local v1, "parentManager":Lcn;
    instance-of v2, v1, Lco;

    if-eqz v2, :cond_0

    .line 3404
    check-cast v1, Lco;

    .end local v1    # "parentManager":Lcn;
    const/4 v2, 0x1

    .line 3405
    invoke-direct {v1, p1, p2, v2}, Lco;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3408
    :cond_0
    iget-object v2, p0, Lco;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lft;

    .line 3409
    .local v0, "p":Lft;
    if-eqz p3, :cond_1

    iget-object v2, v0, Lft;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0

    .line 3413
    .end local v0    # "p":Lft;
    :cond_2
    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .param p4, "onlyRecursive"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3448
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3449
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Lcn;

    move-result-object v1

    .line 3450
    .local v1, "parentManager":Lcn;
    instance-of v2, v1, Lco;

    if-eqz v2, :cond_0

    .line 3451
    check-cast v1, Lco;

    .end local v1    # "parentManager":Lcn;
    const/4 v2, 0x1

    .line 3452
    invoke-direct {v1, p1, p2, p3, v2}, Lco;->a(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 3455
    :cond_0
    iget-object v2, p0, Lco;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lft;

    .line 3456
    .local v0, "p":Lft;
    if-eqz p4, :cond_1

    iget-object v2, v0, Lft;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0

    .line 3460
    .end local v0    # "p":Lft;
    :cond_2
    return-void
.end method

.method private static a(Landroid/view/View;Lco$c;)V
    .locals 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "anim"    # Lco$c;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1240
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1256
    :cond_0
    :goto_0
    return-void

    .line 7744
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    .line 1243
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 1244
    iget-object v1, p1, Lco$c;->b:Landroid/animation/Animator;

    if-eqz v1, :cond_8

    .line 1245
    iget-object v1, p1, Lco$c;->b:Landroid/animation/Animator;

    new-instance v2, Lco$d;

    invoke-direct {v2, p0}, Lco$d;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 7747
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v1, v4, :cond_2

    .line 7748
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-nez v1, :cond_2

    .line 7749
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->t(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8705
    iget-object v1, p1, Lco$c;->a:Landroid/view/animation/Animation;

    instance-of v1, v1, Landroid/view/animation/AlphaAnimation;

    if-eqz v1, :cond_4

    move v1, v3

    .line 7750
    :goto_2
    if-eqz v1, :cond_2

    move v2, v3

    goto :goto_1

    .line 8707
    :cond_4
    iget-object v1, p1, Lco$c;->a:Landroid/view/animation/Animation;

    instance-of v1, v1, Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_7

    .line 8708
    iget-object v1, p1, Lco$c;->a:Landroid/view/animation/Animation;

    check-cast v1, Landroid/view/animation/AnimationSet;

    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v4

    move v1, v2

    .line 8709
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 8710
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroid/view/animation/AlphaAnimation;

    if-eqz v5, :cond_5

    move v1, v3

    .line 8711
    goto :goto_2

    .line 8709
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    move v1, v2

    .line 8714
    goto :goto_2

    .line 8716
    :cond_7
    iget-object v1, p1, Lco$c;->b:Landroid/animation/Animator;

    invoke-static {v1}, Lco;->a(Landroid/animation/Animator;)Z

    move-result v1

    goto :goto_2

    .line 1247
    :cond_8
    iget-object v1, p1, Lco$c;->a:Landroid/view/animation/Animation;

    invoke-static {v1}, Lco;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    .line 1251
    .local v0, "originalListener":Landroid/view/animation/Animation$AnimationListener;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1252
    iget-object v1, p1, Lco$c;->a:Landroid/view/animation/Animation;

    new-instance v2, Lco$a;

    invoke-direct {v2, p0, v0}, Lco$a;-><init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lco;)V
    .locals 0
    .param p0, "x0"    # Lco;

    .prologue
    .line 641
    invoke-direct {p0}, Lco;->x()V

    return-void
.end method

.method static synthetic a(Lco;Lcf;ZZZ)V
    .locals 7
    .param p0, "x0"    # Lco;
    .param p1, "x1"    # Lcf;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 641
    .line 31486
    if-eqz p2, :cond_4

    .line 31487
    invoke-virtual {p1, p4}, Lcf;->a(Z)V

    .line 31491
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 31492
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 31493
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31494
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31495
    if-eqz p3, :cond_0

    move-object v0, p0

    move v5, v4

    .line 31496
    invoke-static/range {v0 .. v5}, Lcs;->a(Lco;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 31498
    :cond_0
    if-eqz p4, :cond_1

    .line 31499
    iget v0, p0, Lco;->k:I

    invoke-virtual {p0, v0, v4}, Lco;->a(IZ)V

    .line 31502
    :cond_1
    iget-object v0, p0, Lco;->f:Landroid/util/SparseArray;

    if-eqz v0, :cond_6

    .line 31503
    iget-object v0, p0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v1, v3

    .line 31504
    :goto_1
    if-ge v1, v2, :cond_6

    .line 31507
    iget-object v0, p0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 31508
    if-eqz v0, :cond_3

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v4, :cond_3

    iget v4, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 31509
    invoke-virtual {p1, v4}, Lcf;->c(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 31510
    iget v4, v0, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_2

    .line 31511
    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget v5, v0, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 31513
    :cond_2
    if-eqz p4, :cond_5

    .line 31514
    iput v6, v0, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    .line 31504
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 31489
    :cond_4
    invoke-virtual {p1}, Lcf;->e()V

    goto :goto_0

    .line 31516
    :cond_5
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v0, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    .line 31517
    iput-boolean v3, v0, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_2

    .line 641
    :cond_6
    return-void
.end method

.method public static a(Lcp;)V
    .locals 6
    .param p0, "nonConfig"    # Lcp;

    .prologue
    .line 2778
    if-nez p0, :cond_1

    .line 2793
    :cond_0
    return-void

    .line 27047
    :cond_1
    iget-object v3, p0, Lcp;->a:Ljava/util/List;

    .line 2782
    .local v3, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v3, :cond_2

    .line 2783
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 2784
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/support/v4/app/Fragment;->mRetaining:Z

    goto :goto_0

    .line 27054
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_2
    iget-object v1, p0, Lcp;->b:Ljava/util/List;

    .line 2788
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lcp;>;"
    if-eqz v1, :cond_0

    .line 2789
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcp;

    .line 2790
    .local v0, "child":Lcp;
    invoke-static {v0}, Lco;->a(Lcp;)V

    goto :goto_1
.end method

.method private static a(Lfl;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfl",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2407
    .local p0, "fragments":Lfl;, "Lfl<Landroid/support/v4/app/Fragment;>;"
    invoke-virtual {p0}, Lfl;->size()I

    move-result v2

    .line 2408
    .local v2, "numAdded":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 24339
    iget-object v4, p0, Lfl;->g:[Ljava/lang/Object;

    aget-object v0, v4, v1

    .line 2409
    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2410
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v4, :cond_0

    .line 2411
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    .line 2412
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v0, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    .line 2413
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2408
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2416
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .locals 7
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 754
    const-string/jumbo v3, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "Activity state:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    new-instance v1, Lfo;

    const-string/jumbo v3, "FragmentManager"

    invoke-direct {v1, v3}, Lfo;-><init>(Ljava/lang/String;)V

    .line 757
    .local v1, "logw":Lfo;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 758
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p0, Lco;->l:Lcm;

    if-eqz v3, :cond_0

    .line 760
    :try_start_0
    iget-object v3, p0, Lco;->l:Lcm;

    const-string/jumbo v4, "  "

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2, v6}, Lcm;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    :goto_0
    throw p1

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "Failed dumping state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 766
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    const-string/jumbo v3, "  "

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v2, v5}, Lco;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 767
    :catch_1
    move-exception v0

    .line 768
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "Failed dumping state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 20
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcf;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2342
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcf;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcf;

    iget-boolean v15, v2, Lcf;->u:Z

    .line 2343
    .local v15, "allowReordering":Z
    const/4 v14, 0x0

    .line 2344
    .local v14, "addToBackStack":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lco;->x:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 2345
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lco;->x:Ljava/util/ArrayList;

    .line 2349
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lco;->x:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22348
    move-object/from16 v0, p0

    iget-object v0, v0, Lco;->o:Landroid/support/v4/app/Fragment;

    move-object/from16 v17, v0

    .line 2351
    .local v17, "oldPrimaryNav":Landroid/support/v4/app/Fragment;
    move/from16 v19, p3

    .local v19, "recordNum":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, p4

    if-ge v0, v1, :cond_4

    .line 2352
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcf;

    .line 2353
    .local v18, "record":Lcf;
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 2354
    .local v16, "isPop":Z
    if-nez v16, :cond_2

    .line 2355
    move-object/from16 v0, p0

    iget-object v2, v0, Lco;->x:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcf;->a(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v17

    .line 2359
    :goto_2
    if-nez v14, :cond_0

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcf;->j:Z

    if-eqz v2, :cond_3

    :cond_0
    const/4 v14, 0x1

    .line 2351
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 2347
    .end local v16    # "isPop":Z
    .end local v17    # "oldPrimaryNav":Landroid/support/v4/app/Fragment;
    .end local v18    # "record":Lcf;
    .end local v19    # "recordNum":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lco;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 2357
    .restart local v16    # "isPop":Z
    .restart local v17    # "oldPrimaryNav":Landroid/support/v4/app/Fragment;
    .restart local v18    # "record":Lcf;
    .restart local v19    # "recordNum":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lco;->x:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcf;->b(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v17

    goto :goto_2

    .line 2359
    :cond_3
    const/4 v14, 0x0

    goto :goto_3

    .line 2361
    .end local v16    # "isPop":Z
    .end local v18    # "record":Lcf;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lco;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2363
    if-nez v15, :cond_5

    .line 2364
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-static/range {v2 .. v7}, Lcs;->a(Lco;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2367
    :cond_5
    invoke-static/range {p1 .. p4}, Lco;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2369
    move/from16 v12, p4

    .line 2370
    .local v12, "postponeIndex":I
    if-eqz v15, :cond_6

    .line 2371
    new-instance v7, Lfl;

    invoke-direct {v7}, Lfl;-><init>()V

    .line 2372
    .local v7, "addedFragments":Lfl;, "Lfl<Landroid/support/v4/app/Fragment;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lco;->b(Lfl;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 2373
    invoke-direct/range {v2 .. v7}, Lco;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;IILfl;)I

    move-result v12

    .line 2375
    invoke-static {v7}, Lco;->a(Lfl;)V

    .line 2378
    .end local v7    # "addedFragments":Lfl;, "Lfl<Landroid/support/v4/app/Fragment;>;"
    :cond_6
    move/from16 v0, p3

    if-eq v12, v0, :cond_7

    if-eqz v15, :cond_7

    .line 2380
    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    invoke-static/range {v8 .. v13}, Lcs;->a(Lco;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2382
    move-object/from16 v0, p0

    iget v2, v0, Lco;->k:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lco;->a(IZ)V

    .line 2385
    :cond_7
    move/from16 v19, p3

    :goto_4
    move/from16 v0, v19

    move/from16 v1, p4

    if-ge v0, v1, :cond_a

    .line 2386
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcf;

    .line 2387
    .restart local v18    # "record":Lcf;
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 2388
    .restart local v16    # "isPop":Z
    if-eqz v16, :cond_9

    move-object/from16 v0, v18

    iget v2, v0, Lcf;->n:I

    if-ltz v2, :cond_9

    .line 2389
    move-object/from16 v0, v18

    iget v2, v0, Lcf;->n:I

    .line 23149
    monitor-enter p0

    .line 23150
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lco;->i:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23151
    move-object/from16 v0, p0

    iget-object v3, v0, Lco;->j:Ljava/util/ArrayList;

    if-nez v3, :cond_8

    .line 23152
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lco;->j:Ljava/util/ArrayList;

    .line 23155
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lco;->j:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23156
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2390
    const/4 v2, -0x1

    move-object/from16 v0, v18

    iput v2, v0, Lcf;->n:I

    .line 2385
    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 23156
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2394
    .end local v16    # "isPop":Z
    .end local v18    # "record":Lcf;
    :cond_a
    if-eqz v14, :cond_b

    .line 2397
    :cond_b
    return-void
.end method

.method private static a(Landroid/animation/Animator;)Z
    .locals 8
    .param p0, "anim"    # Landroid/animation/Animator;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 721
    if-nez p0, :cond_0

    move v4, v5

    .line 740
    .end local p0    # "anim":Landroid/animation/Animator;
    .local v0, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local v1, "i":I
    :goto_0
    return v4

    .line 724
    .end local v0    # "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v1    # "i":I
    .restart local p0    # "anim":Landroid/animation/Animator;
    :cond_0
    instance-of v4, p0, Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    move-object v2, p0

    .line 725
    check-cast v2, Landroid/animation/ValueAnimator;

    .line 726
    .local v2, "valueAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 727
    .local v3, "values":[Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 728
    const-string/jumbo v4, "alpha"

    aget-object v7, v3, v1

    invoke-virtual {v7}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    .line 729
    goto :goto_0

    .line 727
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 732
    .end local v1    # "i":I
    .end local v2    # "valueAnim":Landroid/animation/ValueAnimator;
    .end local v3    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_2
    instance-of v4, p0, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_4

    .line 733
    check-cast p0, Landroid/animation/AnimatorSet;

    .end local p0    # "anim":Landroid/animation/Animator;
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 734
    .restart local v0    # "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 735
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    invoke-static {v4}, Lco;->a(Landroid/animation/Animator;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v6

    .line 736
    goto :goto_0

    .line 734
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v1    # "i":I
    :cond_4
    move v4, v5

    .line 740
    goto :goto_0
.end method

.method private a(Ljava/lang/String;II)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 834
    invoke-virtual {p0}, Lco;->k()Z

    .line 835
    invoke-virtual {p0, v8}, Lco;->a(Z)V

    .line 837
    iget-object v0, p0, Lco;->o:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lco;->o:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->peekChildFragmentManager()Lcn;

    move-result-object v6

    .line 841
    .local v6, "childManager":Lcn;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcn;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    move v7, v8

    .line 859
    .end local v6    # "childManager":Lcn;
    :goto_0
    return v7

    .line 847
    :cond_0
    iget-object v1, p0, Lco;->v:Ljava/util/ArrayList;

    iget-object v2, p0, Lco;->w:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lco;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v7

    .line 848
    .local v7, "executePop":Z
    if-eqz v7, :cond_1

    .line 849
    iput-boolean v8, p0, Lco;->c:Z

    .line 851
    :try_start_0
    iget-object v0, p0, Lco;->v:Ljava/util/ArrayList;

    iget-object v1, p0, Lco;->w:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lco;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    invoke-virtual {p0}, Lco;->j()V

    .line 857
    :cond_1
    invoke-virtual {p0}, Lco;->l()V

    .line 858
    invoke-virtual {p0}, Lco;->n()V

    goto :goto_0

    .line 853
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lco;->j()V

    throw v0
.end method

.method private b(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "onlyRecursive"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3385
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3386
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Lcn;

    move-result-object v1

    .line 3387
    .local v1, "parentManager":Lcn;
    instance-of v2, v1, Lco;

    if-eqz v2, :cond_0

    .line 3388
    check-cast v1, Lco;

    .end local v1    # "parentManager":Lcn;
    const/4 v2, 0x1

    .line 3389
    invoke-direct {v1, p1, p2, v2}, Lco;->b(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V

    .line 3392
    :cond_0
    iget-object v2, p0, Lco;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lft;

    .line 3393
    .local v0, "p":Lft;
    if-eqz p3, :cond_1

    iget-object v2, v0, Lft;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0

    .line 3397
    .end local v0    # "p":Lft;
    :cond_2
    return-void
.end method

.method private b(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3416
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3417
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Lcn;

    move-result-object v1

    .line 3418
    .local v1, "parentManager":Lcn;
    instance-of v2, v1, Lco;

    if-eqz v2, :cond_0

    .line 3419
    check-cast v1, Lco;

    .end local v1    # "parentManager":Lcn;
    const/4 v2, 0x1

    .line 3420
    invoke-direct {v1, p1, p2, v2}, Lco;->b(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3423
    :cond_0
    iget-object v2, p0, Lco;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lft;

    .line 3424
    .local v0, "p":Lft;
    if-eqz p3, :cond_1

    iget-object v2, v0, Lft;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0

    .line 3428
    .end local v0    # "p":Lft;
    :cond_2
    return-void
.end method

.method private b(Landroid/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3463
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3464
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Lcn;

    move-result-object v1

    .line 3465
    .local v1, "parentManager":Lcn;
    instance-of v2, v1, Lco;

    if-eqz v2, :cond_0

    .line 3466
    check-cast v1, Lco;

    .end local v1    # "parentManager":Lcn;
    const/4 v2, 0x1

    .line 3467
    invoke-direct {v1, p1, v2}, Lco;->b(Landroid/support/v4/app/Fragment;Z)V

    .line 3470
    :cond_0
    iget-object v2, p0, Lco;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lft;

    .line 3471
    .local v0, "p":Lft;
    if-eqz p2, :cond_1

    iget-object v2, v0, Lft;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0

    .line 3475
    .end local v0    # "p":Lft;
    :cond_2
    return-void
.end method

.method private b(Lfl;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfl",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2592
    .local p1, "added":Lfl;, "Lfl<Landroid/support/v4/app/Fragment;>;"
    iget v0, p0, Lco;->k:I

    if-gtz v0, :cond_1

    .line 2608
    :cond_0
    return-void

    .line 2596
    :cond_1
    iget v0, p0, Lco;->k:I

    const/4 v3, 0x4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2597
    .local v2, "state":I
    iget-object v0, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2598
    .local v7, "numAdded":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 2599
    iget-object v0, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 2600
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    iget v0, v1, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v0, v2, :cond_2

    .line 2601
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getNextAnim()I

    move-result v3

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getNextTransition()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lco;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 2603
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_2

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_2

    .line 2604
    invoke-virtual {p1, v1}, Lfl;->add(Ljava/lang/Object;)Z

    .line 2598
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcf;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcf;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 2248
    iget-object v4, p0, Lco;->A:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    move v3, v5

    .line 2249
    .local v3, "numPostponed":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_6

    .line 2250
    iget-object v4, p0, Lco;->A:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco$h;

    .line 2251
    .local v2, "listener":Lco$h;
    if-eqz p1, :cond_2

    .line 17792
    iget-boolean v4, v2, Lco$h;->a:Z

    .line 2251
    if-nez v4, :cond_2

    .line 18792
    iget-object v4, v2, Lco$h;->b:Lcf;

    .line 2252
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2253
    .local v1, "index":I
    if-eq v1, v7, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2254
    invoke-virtual {v2}, Lco$h;->d()V

    .line 2249
    .end local v1    # "index":I
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2248
    .end local v0    # "i":I
    .end local v2    # "listener":Lco$h;
    .end local v3    # "numPostponed":I
    :cond_1
    iget-object v4, p0, Lco;->A:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_0

    .line 18831
    .restart local v0    # "i":I
    .restart local v2    # "listener":Lco$h;
    .restart local v3    # "numPostponed":I
    :cond_2
    iget v4, v2, Lco$h;->c:I

    if-nez v4, :cond_4

    const/4 v4, 0x1

    .line 2258
    :goto_3
    if-nez v4, :cond_3

    if-eqz p1, :cond_0

    .line 19792
    iget-object v4, v2, Lco$h;->b:Lcf;

    .line 2259
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, p1, v5, v6}, Lcf;->a(Ljava/util/ArrayList;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2260
    :cond_3
    iget-object v4, p0, Lco;->A:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2261
    add-int/lit8 v0, v0, -0x1

    .line 2262
    add-int/lit8 v3, v3, -0x1

    .line 2264
    if-eqz p1, :cond_5

    .line 20792
    iget-boolean v4, v2, Lco$h;->a:Z

    .line 2264
    if-nez v4, :cond_5

    .line 21792
    iget-object v4, v2, Lco$h;->b:Lcf;

    .line 2265
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .restart local v1    # "index":I
    if-eq v1, v7, :cond_5

    .line 2266
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2268
    invoke-virtual {v2}, Lco$h;->d()V

    goto :goto_2

    .end local v1    # "index":I
    :cond_4
    move v4, v5

    .line 18831
    goto :goto_3

    .line 2270
    :cond_5
    invoke-virtual {v2}, Lco$h;->c()V

    goto :goto_2

    .line 2274
    .end local v2    # "listener":Lco$h;
    :cond_6
    return-void
.end method

.method private static b(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 6
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcf;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcf;>;"
    .local p1, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v5, 0x1

    .line 2569
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 2570
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcf;

    .line 2571
    .local v3, "record":Lcf;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2572
    .local v1, "isPop":Z
    if-eqz v1, :cond_1

    .line 2573
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcf;->b(I)V

    .line 2576
    add-int/lit8 v4, p3, -0x1

    if-ne v0, v4, :cond_0

    move v2, v5

    .line 2577
    .local v2, "moveToState":Z
    :goto_1
    invoke-virtual {v3, v2}, Lcf;->a(Z)V

    .line 2569
    .end local v2    # "moveToState":Z
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2576
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 2579
    :cond_1
    invoke-virtual {v3, v5}, Lcf;->b(I)V

    .line 2580
    invoke-virtual {v3}, Lcf;->e()V

    goto :goto_2

    .line 2583
    .end local v1    # "isPop":Z
    .end local v3    # "record":Lcf;
    :cond_2
    return-void
.end method

.method public static c(I)I
    .locals 1
    .param p0, "transit"    # I

    .prologue
    .line 3583
    const/4 v0, 0x0

    .line 3584
    .local v0, "rev":I
    sparse-switch p0, :sswitch_data_0

    .line 3595
    :goto_0
    return v0

    .line 3586
    :sswitch_0
    const/16 v0, 0x2002

    .line 3587
    goto :goto_0

    .line 3589
    :sswitch_1
    const/16 v0, 0x1001

    .line 3590
    goto :goto_0

    .line 3592
    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    .line 3584
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private c(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3432
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3433
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Lcn;

    move-result-object v1

    .line 3434
    .local v1, "parentManager":Lcn;
    instance-of v2, v1, Lco;

    if-eqz v2, :cond_0

    .line 3435
    check-cast v1, Lco;

    .end local v1    # "parentManager":Lcn;
    const/4 v2, 0x1

    .line 3436
    invoke-direct {v1, p1, p2, v2}, Lco;->c(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3439
    :cond_0
    iget-object v2, p0, Lco;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lft;

    .line 3440
    .local v0, "p":Lft;
    if-eqz p3, :cond_1

    iget-object v2, v0, Lft;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0

    .line 3444
    .end local v0    # "p":Lft;
    :cond_2
    return-void
.end method

.method private c(Landroid/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3478
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3479
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Lcn;

    move-result-object v1

    .line 3480
    .local v1, "parentManager":Lcn;
    instance-of v2, v1, Lco;

    if-eqz v2, :cond_0

    .line 3481
    check-cast v1, Lco;

    .end local v1    # "parentManager":Lcn;
    const/4 v2, 0x1

    .line 3482
    invoke-direct {v1, p1, v2}, Lco;->c(Landroid/support/v4/app/Fragment;Z)V

    .line 3485
    :cond_0
    iget-object v2, p0, Lco;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lft;

    .line 3486
    .local v0, "p":Lft;
    if-eqz p2, :cond_1

    iget-object v2, v0, Lft;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0

    .line 3490
    .end local v0    # "p":Lft;
    :cond_2
    return-void
.end method

.method private c(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcf;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2662
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcf;>;"
    .local p2, "isPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 2663
    .local v0, "didSomething":Z
    monitor-enter p0

    .line 2664
    :try_start_0
    iget-object v3, p0, Lco;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lco;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 2665
    :cond_0
    const/4 v3, 0x0

    monitor-exit p0

    .line 2675
    :goto_0
    return v3

    .line 2668
    :cond_1
    iget-object v3, p0, Lco;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2669
    .local v2, "numActions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 2670
    iget-object v3, p0, Lco;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco$f;

    invoke-interface {v3, p1, p2}, Lco$f;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 2669
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2672
    :cond_2
    iget-object v3, p0, Lco;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2673
    iget-object v3, p0, Lco;->l:Lcm;

    .line 25202
    iget-object v3, v3, Lcm;->d:Landroid/os/Handler;

    .line 2673
    iget-object v4, p0, Lco;->C:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2674
    monitor-exit p0

    move v3, v0

    .line 2675
    goto :goto_0

    .line 2674
    .end local v1    # "i":I
    .end local v2    # "numActions":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private d(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "outState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3523
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3524
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Lcn;

    move-result-object v1

    .line 3525
    .local v1, "parentManager":Lcn;
    instance-of v2, v1, Lco;

    if-eqz v2, :cond_0

    .line 3526
    check-cast v1, Lco;

    .end local v1    # "parentManager":Lcn;
    const/4 v2, 0x1

    .line 3527
    invoke-direct {v1, p1, p2, v2}, Lco;->d(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3530
    :cond_0
    iget-object v2, p0, Lco;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lft;

    .line 3531
    .local v0, "p":Lft;
    if-eqz p3, :cond_1

    iget-object v2, v0, Lft;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0

    .line 3535
    .end local v0    # "p":Lft;
    :cond_2
    return-void
.end method

.method private d(Landroid/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3493
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3494
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Lcn;

    move-result-object v1

    .line 3495
    .local v1, "parentManager":Lcn;
    instance-of v2, v1, Lco;

    if-eqz v2, :cond_0

    .line 3496
    check-cast v1, Lco;

    .end local v1    # "parentManager":Lcn;
    const/4 v2, 0x1

    .line 3497
    invoke-direct {v1, p1, v2}, Lco;->d(Landroid/support/v4/app/Fragment;Z)V

    .line 3500
    :cond_0
    iget-object v2, p0, Lco;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lft;

    .line 3501
    .local v0, "p":Lft;
    if-eqz p2, :cond_1

    iget-object v2, v0, Lft;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0

    .line 3505
    .end local v0    # "p":Lft;
    :cond_2
    return-void
.end method

.method private e(Landroid/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3508
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3509
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Lcn;

    move-result-object v1

    .line 3510
    .local v1, "parentManager":Lcn;
    instance-of v2, v1, Lco;

    if-eqz v2, :cond_0

    .line 3511
    check-cast v1, Lco;

    .end local v1    # "parentManager":Lcn;
    const/4 v2, 0x1

    .line 3512
    invoke-direct {v1, p1, v2}, Lco;->e(Landroid/support/v4/app/Fragment;Z)V

    .line 3515
    :cond_0
    iget-object v2, p0, Lco;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lft;

    .line 3516
    .local v0, "p":Lft;
    if-eqz p2, :cond_1

    iget-object v2, v0, Lft;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0

    .line 3520
    .end local v0    # "p":Lft;
    :cond_2
    return-void
.end method

.method public static f(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v0, 0x1

    .line 1924
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v1, :cond_0

    .line 1925
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1928
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-nez v1, :cond_1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    .line 1930
    :cond_0
    return-void

    .line 1928
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Landroid/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3538
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3539
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Lcn;

    move-result-object v1

    .line 3540
    .local v1, "parentManager":Lcn;
    instance-of v2, v1, Lco;

    if-eqz v2, :cond_0

    .line 3541
    check-cast v1, Lco;

    .end local v1    # "parentManager":Lcn;
    const/4 v2, 0x1

    .line 3542
    invoke-direct {v1, p1, v2}, Lco;->f(Landroid/support/v4/app/Fragment;Z)V

    .line 3545
    :cond_0
    iget-object v2, p0, Lco;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lft;

    .line 3546
    .local v0, "p":Lft;
    if-eqz p2, :cond_1

    iget-object v2, v0, Lft;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0

    .line 3550
    .end local v0    # "p":Lft;
    :cond_2
    return-void
.end method

.method public static g(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v0, 0x0

    .line 1940
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v1, :cond_1

    .line 1941
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1944
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    .line 1946
    :cond_1
    return-void
.end method

.method private g(Landroid/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3553
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3554
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Lcn;

    move-result-object v1

    .line 3555
    .local v1, "parentManager":Lcn;
    instance-of v2, v1, Lco;

    if-eqz v2, :cond_0

    .line 3556
    check-cast v1, Lco;

    .end local v1    # "parentManager":Lcn;
    const/4 v2, 0x1

    .line 3557
    invoke-direct {v1, p1, v2}, Lco;->g(Landroid/support/v4/app/Fragment;Z)V

    .line 3560
    :cond_0
    iget-object v2, p0, Lco;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lft;

    .line 3561
    .local v0, "p":Lft;
    if-eqz p2, :cond_1

    iget-object v2, v0, Lft;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0

    .line 3565
    .end local v0    # "p":Lft;
    :cond_2
    return-void
.end method

.method private h(Landroid/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3568
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 3569
    iget-object v2, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Lcn;

    move-result-object v1

    .line 3570
    .local v1, "parentManager":Lcn;
    instance-of v2, v1, Lco;

    if-eqz v2, :cond_0

    .line 3571
    check-cast v1, Lco;

    .end local v1    # "parentManager":Lcn;
    const/4 v2, 0x1

    .line 3572
    invoke-direct {v1, p1, v2}, Lco;->h(Landroid/support/v4/app/Fragment;Z)V

    .line 3575
    :cond_0
    iget-object v2, p0, Lco;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lft;

    .line 3576
    .local v0, "p":Lft;
    if-eqz p2, :cond_1

    iget-object v2, v0, Lft;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0

    .line 3580
    .end local v0    # "p":Lft;
    :cond_2
    return-void
.end method

.method private k(Landroid/support/v4/app/Fragment;)V
    .locals 6
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1640
    iget v2, p0, Lco;->k:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lco;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1641
    return-void
.end method

.method private l(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2841
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 2854
    :cond_0
    :goto_0
    return-void

    .line 2844
    :cond_1
    iget-object v0, p0, Lco;->z:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 2845
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lco;->z:Landroid/util/SparseArray;

    .line 2849
    :goto_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Lco;->z:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2850
    iget-object v0, p0, Lco;->z:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2851
    iget-object v0, p0, Lco;->z:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2852
    const/4 v0, 0x0

    iput-object v0, p0, Lco;->z:Landroid/util/SparseArray;

    goto :goto_0

    .line 2847
    :cond_2
    iget-object v0, p0, Lco;->z:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method private m(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2857
    const/4 v0, 0x0

    .line 2859
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Lco;->y:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 2860
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lco;->y:Landroid/os/Bundle;

    .line 2862
    :cond_0
    iget-object v1, p0, Lco;->y:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 2863
    iget-object v1, p0, Lco;->y:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lco;->d(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 2864
    iget-object v1, p0, Lco;->y:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2865
    iget-object v0, p0, Lco;->y:Landroid/os/Bundle;

    .line 2866
    const/4 v1, 0x0

    iput-object v1, p0, Lco;->y:Landroid/os/Bundle;

    .line 2869
    :cond_1
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 2870
    invoke-direct {p0, p1}, Lco;->l(Landroid/support/v4/app/Fragment;)V

    .line 2872
    :cond_2
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_4

    .line 2873
    if-nez v0, :cond_3

    .line 2874
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "result":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2876
    .restart local v0    # "result":Landroid/os/Bundle;
    :cond_3
    const-string/jumbo v1, "android:view_state"

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2879
    :cond_4
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_6

    .line 2880
    if-nez v0, :cond_5

    .line 2881
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "result":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2884
    .restart local v0    # "result":Landroid/os/Bundle;
    :cond_5
    const-string/jumbo v1, "android:user_visible_hint"

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2887
    :cond_6
    return-object v0
.end method

.method private w()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2043
    iget-boolean v0, p0, Lco;->r:Z

    if-eqz v0, :cond_0

    .line 2044
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2047
    :cond_0
    iget-object v0, p0, Lco;->t:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2048
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can not perform this action inside of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lco;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2051
    :cond_1
    return-void
.end method

.method private x()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 2092
    monitor-enter p0

    .line 2093
    :try_start_0
    iget-object v3, p0, Lco;->A:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lco;->A:Ljava/util/ArrayList;

    .line 2094
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v0

    .line 2095
    .local v1, "postponeReady":Z
    :goto_0
    iget-object v3, p0, Lco;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lco;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v0, :cond_3

    .line 2096
    .local v0, "pendingReady":Z
    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 2097
    :cond_0
    iget-object v2, p0, Lco;->l:Lcm;

    .line 15202
    iget-object v2, v2, Lcm;->d:Landroid/os/Handler;

    .line 2097
    iget-object v3, p0, Lco;->C:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2098
    iget-object v2, p0, Lco;->l:Lcm;

    .line 16202
    iget-object v2, v2, Lcm;->d:Landroid/os/Handler;

    .line 2098
    iget-object v3, p0, Lco;->C:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2100
    :cond_1
    monitor-exit p0

    return-void

    .end local v0    # "pendingReady":Z
    .end local v1    # "postponeReady":Z
    :cond_2
    move v1, v2

    .line 2094
    goto :goto_0

    .restart local v1    # "postponeReady":Z
    :cond_3
    move v0, v2

    .line 2095
    goto :goto_1

    .line 2100
    .end local v1    # "postponeReady":Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private y()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2614
    iget-object v0, p0, Lco;->A:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2615
    :goto_0
    iget-object v0, p0, Lco;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2616
    iget-object v0, p0, Lco;->A:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco$h;

    invoke-virtual {v0}, Lco$h;->c()V

    goto :goto_0

    .line 2619
    :cond_0
    return-void
.end method

.method private z()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 2796
    const/4 v3, 0x0

    .line 2797
    .local v3, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    const/4 v1, 0x0

    .line 2798
    .local v1, "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcp;>;"
    iget-object v6, p0, Lco;->f:Landroid/util/SparseArray;

    if-eqz v6, :cond_6

    .line 2799
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 2800
    iget-object v6, p0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 2801
    .local v2, "f":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_5

    .line 2802
    iget-boolean v6, v2, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    if-eqz v6, :cond_1

    .line 2803
    if-nez v3, :cond_0

    .line 2804
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2806
    .restart local v3    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2807
    iget-object v6, v2, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v6, :cond_2

    iget-object v6, v2, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v6, v6, Landroid/support/v4/app/Fragment;->mIndex:I

    :goto_1
    iput v6, v2, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    .line 2811
    :cond_1
    iget-object v6, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lco;

    if-eqz v6, :cond_3

    .line 2812
    iget-object v6, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lco;

    invoke-direct {v6}, Lco;->z()V

    .line 2813
    iget-object v6, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lco;

    iget-object v0, v6, Lco;->B:Lcp;

    .line 2820
    .local v0, "child":Lcp;
    :goto_2
    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    .line 2821
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcp;>;"
    iget-object v6, p0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2822
    .restart local v1    # "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcp;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    if-ge v5, v4, :cond_4

    .line 2823
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2822
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2807
    .end local v0    # "child":Lcp;
    .end local v5    # "j":I
    :cond_2
    const/4 v6, -0x1

    goto :goto_1

    .line 2817
    :cond_3
    iget-object v0, v2, Landroid/support/v4/app/Fragment;->mChildNonConfig:Lcp;

    .restart local v0    # "child":Lcp;
    goto :goto_2

    .line 2827
    :cond_4
    if-eqz v1, :cond_5

    .line 2828
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2799
    .end local v0    # "child":Lcp;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2833
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .end local v4    # "i":I
    :cond_6
    if-nez v3, :cond_7

    if-nez v1, :cond_7

    .line 2834
    iput-object v7, p0, Lco;->B:Lcp;

    .line 2838
    :goto_4
    return-void

    .line 2836
    :cond_7
    new-instance v6, Lcp;

    invoke-direct {v6, v3, v1}, Lcp;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v6, p0, Lco;->B:Lcp;

    goto :goto_4
.end method


# virtual methods
.method public final a(Lcf;)I
    .locals 4
    .param p1, "bse"    # Lcf;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2104
    monitor-enter p0

    .line 2105
    :try_start_0
    iget-object v2, p0, Lco;->j:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lco;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 2106
    :cond_0
    iget-object v2, p0, Lco;->i:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 2107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lco;->i:Ljava/util/ArrayList;

    .line 2109
    :cond_1
    iget-object v2, p0, Lco;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2111
    .local v0, "index":I
    iget-object v2, p0, Lco;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2112
    monitor-exit p0

    move v1, v0

    .line 2118
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    return v1

    .line 2115
    .end local v1    # "index":I
    :cond_2
    iget-object v2, p0, Lco;->j:Ljava/util/ArrayList;

    iget-object v3, p0, Lco;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2117
    .restart local v0    # "index":I
    iget-object v2, p0, Lco;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2118
    monitor-exit p0

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 2120
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
    .locals 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 952
    iget v2, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v2, :cond_0

    .line 953
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Fragment "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not currently in the FragmentManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lco;->a(Ljava/lang/RuntimeException;)V

    .line 956
    :cond_0
    iget v2, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v2, :cond_1

    .line 957
    invoke-direct {p0, p1}, Lco;->m(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 958
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    new-instance v1, Landroid/support/v4/app/Fragment$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    .line 960
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_1
    return-object v1
.end method

.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "id"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1989
    iget-object v2, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1990
    iget-object v2, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1991
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_1

    .line 2004
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_0
    :goto_1
    return-object v0

    .line 1989
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1995
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_2
    iget-object v2, p0, Lco;->f:Landroid/util/SparseArray;

    if-eqz v2, :cond_4

    .line 1997
    iget-object v2, p0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_2
    if-ltz v1, :cond_4

    .line 1998
    iget-object v2, p0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1999
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_3

    iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eq v2, p1, :cond_0

    .line 1997
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2004
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 898
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 899
    .local v1, "index":I
    if-ne v1, v2, :cond_1

    .line 900
    const/4 v0, 0x0

    .line 907
    :cond_0
    :goto_0
    return-object v0

    .line 902
    :cond_1
    iget-object v2, p0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 903
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_0

    .line 904
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Fragment no longer exists for key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lco;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2009
    if-eqz p1, :cond_2

    .line 2011
    iget-object v2, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2012
    iget-object v2, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2013
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2027
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return-object v0

    .line 2011
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2018
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lco;->f:Landroid/util/SparseArray;

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    .line 2020
    iget-object v2, p0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_4

    .line 2021
    iget-object v2, p0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2022
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2020
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2027
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a()Landroid/support/v4/app/FragmentTransaction;
    .locals 1

    .prologue
    .line 776
    new-instance v0, Lcf;

    invoke-direct {v0, p0}, Lcf;-><init>(Lco;)V

    return-object v0
.end method

.method public final a(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 810
    if-gez p1, :cond_0

    .line 811
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Bad id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 813
    :cond_0
    new-instance v0, Lco$g;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Lco$g;-><init>(Lco;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lco;->a(Lco$f;Z)V

    .line 814
    return-void
.end method

.method final a(IZ)V
    .locals 7
    .param p1, "newState"    # I
    .param p2, "always"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1792
    iget-object v5, p0, Lco;->l:Lcm;

    if-nez v5, :cond_0

    if-eqz p1, :cond_0

    .line 1793
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "No activity"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1796
    :cond_0
    if-nez p2, :cond_2

    iget v5, p0, Lco;->k:I

    if-ne p1, v5, :cond_2

    .line 1837
    :cond_1
    :goto_0
    return-void

    .line 1800
    :cond_2
    iput p1, p0, Lco;->k:I

    .line 1802
    iget-object v5, p0, Lco;->f:Landroid/util/SparseArray;

    if-eqz v5, :cond_1

    .line 1803
    const/4 v2, 0x0

    .line 1806
    .local v2, "loadersRunning":Z
    iget-object v5, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1807
    .local v4, "numAdded":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 1808
    iget-object v5, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1809
    .local v0, "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0, v0}, Lco;->c(Landroid/support/v4/app/Fragment;)V

    .line 1810
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lcw;

    if-eqz v5, :cond_3

    .line 1811
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lcw;

    invoke-virtual {v5}, Lcw;->a()Z

    move-result v5

    or-int/2addr v2, v5

    .line 1807
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1817
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_4
    iget-object v5, p0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1818
    .local v3, "numActive":I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_7

    .line 1819
    iget-object v5, p0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1820
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_6

    iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->mRemoving:Z

    if-nez v5, :cond_5

    iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v5, :cond_6

    :cond_5
    iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    if-nez v5, :cond_6

    .line 1821
    invoke-virtual {p0, v0}, Lco;->c(Landroid/support/v4/app/Fragment;)V

    .line 1822
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lcw;

    if-eqz v5, :cond_6

    .line 1823
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lcw;

    invoke-virtual {v5}, Lcw;->a()Z

    move-result v5

    or-int/2addr v2, v5

    .line 1818
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1828
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_7
    if-nez v2, :cond_8

    .line 1829
    invoke-virtual {p0}, Lco;->i()V

    .line 1832
    :cond_8
    iget-boolean v5, p0, Lco;->q:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lco;->l:Lcm;

    if-eqz v5, :cond_1

    iget v5, p0, Lco;->k:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 1833
    iget-object v5, p0, Lco;->l:Lcm;

    invoke-virtual {v5}, Lcm;->d()V

    .line 1834
    const/4 v5, 0x0

    iput-boolean v5, p0, Lco;->q:Z

    goto :goto_0
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3243
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3244
    iget-object v2, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 3245
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 3246
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3243
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3249
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    return-void
.end method

.method public final a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fragment"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 889
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 890
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lco;->a(Ljava/lang/RuntimeException;)V

    .line 893
    :cond_0
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 894
    return-void
.end method

.method public final a(Landroid/os/Parcelable;Lcp;)V
    .locals 13
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "nonConfig"    # Lcp;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3006
    if-nez p1, :cond_1

    .line 3127
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v5, p1

    .line 3007
    check-cast v5, Landroid/support/v4/app/FragmentManagerState;

    .line 3008
    .local v5, "fms":Landroid/support/v4/app/FragmentManagerState;
    iget-object v10, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    if-eqz v10, :cond_0

    .line 3010
    const/4 v2, 0x0

    .line 3014
    .local v2, "childNonConfigs":Ljava/util/List;, "Ljava/util/List<Lcp;>;"
    if-eqz p2, :cond_6

    .line 28047
    iget-object v9, p2, Lcp;->a:Ljava/util/List;

    .line 28054
    .local v9, "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    iget-object v2, p2, Lcp;->b:Ljava/util/List;

    .line 3017
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    .line 3018
    .local v3, "count":I
    :goto_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v3, :cond_6

    .line 3019
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 3021
    .local v4, "f":Landroid/support/v4/app/Fragment;
    const/4 v8, 0x0

    .line 3022
    .local v8, "index":I
    :goto_3
    iget-object v10, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    array-length v10, v10

    if-ge v8, v10, :cond_3

    iget-object v10, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    aget-object v10, v10, v8

    iget v10, v10, Landroid/support/v4/app/FragmentState;->mIndex:I

    iget v11, v4, Landroid/support/v4/app/Fragment;->mIndex:I

    if-eq v10, v11, :cond_3

    .line 3023
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 3017
    .end local v3    # "count":I
    .end local v4    # "f":Landroid/support/v4/app/Fragment;
    .end local v7    # "i":I
    .end local v8    # "index":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 3025
    .restart local v3    # "count":I
    .restart local v4    # "f":Landroid/support/v4/app/Fragment;
    .restart local v7    # "i":I
    .restart local v8    # "index":I
    :cond_3
    iget-object v10, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    array-length v10, v10

    if-ne v8, v10, :cond_4

    .line 3026
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Could not find active fragment with index "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v4, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v10}, Lco;->a(Ljava/lang/RuntimeException;)V

    .line 3029
    :cond_4
    iget-object v10, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    aget-object v6, v10, v8

    .line 3030
    .local v6, "fs":Landroid/support/v4/app/FragmentState;
    iput-object v4, v6, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    .line 3031
    const/4 v10, 0x0

    iput-object v10, v4, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 3032
    const/4 v10, 0x0

    iput v10, v4, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 3033
    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 3034
    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 3035
    const/4 v10, 0x0

    iput-object v10, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 3036
    iget-object v10, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v10, :cond_5

    .line 3037
    iget-object v10, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v11, p0, Lco;->l:Lcm;

    .line 28198
    iget-object v11, v11, Lcm;->c:Landroid/content/Context;

    .line 3037
    invoke-virtual {v11}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3038
    iget-object v10, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v11, "android:view_state"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v10

    iput-object v10, v4, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 3040
    iget-object v10, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v10, v4, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 3018
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 3047
    .end local v3    # "count":I
    .end local v4    # "f":Landroid/support/v4/app/Fragment;
    .end local v6    # "fs":Landroid/support/v4/app/FragmentState;
    .end local v7    # "i":I
    .end local v8    # "index":I
    .end local v9    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    :cond_6
    new-instance v10, Landroid/util/SparseArray;

    iget-object v11, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    array-length v11, v11

    invoke-direct {v10, v11}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v10, p0, Lco;->f:Landroid/util/SparseArray;

    .line 3048
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    iget-object v10, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    array-length v10, v10

    if-ge v7, v10, :cond_9

    .line 3049
    iget-object v10, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    aget-object v6, v10, v7

    .line 3050
    .restart local v6    # "fs":Landroid/support/v4/app/FragmentState;
    if-eqz v6, :cond_8

    .line 3051
    const/4 v1, 0x0

    .line 3052
    .local v1, "childNonConfig":Lcp;
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_7

    .line 3053
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "childNonConfig":Lcp;
    check-cast v1, Lcp;

    .line 3055
    .restart local v1    # "childNonConfig":Lcp;
    :cond_7
    iget-object v10, p0, Lco;->l:Lcm;

    iget-object v11, p0, Lco;->m:Lck;

    iget-object v12, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    invoke-virtual {v6, v10, v11, v12, v1}, Landroid/support/v4/app/FragmentState;->instantiate(Lcm;Lck;Landroid/support/v4/app/Fragment;Lcp;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 3057
    .restart local v4    # "f":Landroid/support/v4/app/Fragment;
    iget-object v10, p0, Lco;->f:Landroid/util/SparseArray;

    iget v11, v4, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v10, v11, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3061
    const/4 v10, 0x0

    iput-object v10, v6, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    .line 3048
    .end local v1    # "childNonConfig":Lcp;
    .end local v4    # "f":Landroid/support/v4/app/Fragment;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 3066
    .end local v6    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_9
    if-eqz p2, :cond_c

    .line 29047
    iget-object v9, p2, Lcp;->a:Ljava/util/List;

    .line 3068
    .restart local v9    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v9, :cond_b

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    .line 3069
    .restart local v3    # "count":I
    :goto_5
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v3, :cond_c

    .line 3070
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 3071
    .restart local v4    # "f":Landroid/support/v4/app/Fragment;
    iget v10, v4, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    if-ltz v10, :cond_a

    .line 3072
    iget-object v10, p0, Lco;->f:Landroid/util/SparseArray;

    iget v11, v4, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/app/Fragment;

    iput-object v10, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 3073
    iget-object v10, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-nez v10, :cond_a

    .line 3074
    const-string/jumbo v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Re-attaching retained fragment "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " target no longer exists: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 3068
    .end local v3    # "count":I
    .end local v4    # "f":Landroid/support/v4/app/Fragment;
    :cond_b
    const/4 v3, 0x0

    goto :goto_5

    .line 3082
    .end local v9    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    :cond_c
    iget-object v10, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 3083
    iget-object v10, v5, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    if-eqz v10, :cond_f

    .line 3084
    const/4 v7, 0x0

    :goto_7
    iget-object v10, v5, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    array-length v10, v10

    if-ge v7, v10, :cond_f

    .line 3085
    iget-object v10, p0, Lco;->f:Landroid/util/SparseArray;

    iget-object v11, v5, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    aget v11, v11, v7

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 3086
    .restart local v4    # "f":Landroid/support/v4/app/Fragment;
    if-nez v4, :cond_d

    .line 3087
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "No instantiated fragment for index #"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v5, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    aget v12, v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v10}, Lco;->a(Ljava/lang/RuntimeException;)V

    .line 3090
    :cond_d
    const/4 v10, 0x1

    iput-boolean v10, v4, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 3092
    iget-object v10, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 3093
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "Already added!"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 3095
    :cond_e
    iget-object v11, p0, Lco;->e:Ljava/util/ArrayList;

    monitor-enter v11

    .line 3096
    :try_start_0
    iget-object v10, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3097
    monitor-exit v11

    .line 3084
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 3097
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 3102
    .end local v4    # "f":Landroid/support/v4/app/Fragment;
    :cond_f
    iget-object v10, v5, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    if-eqz v10, :cond_11

    .line 3103
    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, v5, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    array-length v11, v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Lco;->g:Ljava/util/ArrayList;

    .line 3104
    const/4 v7, 0x0

    :goto_8
    iget-object v10, v5, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    array-length v10, v10

    if-ge v7, v10, :cond_12

    .line 3105
    iget-object v10, v5, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    aget-object v10, v10, v7

    invoke-virtual {v10, p0}, Landroid/support/v4/app/BackStackState;->instantiate(Lco;)Lcf;

    move-result-object v0

    .line 3114
    .local v0, "bse":Lcf;
    iget-object v10, p0, Lco;->g:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3115
    iget v10, v0, Lcf;->n:I

    if-ltz v10, :cond_10

    .line 3116
    iget v10, v0, Lcf;->n:I

    invoke-direct {p0, v10, v0}, Lco;->a(ILcf;)V

    .line 3104
    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 3120
    .end local v0    # "bse":Lcf;
    :cond_11
    const/4 v10, 0x0

    iput-object v10, p0, Lco;->g:Ljava/util/ArrayList;

    .line 3123
    :cond_12
    iget v10, v5, Landroid/support/v4/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    if-ltz v10, :cond_13

    .line 3124
    iget-object v10, p0, Lco;->f:Landroid/util/SparseArray;

    iget v11, v5, Landroid/support/v4/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/app/Fragment;

    iput-object v10, p0, Lco;->o:Landroid/support/v4/app/Fragment;

    .line 3126
    :cond_13
    iget v10, v5, Landroid/support/v4/app/FragmentManagerState;->mNextFragmentIndex:I

    iput v10, p0, Lco;->d:I

    goto/16 :goto_0
.end method

.method final a(Landroid/support/v4/app/Fragment;IIIZ)V
    .locals 11
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "newState"    # I
    .param p3, "transit"    # I
    .param p4, "transitionStyle"    # I
    .param p5, "keepActive"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1285
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 1286
    const/4 p2, 0x1

    .line 1288
    :cond_1
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-le p2, v0, :cond_2

    .line 1289
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1291
    const/4 p2, 0x1

    .line 1299
    :cond_2
    :goto_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    const/4 v0, 0x3

    if-le p2, v0, :cond_3

    .line 1300
    const/4 p2, 0x3

    .line 1302
    :cond_3
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-gt v0, p2, :cond_21

    .line 1306
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-nez v0, :cond_6

    .line 1584
    :cond_4
    :goto_1
    return-void

    .line 1294
    :cond_5
    iget p2, p1, Landroid/support/v4/app/Fragment;->mState:I

    goto :goto_0

    .line 1309
    :cond_6
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1314
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1315
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1316
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lco;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1318
    :cond_8
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1579
    :cond_9
    :goto_2
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-eq v0, p2, :cond_4

    .line 1580
    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "moveToState: Fragment state for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not updated inline; expected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/support/v4/app/Fragment;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    iput p2, p1, Landroid/support/v4/app/Fragment;->mState:I

    goto :goto_1

    .line 1320
    :pswitch_0
    if-lez p2, :cond_10

    .line 1322
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    .line 1323
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v1, p0, Lco;->l:Lcm;

    .line 9198
    iget-object v1, v1, Lcm;->c:Landroid/content/Context;

    .line 1324
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1323
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1325
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1327
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v1, "android:target_state"

    invoke-virtual {p0, v0, v1}, Lco;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 1329
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_a

    .line 1330
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v1, "android:target_req_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    .line 1333
    :cond_a
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v1, "android:user_visible_hint"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 1335
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_b

    .line 1336
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 1337
    const/4 v0, 0x3

    if-le p2, v0, :cond_b

    .line 1338
    const/4 p2, 0x3

    .line 1343
    :cond_b
    iget-object v0, p0, Lco;->l:Lcm;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mHost:Lcm;

    .line 1344
    iget-object v0, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 1345
    iget-object v0, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Lco;

    .line 1346
    :goto_3
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Lco;

    .line 1350
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_e

    .line 1351
    iget-object v0, p0, Lco;->f:Landroid/util/SparseArray;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v1, v1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eq v0, v1, :cond_d

    .line 1352
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " declared target fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " that does not belong to this FragmentManager!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1345
    :cond_c
    iget-object v0, p0, Lco;->l:Lcm;

    .line 9206
    iget-object v0, v0, Lcm;->f:Lco;

    goto :goto_3

    .line 1356
    :cond_d
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->mState:I

    if-gtz v0, :cond_e

    .line 1357
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lco;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1361
    :cond_e
    iget-object v0, p0, Lco;->l:Lcm;

    .line 10198
    iget-object v0, v0, Lcm;->c:Landroid/content/Context;

    .line 1361
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lco;->a(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V

    .line 1362
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1363
    iget-object v0, p0, Lco;->l:Lcm;

    .line 11198
    iget-object v0, v0, Lcm;->c:Landroid/content/Context;

    .line 1363
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1364
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_f

    .line 1365
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1368
    :cond_f
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_1c

    .line 1369
    iget-object v0, p0, Lco;->l:Lcm;

    invoke-virtual {v0, p1}, Lcm;->a(Landroid/support/v4/app/Fragment;)V

    .line 1373
    :goto_4
    iget-object v0, p0, Lco;->l:Lcm;

    .line 12198
    iget-object v0, v0, Lcm;->c:Landroid/content/Context;

    .line 1373
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lco;->b(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V

    .line 1375
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mIsCreated:Z

    if-nez v0, :cond_1d

    .line 1376
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lco;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1377
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 1378
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lco;->b(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1383
    :goto_5
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 12644
    :cond_10
    :pswitch_1
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mPerformedCreateView:Z

    if-nez v0, :cond_12

    .line 12645
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 12647
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 12648
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 12649
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 12650
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_11

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12651
    :cond_11
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 12652
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lco;->a(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 1392
    :cond_12
    :goto_6
    const/4 v0, 0x1

    if-le p2, v0, :cond_19

    .line 1394
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-nez v0, :cond_17

    .line 1395
    const/4 v8, 0x0

    .line 1396
    .local v8, "container":Landroid/view/ViewGroup;
    iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-eqz v0, :cond_14

    .line 1397
    iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 1398
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Cannot create fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for a container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lco;->a(Ljava/lang/RuntimeException;)V

    .line 1403
    :cond_13
    iget-object v0, p0, Lco;->m:Lck;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v1}, Lck;->a(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "container":Landroid/view/ViewGroup;
    check-cast v8, Landroid/view/ViewGroup;

    .line 1404
    .restart local v8    # "container":Landroid/view/ViewGroup;
    if-nez v8, :cond_14

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRestored:Z

    if-nez v0, :cond_14

    .line 1407
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1411
    .local v9, "resName":Ljava/lang/String;
    :goto_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No view found for id 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 1413
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") for fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1411
    invoke-direct {p0, v0}, Lco;->a(Ljava/lang/RuntimeException;)V

    .line 1418
    .end local v9    # "resName":Ljava/lang/String;
    :cond_14
    iput-object v8, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1419
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v8, v1}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1421
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 1422
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1423
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1424
    if-eqz v8, :cond_15

    .line 1425
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1427
    :cond_15
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_16

    .line 1428
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1430
    :cond_16
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1431
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lco;->a(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 1435
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    .line 1442
    .end local v8    # "container":Landroid/view/ViewGroup;
    :cond_17
    :goto_9
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 1443
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lco;->c(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1444
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_18

    .line 1445
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 1447
    :cond_18
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1451
    :cond_19
    :pswitch_2
    const/4 v0, 0x2

    if-le p2, v0, :cond_1a

    .line 1452
    const/4 v0, 0x3

    iput v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    .line 1456
    :cond_1a
    :pswitch_3
    const/4 v0, 0x3

    if-le p2, v0, :cond_1b

    .line 1458
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStart()V

    .line 1459
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco;->b(Landroid/support/v4/app/Fragment;Z)V

    .line 1463
    :cond_1b
    :pswitch_4
    const/4 v0, 0x4

    if-le p2, v0, :cond_9

    .line 1465
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performResume()V

    .line 1466
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco;->c(Landroid/support/v4/app/Fragment;Z)V

    .line 1467
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1468
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_2

    .line 1371
    :cond_1c
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_4

    .line 1380
    :cond_1d
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 1381
    const/4 v0, 0x1

    iput v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    goto/16 :goto_5

    .line 12654
    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_6

    .line 1409
    .restart local v8    # "container":Landroid/view/ViewGroup;
    :catch_0
    move-exception v0

    const-string/jumbo v9, "unknown"

    .restart local v9    # "resName":Ljava/lang/String;
    goto/16 :goto_7

    .line 1435
    .end local v9    # "resName":Ljava/lang/String;
    :cond_1f
    const/4 v0, 0x0

    goto :goto_8

    .line 1438
    :cond_20
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto :goto_9

    .line 1471
    .end local v8    # "container":Landroid/view/ViewGroup;
    :cond_21
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-le v0, p2, :cond_9

    .line 1472
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_2

    .line 1529
    :cond_22
    :goto_a
    :pswitch_5
    if-gtz p2, :cond_9

    .line 1530
    iget-boolean v0, p0, Lco;->s:Z

    if-eqz v0, :cond_23

    .line 1537
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1538
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v10

    .line 1539
    .local v10, "v":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1540
    invoke-virtual {v10}, Landroid/view/View;->clearAnimation()V

    .line 1547
    .end local v10    # "v":Landroid/view/View;
    :cond_23
    :goto_b
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_24

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 1552
    :cond_24
    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->setStateAfterAnimating(I)V

    .line 1553
    const/4 p2, 0x1

    goto/16 :goto_2

    .line 1474
    :pswitch_6
    const/4 v0, 0x5

    if-ge p2, v0, :cond_25

    .line 1476
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performPause()V

    .line 1477
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco;->d(Landroid/support/v4/app/Fragment;Z)V

    .line 1481
    :cond_25
    :pswitch_7
    const/4 v0, 0x4

    if-ge p2, v0, :cond_26

    .line 1483
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStop()V

    .line 1484
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco;->e(Landroid/support/v4/app/Fragment;Z)V

    .line 1488
    :cond_26
    :pswitch_8
    const/4 v0, 0x3

    if-ge p2, v0, :cond_27

    .line 1490
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performReallyStop()V

    .line 1494
    :cond_27
    :pswitch_9
    const/4 v0, 0x2

    if-ge p2, v0, :cond_22

    .line 1496
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_28

    .line 1499
    iget-object v0, p0, Lco;->l:Lcm;

    invoke-virtual {v0}, Lcm;->b()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v0, :cond_28

    .line 1500
    invoke-direct {p0, p1}, Lco;->l(Landroid/support/v4/app/Fragment;)V

    .line 1503
    :cond_28
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDestroyView()V

    .line 1504
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco;->f(Landroid/support/v4/app/Fragment;Z)V

    .line 1505
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2b

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2b

    .line 1507
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1508
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1509
    const/4 v6, 0x0

    .line 1510
    .local v6, "anim":Lco$c;
    iget v0, p0, Lco;->k:I

    if-lez v0, :cond_29

    iget-boolean v0, p0, Lco;->s:Z

    if-nez v0, :cond_29

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1511
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_29

    iget v0, p1, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_29

    .line 1513
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0, p4}, Lco;->a(Landroid/support/v4/app/Fragment;IZI)Lco$c;

    move-result-object v6

    .line 1516
    :cond_29
    const/4 v0, 0x0

    iput v0, p1, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    .line 1517
    if-eqz v6, :cond_2a

    .line 13596
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 13597
    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->setStateAfterAnimating(I)V

    .line 13598
    iget-object v1, v6, Lco$c;->a:Landroid/view/animation/Animation;

    if-eqz v1, :cond_2c

    .line 13599
    iget-object v1, v6, Lco$c;->a:Landroid/view/animation/Animation;

    .line 13600
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 13601
    invoke-static {v1}, Lco;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v2

    .line 13602
    new-instance v3, Lco$2;

    invoke-direct {v3, p0, v2, p1}, Lco$2;-><init>(Lco;Landroid/view/animation/Animation$AnimationListener;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 13612
    invoke-static {v0, v6}, Lco;->a(Landroid/view/View;Lco$c;)V

    .line 13613
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1520
    :cond_2a
    :goto_c
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1522
    .end local v6    # "anim":Lco$c;
    :cond_2b
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1523
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1524
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1525
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    goto/16 :goto_a

    .line 13615
    .restart local v6    # "anim":Lco$c;
    :cond_2c
    iget-object v1, v6, Lco$c;->b:Landroid/animation/Animator;

    .line 13616
    iget-object v2, v6, Lco$c;->b:Landroid/animation/Animator;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 13617
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 13618
    if-eqz v2, :cond_2d

    .line 13619
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 13621
    :cond_2d
    new-instance v3, Lco$3;

    invoke-direct {v3, p0, v2, v0, p1}, Lco$3;-><init>(Lco;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13633
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 13634
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0, v6}, Lco;->a(Landroid/view/View;Lco$c;)V

    .line 13635
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_c

    .line 1541
    .end local v6    # "anim":Lco$c;
    :cond_2e
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1542
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v7

    .line 1543
    .local v7, "animator":Landroid/animation/Animator;
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1544
    invoke-virtual {v7}, Landroid/animation/Animator;->cancel()V

    goto/16 :goto_b

    .line 1556
    .end local v7    # "animator":Landroid/animation/Animator;
    :cond_2f
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_30

    .line 1557
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDestroy()V

    .line 1558
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco;->g(Landroid/support/v4/app/Fragment;Z)V

    .line 1563
    :goto_d
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDetach()V

    .line 1564
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco;->h(Landroid/support/v4/app/Fragment;Z)V

    .line 1565
    if-nez p5, :cond_9

    .line 1566
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_31

    .line 13864
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_9

    .line 13871
    iget-object v0, p0, Lco;->f:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13873
    iget-object v0, p0, Lco;->l:Lcm;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcm;->b(Ljava/lang/String;)V

    .line 13874
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->initState()V

    goto/16 :goto_2

    .line 1560
    :cond_30
    const/4 v0, 0x0

    iput v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    goto :goto_d

    .line 1569
    :cond_31
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mHost:Lcm;

    .line 1570
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 1571
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Lco;

    goto/16 :goto_2

    .line 1318
    .line 1472
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Landroid/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "moveToStateNow"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1879
    invoke-virtual {p0, p1}, Lco;->d(Landroid/support/v4/app/Fragment;)V

    .line 1880
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_3

    .line 1881
    iget-object v0, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1882
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1884
    :cond_0
    iget-object v1, p0, Lco;->e:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1885
    :try_start_0
    iget-object v0, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1886
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1887
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1888
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1889
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1890
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    .line 1892
    :cond_1
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_2

    .line 1893
    iput-boolean v3, p0, Lco;->q:Z

    .line 1895
    :cond_2
    if-eqz p2, :cond_3

    .line 1896
    invoke-direct {p0, p1}, Lco;->k(Landroid/support/v4/app/Fragment;)V

    .line 1899
    :cond_3
    return-void

    .line 1886
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Lcm;Lck;Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "host"    # Lcm;
    .param p2, "container"    # Lck;
    .param p3, "parent"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3146
    iget-object v0, p0, Lco;->l:Lcm;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3147
    :cond_0
    iput-object p1, p0, Lco;->l:Lcm;

    .line 3148
    iput-object p2, p0, Lco;->m:Lck;

    .line 3149
    iput-object p3, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    .line 3150
    return-void
.end method

.method public final a(Lco$f;Z)V
    .locals 2
    .param p1, "action"    # Lco$f;
    .param p2, "allowStateLoss"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2066
    if-nez p2, :cond_0

    .line 2067
    invoke-direct {p0}, Lco;->w()V

    .line 2069
    :cond_0
    monitor-enter p0

    .line 2070
    :try_start_0
    iget-boolean v0, p0, Lco;->s:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lco;->l:Lcm;

    if-nez v0, :cond_3

    .line 2071
    :cond_1
    if-eqz p2, :cond_2

    .line 2073
    monitor-exit p0

    .line 2082
    :goto_0
    return-void

    .line 2075
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2082
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2077
    :cond_3
    :try_start_1
    iget-object v0, p0, Lco;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 2078
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco;->b:Ljava/util/ArrayList;

    .line 2080
    :cond_4
    iget-object v0, p0, Lco;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2081
    invoke-direct {p0}, Lco;->x()V

    .line 2082
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 985
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 988
    .local v4, "innerPrefix":Ljava/lang/String;
    iget-object v6, p0, Lco;->f:Landroid/util/SparseArray;

    if-eqz v6, :cond_1

    .line 989
    iget-object v6, p0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 990
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 991
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Active Fragments in "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 992
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 993
    const-string/jumbo v6, ":"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 994
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 995
    iget-object v6, p0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 996
    .local v2, "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 997
    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 998
    if-eqz v2, :cond_0

    .line 999
    invoke-virtual {v2, v4, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 994
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1005
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .end local v3    # "i":I
    :cond_1
    iget-object v6, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1006
    .restart local v0    # "N":I
    if-lez v0, :cond_2

    .line 1007
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Added Fragments:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 1009
    iget-object v6, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 1010
    .restart local v2    # "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1011
    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1013
    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1018
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .end local v3    # "i":I
    :cond_2
    iget-object v6, p0, Lco;->h:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 1019
    iget-object v6, p0, Lco;->h:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1020
    if-lez v0, :cond_3

    .line 1021
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Fragments Created Menus:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v0, :cond_3

    .line 1023
    iget-object v6, p0, Lco;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 1024
    .restart local v2    # "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1025
    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1030
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .end local v3    # "i":I
    :cond_3
    iget-object v6, p0, Lco;->g:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 1031
    iget-object v6, p0, Lco;->g:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1032
    if-lez v0, :cond_4

    .line 1033
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Back Stack:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v0, :cond_4

    .line 1035
    iget-object v6, p0, Lco;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcf;

    .line 1036
    .local v1, "bs":Lcf;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1037
    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcf;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v1, v4, p3}, Lcf;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1034
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1043
    .end local v1    # "bs":Lcf;
    .end local v3    # "i":I
    :cond_4
    monitor-enter p0

    .line 1044
    :try_start_0
    iget-object v6, p0, Lco;->i:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 1045
    iget-object v6, p0, Lco;->i:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1046
    if-lez v0, :cond_5

    .line 1047
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Back Stack Indices:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1048
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v0, :cond_5

    .line 1049
    iget-object v6, p0, Lco;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcf;

    .line 1050
    .restart local v1    # "bs":Lcf;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1051
    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1048
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1056
    .end local v1    # "bs":Lcf;
    .end local v3    # "i":I
    :cond_5
    iget-object v6, p0, Lco;->j:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lco;->j:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 1057
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "mAvailBackStackIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1058
    iget-object v6, p0, Lco;->j:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    iget-object v6, p0, Lco;->b:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    .line 1063
    iget-object v6, p0, Lco;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1064
    if-lez v0, :cond_7

    .line 1065
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Pending Actions:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1066
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v0, :cond_7

    .line 1067
    iget-object v6, p0, Lco;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco$f;

    .line 1068
    .local v5, "r":Lco$f;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1069
    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1066
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1060
    .end local v3    # "i":I
    .end local v5    # "r":Lco$f;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1074
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "FragmentManager misc state:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mHost="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lco;->l:Lcm;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1076
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mContainer="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lco;->m:Lck;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1077
    iget-object v6, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    if-eqz v6, :cond_8

    .line 1078
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mParent="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1080
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mCurState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lco;->k:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 1081
    const-string/jumbo v6, " mStateSaved="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lco;->r:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1082
    const-string/jumbo v6, " mDestroyed="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lco;->s:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 1083
    iget-boolean v6, p0, Lco;->q:Z

    if-eqz v6, :cond_9

    .line 1084
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1085
    iget-boolean v6, p0, Lco;->q:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 1087
    :cond_9
    iget-object v6, p0, Lco;->t:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 1088
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mNoTransactionsBecause="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1089
    iget-object v6, p0, Lco;->t:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1091
    :cond_a
    return-void
.end method

.method a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcf;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2292
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcf;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2330
    :cond_0
    :goto_0
    return-void

    .line 2296
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 2297
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Internal error with the back stack records"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2301
    :cond_3
    invoke-direct {p0, p1, p2}, Lco;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2303
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2304
    .local v1, "numRecords":I
    const/4 v4, 0x0

    .line 2305
    .local v4, "startIndex":I
    const/4 v2, 0x0

    .local v2, "recordNum":I
    :goto_1
    if-ge v2, v1, :cond_7

    .line 2306
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcf;

    iget-boolean v0, v5, Lcf;->u:Z

    .line 2307
    .local v0, "canReorder":Z
    if-nez v0, :cond_6

    .line 2309
    if-eq v4, v2, :cond_4

    .line 2310
    invoke-direct {p0, p1, p2, v4, v2}, Lco;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2314
    :cond_4
    add-int/lit8 v3, v2, 0x1

    .line 2315
    .local v3, "reorderingEnd":I
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2316
    :goto_2
    if-ge v3, v1, :cond_5

    .line 2317
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2318
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcf;

    iget-boolean v5, v5, Lcf;->u:Z

    if-nez v5, :cond_5

    .line 2319
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2322
    :cond_5
    invoke-direct {p0, p1, p2, v2, v3}, Lco;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2323
    move v4, v3

    .line 2324
    add-int/lit8 v2, v3, -0x1

    .line 2305
    .end local v3    # "reorderingEnd":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2327
    .end local v0    # "canReorder":Z
    :cond_7
    if-eq v4, v1, :cond_0

    .line 2328
    invoke-direct {p0, p1, p2, v4, v1}, Lco;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method a(Z)V
    .locals 3
    .param p1, "allowStateLoss"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2166
    iget-boolean v0, p0, Lco;->c:Z

    if-eqz v0, :cond_0

    .line 2167
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "FragmentManager is already executing transactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2170
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lco;->l:Lcm;

    .line 17202
    iget-object v1, v1, Lcm;->d:Landroid/os/Handler;

    .line 2170
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called from main thread of fragment host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2174
    :cond_1
    if-nez p1, :cond_2

    .line 2175
    invoke-direct {p0}, Lco;->w()V

    .line 2178
    :cond_2
    iget-object v0, p0, Lco;->v:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 2179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco;->v:Ljava/util/ArrayList;

    .line 2180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco;->w:Ljava/util/ArrayList;

    .line 2182
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco;->c:Z

    .line 2184
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lco;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2186
    iput-boolean v2, p0, Lco;->c:Z

    .line 2187
    return-void

    .line 2186
    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lco;->c:Z

    throw v0
.end method

.method public final a(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3291
    const/4 v2, 0x0

    .line 3292
    .local v2, "show":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3293
    iget-object v3, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 3294
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 3295
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3296
    const/4 v2, 0x1

    .line 3292
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3300
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    return v2
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3261
    const/4 v3, 0x0

    .line 3262
    .local v3, "show":Z
    const/4 v2, 0x0

    .line 3263
    .local v2, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 3264
    iget-object v4, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 3265
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    .line 3266
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3267
    const/4 v3, 0x1

    .line 3268
    if-nez v2, :cond_0

    .line 3269
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3271
    .restart local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3263
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3276
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_2
    iget-object v4, p0, Lco;->h:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 3277
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lco;->h:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 3278
    iget-object v4, p0, Lco;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 3279
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3280
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    .line 3277
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3285
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_5
    iput-object v2, p0, Lco;->h:Ljava/util/ArrayList;

    .line 3287
    return v3
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3304
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3305
    iget-object v2, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 3306
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 3307
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3308
    const/4 v2, 0x1

    .line 3312
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :goto_1
    return v2

    .line 3304
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3312
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method final a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 7
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcf;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcf;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2712
    iget-object v6, p0, Lco;->g:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 2763
    :cond_0
    :goto_0
    return v4

    .line 2715
    :cond_1
    if-nez p3, :cond_3

    if-gez p4, :cond_3

    and-int/lit8 v6, p5, 0x1

    if-nez v6, :cond_3

    .line 2716
    iget-object v6, p0, Lco;->g:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 2717
    .local v3, "last":I
    if-ltz v3, :cond_0

    .line 2720
    iget-object v4, p0, Lco;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2721
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v3    # "last":I
    :cond_2
    move v4, v5

    .line 2763
    goto :goto_0

    .line 2723
    :cond_3
    const/4 v2, -0x1

    .line 2724
    .local v2, "index":I
    if-nez p3, :cond_4

    if-ltz p4, :cond_a

    .line 2727
    :cond_4
    iget-object v6, p0, Lco;->g:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 2728
    :goto_1
    if-ltz v2, :cond_7

    .line 2729
    iget-object v6, p0, Lco;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcf;

    .line 2730
    .local v0, "bss":Lcf;
    if-eqz p3, :cond_5

    .line 26013
    iget-object v6, v0, Lcf;->l:Ljava/lang/String;

    .line 2730
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 2733
    :cond_5
    if-ltz p4, :cond_6

    iget v6, v0, Lcf;->n:I

    if-eq p4, v6, :cond_7

    .line 2736
    :cond_6
    add-int/lit8 v2, v2, -0x1

    .line 2737
    goto :goto_1

    .line 2738
    .end local v0    # "bss":Lcf;
    :cond_7
    if-ltz v2, :cond_0

    .line 2741
    and-int/lit8 v6, p5, 0x1

    if-eqz v6, :cond_a

    .line 2742
    add-int/lit8 v2, v2, -0x1

    .line 2744
    :goto_2
    if-ltz v2, :cond_a

    .line 2745
    iget-object v6, p0, Lco;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcf;

    .line 2746
    .restart local v0    # "bss":Lcf;
    if-eqz p3, :cond_8

    .line 27013
    iget-object v6, v0, Lcf;->l:Ljava/lang/String;

    .line 2746
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    :cond_8
    if-ltz p4, :cond_a

    iget v6, v0, Lcf;->n:I

    if-ne p4, v6, :cond_a

    .line 2748
    :cond_9
    add-int/lit8 v2, v2, -0x1

    .line 2749
    goto :goto_2

    .line 2755
    .end local v0    # "bss":Lcf;
    :cond_a
    iget-object v6, p0, Lco;->g:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v2, v6, :cond_0

    .line 2758
    iget-object v4, p0, Lco;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_3
    if-le v1, v2, :cond_2

    .line 2759
    iget-object v4, p0, Lco;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2760
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2758
    add-int/lit8 v1, v1, -0x1

    goto :goto_3
.end method

.method public final b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "who"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2031
    iget-object v2, p0, Lco;->f:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 2032
    iget-object v2, p0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2033
    iget-object v2, p0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2034
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2039
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :goto_1
    return-object v0

    .line 2032
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2039
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(I)V
    .locals 2
    .param p1, "nextState"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 3216
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lco;->c:Z

    .line 3217
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lco;->a(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3219
    iput-boolean v1, p0, Lco;->c:Z

    .line 3221
    invoke-virtual {p0}, Lco;->k()Z

    .line 3222
    return-void

    .line 3219
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lco;->c:Z

    throw v0
.end method

.method public final b(Landroid/support/v4/app/Fragment;)V
    .locals 6
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1221
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_0

    .line 1222
    iget-boolean v0, p0, Lco;->c:Z

    if-eqz v0, :cond_1

    .line 1224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco;->u:Z

    .line 1230
    :cond_0
    :goto_0
    return-void

    .line 1227
    :cond_1
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 1228
    iget v2, p0, Lco;->k:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lco;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_0
.end method

.method public final b(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3328
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3329
    iget-object v2, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 3330
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 3331
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3328
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3334
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    return-void
.end method

.method public final b(Z)V
    .locals 3
    .param p1, "isInMultiWindowMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3225
    iget-object v2, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3226
    iget-object v2, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 3227
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 3228
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performMultiWindowModeChanged(Z)V

    .line 3225
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3231
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 781
    invoke-virtual {p0}, Lco;->k()Z

    move-result v0

    .line 782
    .local v0, "updates":Z
    invoke-direct {p0}, Lco;->y()V

    .line 783
    return v0
.end method

.method public final b(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3316
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3317
    iget-object v2, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 3318
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 3319
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3320
    const/4 v2, 0x1

    .line 3324
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :goto_1
    return v2

    .line 3316
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3324
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 788
    new-instance v0, Lco$g;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lco$g;-><init>(Lco;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, v3}, Lco;->a(Lco$f;Z)V

    .line 789
    return-void
.end method

.method final c(Landroid/support/v4/app/Fragment;)V
    .locals 14
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v5, 0x0

    .line 1729
    if-nez p1, :cond_1

    .line 1780
    :cond_0
    :goto_0
    return-void

    .line 1732
    :cond_1
    iget v2, p0, Lco;->k:I

    .line 1733
    .local v2, "nextState":I
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    if-eqz v0, :cond_2

    .line 1734
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1735
    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1740
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransition()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransitionStyle()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lco;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1742
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 14541
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 14542
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 14544
    if-eqz v3, :cond_3

    if-nez v0, :cond_a

    .line 1745
    .local v8, "underFragment":Landroid/support/v4/app/Fragment;
    :cond_3
    :goto_2
    if-eqz v8, :cond_4

    .line 1746
    iget-object v10, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1748
    .local v10, "underView":Landroid/view/View;
    iget-object v7, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1749
    .local v7, "container":Landroid/view/ViewGroup;
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 1750
    .local v9, "underIndex":I
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    .line 1751
    .local v11, "viewIndex":I
    if-ge v11, v9, :cond_4

    .line 1752
    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1753
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1756
    .end local v7    # "container":Landroid/view/ViewGroup;
    .end local v9    # "underIndex":I
    .end local v10    # "underView":Landroid/view/View;
    .end local v11    # "viewIndex":I
    :cond_4
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 1758
    iget v0, p1, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    cmpl-float v0, v0, v13

    if-lez v0, :cond_5

    .line 1759
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1761
    :cond_5
    iput v13, p1, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    .line 1762
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    .line 1764
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransition()I

    move-result v0

    .line 1765
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransitionStyle()I

    move-result v1

    .line 1764
    invoke-direct {p0, p1, v0, v12, v1}, Lco;->a(Landroid/support/v4/app/Fragment;IZI)Lco$c;

    move-result-object v6

    .line 1766
    .local v6, "anim":Lco$c;
    if-eqz v6, :cond_6

    .line 1767
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0, v6}, Lco;->a(Landroid/view/View;Lco$c;)V

    .line 1768
    iget-object v0, v6, Lco$c;->a:Landroid/view/animation/Animation;

    if-eqz v0, :cond_c

    .line 1769
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, v6, Lco$c;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1777
    .end local v6    # "anim":Lco$c;
    .end local v8    # "underFragment":Landroid/support/v4/app/Fragment;
    :cond_6
    :goto_3
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_0

    .line 14670
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 14671
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransition()I

    move-result v1

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_d

    move v0, v12

    .line 14672
    :goto_4
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransitionStyle()I

    move-result v3

    .line 14671
    invoke-direct {p0, p1, v1, v0, v3}, Lco;->a(Landroid/support/v4/app/Fragment;IZI)Lco$c;

    move-result-object v0

    .line 14673
    if-eqz v0, :cond_10

    iget-object v1, v0, Lco$c;->b:Landroid/animation/Animator;

    if-eqz v1, :cond_10

    .line 14674
    iget-object v1, v0, Lco$c;->b:Landroid/animation/Animator;

    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 14675
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v1, :cond_f

    .line 14676
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHideReplaced()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 14677
    invoke-virtual {p1, v5}, Landroid/support/v4/app/Fragment;->setHideReplaced(Z)V

    .line 14698
    :goto_5
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1, v0}, Lco;->a(Landroid/view/View;Lco$c;)V

    .line 14699
    iget-object v0, v0, Lco$c;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 14715
    :cond_7
    :goto_6
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_8

    .line 14716
    iput-boolean v12, p0, Lco;->q:Z

    .line 14718
    :cond_8
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    .line 14719
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    goto/16 :goto_0

    .line 1737
    :cond_9
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto/16 :goto_1

    .line 14548
    :cond_a
    iget-object v0, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 14549
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_7
    if-ltz v1, :cond_3

    .line 14550
    iget-object v0, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 14551
    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-ne v4, v3, :cond_b

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_b

    move-object v8, v0

    .line 14553
    goto/16 :goto_2

    .line 14549
    :cond_b
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_7

    .line 1771
    .restart local v6    # "anim":Lco$c;
    .restart local v8    # "underFragment":Landroid/support/v4/app/Fragment;
    :cond_c
    iget-object v0, v6, Lco$c;->b:Landroid/animation/Animator;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1772
    iget-object v0, v6, Lco$c;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto/16 :goto_3

    .end local v6    # "anim":Lco$c;
    .end local v8    # "underFragment":Landroid/support/v4/app/Fragment;
    :cond_d
    move v0, v5

    .line 14671
    goto :goto_4

    .line 14679
    :cond_e
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 14680
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 14681
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 14684
    iget-object v4, v0, Lco$c;->b:Landroid/animation/Animator;

    new-instance v13, Lco$4;

    invoke-direct {v13, p0, v1, v3, p1}, Lco$4;-><init>(Lco;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v4, v13}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_5

    .line 14696
    :cond_f
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 14701
    :cond_10
    if-eqz v0, :cond_11

    .line 14702
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1, v0}, Lco;->a(Landroid/view/View;Lco$c;)V

    .line 14703
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, v0, Lco$c;->a:Landroid/view/animation/Animation;

    invoke-virtual {v1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 14704
    iget-object v0, v0, Lco$c;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 14706
    :cond_11
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHideReplaced()Z

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, 0x8

    .line 14709
    :goto_8
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14710
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHideReplaced()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 14711
    invoke-virtual {p1, v5}, Landroid/support/v4/app/Fragment;->setHideReplaced(Z)V

    goto/16 :goto_6

    :cond_12
    move v0, v5

    .line 14706
    goto :goto_8
.end method

.method public final c(Z)V
    .locals 3
    .param p1, "isInPictureInPictureMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3234
    iget-object v2, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3235
    iget-object v2, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 3236
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 3237
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performPictureInPictureModeChanged(Z)V

    .line 3234
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3240
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    return-void
.end method

.method final d(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1851
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 1861
    :goto_0
    return-void

    .line 1855
    :cond_0
    iget v0, p0, Lco;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lco;->d:I

    iget-object v1, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    .line 1856
    iget-object v0, p0, Lco;->f:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 1857
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lco;->f:Landroid/util/SparseArray;

    .line 1859
    :cond_1
    iget-object v0, p0, Lco;->f:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 793
    invoke-direct {p0}, Lco;->w()V

    .line 794
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lco;->a(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lco;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(Landroid/support/v4/app/Fragment;)V
    .locals 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1903
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 1904
    .local v0, "inactive":Z
    :goto_0
    iget-boolean v3, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_2

    .line 1905
    :cond_0
    iget-object v3, p0, Lco;->e:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1906
    :try_start_0
    iget-object v4, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1907
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1908
    iget-boolean v3, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v3, :cond_1

    .line 1909
    iput-boolean v1, p0, Lco;->q:Z

    .line 1911
    :cond_1
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1912
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1914
    :cond_2
    return-void

    .end local v0    # "inactive":Z
    :cond_3
    move v0, v2

    .line 1903
    goto :goto_0

    .line 1907
    .restart local v0    # "inactive":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 912
    iget-object v0, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 916
    :goto_0
    return-object v0

    .line 915
    :cond_0
    iget-object v1, p0, Lco;->e:Ljava/util/ArrayList;

    monitor-enter v1

    .line 916
    :try_start_0
    iget-object v0, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit v1

    goto :goto_0

    .line 917
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 965
    iget-boolean v0, p0, Lco;->s:Z

    return v0
.end method

.method public final h(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 1950
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_1

    .line 1951
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1952
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_1

    .line 1955
    iget-object v1, p0, Lco;->e:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1956
    :try_start_0
    iget-object v0, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1957
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1958
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    .line 1959
    iput-boolean v2, p0, Lco;->q:Z

    .line 1961
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1964
    :cond_1
    return-void

    .line 1957
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 2055
    iget-boolean v0, p0, Lco;->r:Z

    return v0
.end method

.method final i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1840
    iget-object v2, p0, Lco;->f:Landroid/util/SparseArray;

    if-nez v2, :cond_1

    .line 1848
    :cond_0
    return-void

    .line 1842
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1843
    iget-object v2, p0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1844
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    .line 1845
    invoke-virtual {p0, v0}, Lco;->b(Landroid/support/v4/app/Fragment;)V

    .line 1842
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final i(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 1968
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_1

    .line 1969
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1970
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v0, :cond_1

    .line 1971
    iget-object v0, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1972
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1975
    :cond_0
    iget-object v1, p0, Lco;->e:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1976
    :try_start_0
    iget-object v0, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1977
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1978
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1979
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_1

    .line 1980
    iput-boolean v2, p0, Lco;->q:Z

    .line 1984
    :cond_1
    return-void

    .line 1977
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method j()V
    .locals 1

    .prologue
    .line 2214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco;->c:Z

    .line 2215
    iget-object v0, p0, Lco;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2216
    iget-object v0, p0, Lco;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2217
    return-void
.end method

.method public final j(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3338
    if-eqz p1, :cond_1

    iget-object v0, p0, Lco;->f:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mHost:Lcm;

    if-eqz v0, :cond_1

    .line 3339
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Lcn;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 3340
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3343
    :cond_1
    iput-object p1, p0, Lco;->o:Landroid/support/v4/app/Fragment;

    .line 3344
    return-void
.end method

.method public final k()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 2223
    invoke-virtual {p0, v3}, Lco;->a(Z)V

    .line 2225
    const/4 v0, 0x0

    .line 2226
    .local v0, "didSomething":Z
    :goto_0
    iget-object v1, p0, Lco;->v:Ljava/util/ArrayList;

    iget-object v2, p0, Lco;->w:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lco;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2227
    iput-boolean v3, p0, Lco;->c:Z

    .line 2229
    :try_start_0
    iget-object v1, p0, Lco;->v:Ljava/util/ArrayList;

    iget-object v2, p0, Lco;->w:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Lco;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2231
    invoke-virtual {p0}, Lco;->j()V

    .line 2233
    const/4 v0, 0x1

    goto :goto_0

    .line 2231
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lco;->j()V

    throw v1

    .line 2236
    :cond_0
    invoke-virtual {p0}, Lco;->l()V

    .line 2237
    invoke-virtual {p0}, Lco;->n()V

    .line 2239
    return v0
.end method

.method final l()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2679
    iget-boolean v3, p0, Lco;->u:Z

    if-eqz v3, :cond_2

    .line 2680
    const/4 v2, 0x0

    .line 2681
    .local v2, "loadersRunning":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2682
    iget-object v3, p0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2683
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lcw;

    if-eqz v3, :cond_0

    .line 2684
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mLoaderManager:Lcw;

    invoke-virtual {v3}, Lcw;->a()Z

    move-result v3

    or-int/2addr v2, v3

    .line 2681
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2687
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    if-nez v2, :cond_2

    .line 2688
    const/4 v3, 0x0

    iput-boolean v3, p0, Lco;->u:Z

    .line 2689
    invoke-virtual {p0}, Lco;->i()V

    .line 2692
    .end local v1    # "i":I
    .end local v2    # "loadersRunning":Z
    :cond_2
    return-void
.end method

.method public final m()Landroid/os/Parcelable;
    .locals 19

    .prologue
    .line 2893
    invoke-direct/range {p0 .. p0}, Lco;->y()V

    .line 27626
    move-object/from16 v0, p0

    iget-object v2, v0, Lco;->f:Landroid/util/SparseArray;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move/from16 v17, v2

    .line 27627
    :goto_0
    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 27628
    move-object/from16 v0, p0

    iget-object v2, v0, Lco;->f:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 27629
    if-eqz v3, :cond_1

    .line 27630
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 27632
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v4

    .line 27633
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v2

    .line 27634
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 27635
    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    .line 27636
    if-eqz v5, :cond_0

    .line 27637
    invoke-virtual {v5}, Landroid/view/animation/Animation;->cancel()V

    .line 27640
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 27642
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lco;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 27627
    :cond_1
    :goto_2
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto :goto_1

    .line 27626
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    move/from16 v17, v2

    goto :goto_0

    .line 27643
    :cond_3
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 27644
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    goto :goto_2

    .line 2895
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lco;->k()Z

    .line 2897
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lco;->r:Z

    .line 2898
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lco;->B:Lcp;

    .line 2900
    move-object/from16 v0, p0

    iget-object v2, v0, Lco;->f:Landroid/util/SparseArray;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_6

    .line 2901
    :cond_5
    const/4 v13, 0x0

    .line 3000
    :goto_3
    return-object v13

    .line 2905
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 2906
    .local v8, "N":I
    new-array v9, v8, [Landroid/support/v4/app/FragmentState;

    .line 2907
    .local v9, "active":[Landroid/support/v4/app/FragmentState;
    const/4 v15, 0x0

    .line 2908
    .local v15, "haveFragments":Z
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_4
    move/from16 v0, v16

    if-ge v0, v8, :cond_c

    .line 2909
    move-object/from16 v0, p0

    iget-object v2, v0, Lco;->f:Landroid/util/SparseArray;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/app/Fragment;

    .line 2910
    .local v12, "f":Landroid/support/v4/app/Fragment;
    if-eqz v12, :cond_a

    .line 2911
    iget v2, v12, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v2, :cond_7

    .line 2912
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failure saving state: active "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has cleared index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v12, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lco;->a(Ljava/lang/RuntimeException;)V

    .line 2917
    :cond_7
    const/4 v15, 0x1

    .line 2919
    new-instance v14, Landroid/support/v4/app/FragmentState;

    invoke-direct {v14, v12}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 2920
    .local v14, "fs":Landroid/support/v4/app/FragmentState;
    aput-object v14, v9, v16

    .line 2922
    iget v2, v12, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v2, :cond_b

    iget-object v2, v14, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v2, :cond_b

    .line 2923
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lco;->m(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v14, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2925
    iget-object v2, v12, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_a

    .line 2926
    iget-object v2, v12, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v2, :cond_8

    .line 2927
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failure saving state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has target not in fragment manager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lco;->a(Ljava/lang/RuntimeException;)V

    .line 2931
    :cond_8
    iget-object v2, v14, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v2, :cond_9

    .line 2932
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v14, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2934
    :cond_9
    iget-object v2, v14, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v3, "android:target_state"

    iget-object v4, v12, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lco;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 2936
    iget v2, v12, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    if-eqz v2, :cond_a

    .line 2937
    iget-object v2, v14, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v3, "android:target_req_state"

    iget v4, v12, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2908
    .end local v14    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_a
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 2944
    .restart local v14    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_b
    iget-object v2, v12, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v2, v14, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_5

    .line 2952
    .end local v12    # "f":Landroid/support/v4/app/Fragment;
    .end local v14    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_c
    if-nez v15, :cond_d

    .line 2954
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 2957
    :cond_d
    const/4 v10, 0x0

    .line 2958
    .local v10, "added":[I
    const/4 v11, 0x0

    .line 2961
    .local v11, "backStack":[Landroid/support/v4/app/BackStackState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2962
    if-lez v8, :cond_f

    .line 2963
    new-array v10, v8, [I

    .line 2964
    const/16 v16, 0x0

    :goto_6
    move/from16 v0, v16

    if-ge v0, v8, :cond_f

    .line 2965
    move-object/from16 v0, p0

    iget-object v2, v0, Lco;->e:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->mIndex:I

    aput v2, v10, v16

    .line 2966
    aget v2, v10, v16

    if-gez v2, :cond_e

    .line 2967
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failure saving state: active "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lco;->e:Ljava/util/ArrayList;

    .line 2968
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has cleared index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v10, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2967
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lco;->a(Ljava/lang/RuntimeException;)V

    .line 2964
    :cond_e
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 2979
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lco;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_10

    .line 2980
    move-object/from16 v0, p0

    iget-object v2, v0, Lco;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2981
    if-lez v8, :cond_10

    .line 2982
    new-array v11, v8, [Landroid/support/v4/app/BackStackState;

    .line 2983
    const/16 v16, 0x0

    :goto_7
    move/from16 v0, v16

    if-ge v0, v8, :cond_10

    .line 2984
    new-instance v3, Landroid/support/v4/app/BackStackState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lco;->g:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcf;

    invoke-direct {v3, v2}, Landroid/support/v4/app/BackStackState;-><init>(Lcf;)V

    aput-object v3, v11, v16

    .line 2983
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 2991
    :cond_10
    new-instance v13, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v13}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 2992
    .local v13, "fms":Landroid/support/v4/app/FragmentManagerState;
    iput-object v9, v13, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    .line 2993
    iput-object v10, v13, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    .line 2994
    iput-object v11, v13, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    .line 2995
    move-object/from16 v0, p0

    iget-object v2, v0, Lco;->o:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_11

    .line 2996
    move-object/from16 v0, p0

    iget-object v2, v0, Lco;->o:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->mIndex:I

    iput v2, v13, Landroid/support/v4/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    .line 2998
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lco;->d:I

    iput v2, v13, Landroid/support/v4/app/FragmentManagerState;->mNextFragmentIndex:I

    .line 2999
    invoke-direct/range {p0 .. p0}, Lco;->z()V

    goto/16 :goto_3
.end method

.method n()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3135
    iget-object v1, p0, Lco;->f:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    .line 3136
    iget-object v1, p0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3137
    iget-object v1, p0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3138
    iget-object v1, p0, Lco;->f:Landroid/util/SparseArray;

    iget-object v2, p0, Lco;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 3136
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3142
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public final o()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3153
    const/4 v3, 0x0

    iput-object v3, p0, Lco;->B:Lcp;

    .line 3154
    const/4 v3, 0x0

    iput-boolean v3, p0, Lco;->r:Z

    .line 3155
    iget-object v3, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3156
    .local v0, "addedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3157
    iget-object v3, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3158
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 3159
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->noteStateNotSaved()V

    .line 3156
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3162
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x1

    .line 3624
    const-string/jumbo v4, "fragment"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3715
    :cond_0
    :goto_0
    return-object v0

    .line 3628
    :cond_1
    const-string/jumbo v4, "class"

    invoke-interface {p4, v0, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3629
    .local v8, "fname":Ljava/lang/String;
    sget-object v4, Lco$e;->a:[I

    invoke-virtual {p3, p4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 3630
    .local v6, "a":Landroid/content/res/TypedArray;
    if-nez v8, :cond_2

    .line 3631
    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3633
    :cond_2
    invoke-virtual {v6, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 3634
    .local v9, "id":I
    const/4 v4, 0x2

    invoke-virtual {v6, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3635
    .local v10, "tag":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 3637
    iget-object v4, p0, Lco;->l:Lcm;

    .line 29198
    iget-object v4, v4, Lcm;->c:Landroid/content/Context;

    .line 3637
    invoke-static {v4, v8}, Landroid/support/v4/app/Fragment;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3643
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 3644
    .local v7, "containerId":I
    :goto_1
    if-ne v7, v5, :cond_4

    if-ne v9, v5, :cond_4

    if-nez v10, :cond_4

    .line 3645
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v7    # "containerId":I
    :cond_3
    move v7, v3

    .line 3643
    goto :goto_1

    .line 3652
    .restart local v7    # "containerId":I
    :cond_4
    if-eq v9, v5, :cond_8

    invoke-virtual {p0, v9}, Lco;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 3653
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    :goto_2
    if-nez v1, :cond_5

    if-eqz v10, :cond_5

    .line 3654
    invoke-virtual {p0, v10}, Lco;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 3656
    :cond_5
    if-nez v1, :cond_6

    if-eq v7, v5, :cond_6

    .line 3657
    invoke-virtual {p0, v7}, Lco;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 3663
    :cond_6
    if-nez v1, :cond_a

    .line 3664
    iget-object v4, p0, Lco;->m:Lck;

    invoke-virtual {v4, p3, v8, v0}, Lck;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 3665
    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    .line 3666
    if-eqz v9, :cond_9

    move v0, v9

    :goto_3
    iput v0, v1, Landroid/support/v4/app/Fragment;->mFragmentId:I

    .line 3667
    iput v7, v1, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 3668
    iput-object v10, v1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 3669
    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 3670
    iput-object p0, v1, Landroid/support/v4/app/Fragment;->mFragmentManager:Lco;

    .line 3671
    iget-object v0, p0, Lco;->l:Lcm;

    iput-object v0, v1, Landroid/support/v4/app/Fragment;->mHost:Lcm;

    .line 3672
    iget-object v0, p0, Lco;->l:Lcm;

    .line 30198
    iget-object v0, v0, Lcm;->c:Landroid/content/Context;

    .line 3672
    iget-object v4, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p4, v4}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3673
    invoke-virtual {p0, v1, v2}, Lco;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 3699
    :cond_7
    :goto_4
    iget v0, p0, Lco;->k:I

    if-gtz v0, :cond_c

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_c

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 3700
    invoke-virtual/range {v0 .. v5}, Lco;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 3705
    :goto_5
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_d

    .line 3706
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " did not create a view."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_8
    move-object v1, v0

    .line 3652
    goto :goto_2

    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_9
    move v0, v7

    .line 3666
    goto :goto_3

    .line 3675
    :cond_a
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-eqz v0, :cond_b

    .line 3678
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": Duplicate id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3679
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", or parent id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3680
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with another fragment for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3685
    :cond_b
    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 3686
    iget-object v0, p0, Lco;->l:Lcm;

    iput-object v0, v1, Landroid/support/v4/app/Fragment;->mHost:Lcm;

    .line 3690
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_7

    .line 3691
    iget-object v0, p0, Lco;->l:Lcm;

    .line 31198
    iget-object v0, v0, Lcm;->c:Landroid/content/Context;

    .line 3691
    iget-object v4, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p4, v4}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 3702
    :cond_c
    invoke-direct {p0, v1}, Lco;->k(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_5

    .line 3709
    :cond_d
    if-eqz v9, :cond_e

    .line 3710
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    .line 3712
    :cond_e
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 3713
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3715
    :cond_f
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 3720
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lco;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 3165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco;->r:Z

    .line 3166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lco;->b(I)V

    .line 3167
    return-void
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 3170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco;->r:Z

    .line 3171
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lco;->b(I)V

    .line 3172
    return-void
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 3175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco;->r:Z

    .line 3176
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lco;->b(I)V

    .line 3177
    return-void
.end method

.method public final s()V
    .locals 1

    .prologue
    .line 3180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco;->r:Z

    .line 3181
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lco;->b(I)V

    .line 3182
    return-void
.end method

.method public final t()V
    .locals 1

    .prologue
    .line 3192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco;->r:Z

    .line 3194
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lco;->b(I)V

    .line 3195
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 971
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    iget-object v1, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 975
    iget-object v1, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    invoke-static {v1, v0}, Lfn;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 979
    :goto_0
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 977
    :cond_0
    iget-object v1, p0, Lco;->l:Lcm;

    invoke-static {v1, v0}, Lfn;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method public final u()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 3206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco;->s:Z

    .line 3207
    invoke-virtual {p0}, Lco;->k()Z

    .line 3208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco;->b(I)V

    .line 3209
    iput-object v1, p0, Lco;->l:Lcm;

    .line 3210
    iput-object v1, p0, Lco;->m:Lck;

    .line 3211
    iput-object v1, p0, Lco;->n:Landroid/support/v4/app/Fragment;

    .line 3212
    return-void
.end method

.method public final v()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3252
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3253
    iget-object v2, p0, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 3254
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 3255
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->performLowMemory()V

    .line 3252
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3258
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    return-void
.end method
