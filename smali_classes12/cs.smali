.class final Lcs;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcs$a;
    }
.end annotation


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcs;->a:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1145
    return-void
.end method

.method static synthetic a(Lfk;Lcs$a;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lfk;
    .param p1, "x1"    # Lcs$a;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Z

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3}, Lcs;->b(Lfk;Lcs$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcs$a;Landroid/util/SparseArray;I)Lcs$a;
    .locals 0
    .param p0, "containerTransition"    # Lcs$a;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcs$a;",
            "Landroid/util/SparseArray",
            "<",
            "Lcs$a;",
            ">;I)",
            "Lcs$a;"
        }
    .end annotation

    .prologue
    .line 1134
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcs$a;>;"
    if-nez p0, :cond_0

    .line 1135
    new-instance p0, Lcs$a;

    .end local p0    # "containerTransition":Lcs$a;
    invoke-direct {p0}, Lcs$a;-><init>()V

    .line 1136
    .restart local p0    # "containerTransition":Lcs$a;
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1138
    :cond_0
    return-object p0
.end method

.method private static a(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lfk;
    .locals 12
    .param p0, "containerId"    # I
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcf;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcf;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    new-instance v2, Lfk;

    invoke-direct {v2}, Lfk;-><init>()V

    .line 145
    .local v2, "nameOverrides":Lfk;, "Lfk<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v6, p4, -0x1

    .local v6, "recordNum":I
    :goto_0
    if-lt v6, p3, :cond_3

    .line 146
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcf;

    .line 147
    .local v5, "record":Lcf;
    invoke-virtual {v5, p0}, Lcf;->c(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 150
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 151
    .local v1, "isPop":Z
    iget-object v11, v5, Lcf;->s:Ljava/util/ArrayList;

    if-eqz v11, :cond_2

    .line 152
    iget-object v11, v5, Lcf;->s:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 155
    .local v3, "numSharedElements":I
    if-eqz v1, :cond_0

    .line 156
    iget-object v10, v5, Lcf;->s:Ljava/util/ArrayList;

    .line 157
    .local v10, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, v5, Lcf;->t:Ljava/util/ArrayList;

    .line 162
    .local v8, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v3, :cond_2

    .line 163
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 164
    .local v7, "sourceName":Ljava/lang/String;
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 165
    .local v9, "targetName":Ljava/lang/String;
    invoke-virtual {v2, v9}, Lfk;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 166
    .local v4, "previousTarget":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 167
    invoke-virtual {v2, v7, v4}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 159
    .end local v0    # "i":I
    .end local v4    # "previousTarget":Ljava/lang/String;
    .end local v7    # "sourceName":Ljava/lang/String;
    .end local v8    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "targetName":Ljava/lang/String;
    .end local v10    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v8, v5, Lcf;->s:Ljava/util/ArrayList;

    .line 160
    .restart local v8    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, v5, Lcf;->t:Ljava/util/ArrayList;

    .restart local v10    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 169
    .restart local v0    # "i":I
    .restart local v4    # "previousTarget":Ljava/lang/String;
    .restart local v7    # "sourceName":Ljava/lang/String;
    .restart local v9    # "targetName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v7, v9}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 145
    .end local v0    # "i":I
    .end local v1    # "isPop":Z
    .end local v3    # "numSharedElements":I
    .end local v4    # "previousTarget":Ljava/lang/String;
    .end local v7    # "sourceName":Ljava/lang/String;
    .end local v8    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "targetName":Ljava/lang/String;
    .end local v10    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 174
    .end local v5    # "record":Lcf;
    :cond_3
    return-object v2
.end method

.method static synthetic a(Lfk;Ljava/lang/Object;Lcs$a;)Lfk;
    .locals 1
    .param p0, "x0"    # Lfk;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Lcs$a;

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lcs;->c(Lfk;Ljava/lang/Object;Lcs$a;)Lfk;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 3
    .param p0, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "isPop"    # Z
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 411
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v1, v2

    .line 7051
    :goto_0
    return-object v1

    .line 414
    :cond_1
    if-eqz p2, :cond_2

    .line 415
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v1

    .line 414
    :goto_1
    invoke-static {v1}, Lct;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7050
    .local v0, "transition":Ljava/lang/Object;
    if-nez v0, :cond_3

    move-object v1, v2

    .line 7051
    goto :goto_0

    .line 416
    .end local v0    # "transition":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 7053
    .restart local v0    # "transition":Ljava/lang/Object;
    :cond_3
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 7054
    check-cast v0, Landroid/transition/Transition;

    .end local v0    # "transition":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto :goto_0
.end method

.method private static a(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "isPop"    # Z
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 425
    if-nez p0, :cond_0

    .line 426
    const/4 v0, 0x0

    .line 428
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 429
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    .line 428
    :goto_1
    invoke-static {v0}, Lct;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 430
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 4
    .param p0, "enterTransition"    # Ljava/lang/Object;
    .param p1, "exitTransition"    # Ljava/lang/Object;
    .param p2, "sharedElementTransition"    # Ljava/lang/Object;
    .param p3, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p4, "isPop"    # Z
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 958
    const/4 v0, 0x1

    .line 959
    .local v0, "overlap":Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 960
    if-eqz p4, :cond_4

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v0

    .line 969
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 8200
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 8201
    if-eqz p1, :cond_1

    .line 8202
    check-cast p1, Landroid/transition/Transition;

    .end local p1    # "exitTransition":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 8204
    :cond_1
    if-eqz p0, :cond_2

    .line 8205
    check-cast p0, Landroid/transition/Transition;

    .end local p0    # "enterTransition":Ljava/lang/Object;
    invoke-virtual {v1, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 8207
    :cond_2
    if-eqz p2, :cond_3

    .line 8208
    check-cast p2, Landroid/transition/Transition;

    .end local p2    # "sharedElementTransition":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 979
    .local v1, "transition":Ljava/lang/Object;
    :cond_3
    :goto_1
    return-object v1

    .line 961
    .end local v1    # "transition":Ljava/lang/Object;
    .restart local p0    # "enterTransition":Ljava/lang/Object;
    .restart local p1    # "exitTransition":Ljava/lang/Object;
    .restart local p2    # "sharedElementTransition":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v0

    goto :goto_0

    .line 8262
    :cond_5
    const/4 v2, 0x0

    .line 8263
    check-cast p1, Landroid/transition/Transition;

    .line 8264
    .end local p1    # "exitTransition":Ljava/lang/Object;
    check-cast p0, Landroid/transition/Transition;

    .line 8265
    .end local p0    # "enterTransition":Ljava/lang/Object;
    check-cast p2, Landroid/transition/Transition;

    .line 8266
    .end local p2    # "sharedElementTransition":Ljava/lang/Object;
    if-eqz p1, :cond_8

    if-eqz p0, :cond_8

    .line 8267
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 8268
    invoke-virtual {v2, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v2

    .line 8269
    invoke-virtual {v2, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v2

    const/4 v3, 0x1

    .line 8270
    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object v2

    .line 8276
    :cond_6
    :goto_2
    if-eqz p2, :cond_a

    .line 8277
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 8278
    if-eqz v2, :cond_7

    .line 8279
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 8281
    :cond_7
    invoke-virtual {v1, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto :goto_1

    .line 8271
    :cond_8
    if-eqz p1, :cond_9

    move-object v2, p1

    .line 8272
    goto :goto_2

    .line 8273
    :cond_9
    if-eqz p0, :cond_6

    move-object v2, p0

    .line 8274
    goto :goto_2

    :cond_a
    move-object v1, v2

    .line 8284
    goto :goto_1
.end method

.method private static a(Lfk;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 809
    .local p0, "map":Lfk;, "Lfk<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lfk;->size()I

    move-result v1

    .line 810
    .local v1, "numElements":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 811
    invoke-virtual {p0, v0}, Lfk;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 812
    invoke-virtual {p0, v0}, Lfk;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 815
    :goto_1
    return-object v2

    .line 810
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 815
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static synthetic a(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Landroid/support/v4/app/Fragment;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3}, Lcs;->b(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLfk;Z)V
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/Fragment;
    .param p1, "x1"    # Landroid/support/v4/app/Fragment;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lfk;
    .param p4, "x4"    # Z

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcs;->b(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLfk;Z)V

    return-void
.end method

.method private static a(Lcf;Landroid/util/SparseArray;Z)V
    .locals 4
    .param p0, "transaction"    # Lcf;
    .param p2, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcf;",
            "Landroid/util/SparseArray",
            "<",
            "Lcs$a;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 993
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcs$a;>;"
    iget-object v3, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 994
    .local v0, "numOps":I
    const/4 v2, 0x0

    .local v2, "opNum":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 995
    iget-object v3, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcf$a;

    .line 996
    .local v1, "op":Lcf$a;
    const/4 v3, 0x0

    invoke-static {p0, v1, p1, v3, p2}, Lcs;->a(Lcf;Lcf$a;Landroid/util/SparseArray;ZZ)V

    .line 994
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 998
    .end local v1    # "op":Lcf$a;
    :cond_0
    return-void
.end method

.method private static a(Lcf;Lcf$a;Landroid/util/SparseArray;ZZ)V
    .locals 14
    .param p0, "transaction"    # Lcf;
    .param p1, "op"    # Lcf$a;
    .param p3, "isPop"    # Z
    .param p4, "isReorderedTransaction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcf;",
            "Lcf$a;",
            "Landroid/util/SparseArray",
            "<",
            "Lcs$a;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 1037
    .local p2, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcs$a;>;"
    iget-object v2, p1, Lcf$a;->b:Landroid/support/v4/app/Fragment;

    .line 1038
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v2, :cond_1

    .line 1124
    :cond_0
    :goto_0
    return-void

    .line 1041
    :cond_1
    iget v8, v2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 1042
    .local v8, "containerId":I
    if-eqz v8, :cond_0

    .line 1045
    if-eqz p3, :cond_7

    sget-object v3, Lcs;->a:[I

    iget v4, p1, Lcf$a;->a:I

    aget v7, v3, v4

    .line 1046
    .local v7, "command":I
    :goto_1
    const/4 v11, 0x0

    .line 1047
    .local v11, "setLastIn":Z
    const/4 v13, 0x0

    .line 1048
    .local v13, "wasRemoved":Z
    const/4 v10, 0x0

    .line 1049
    .local v10, "setFirstOut":Z
    const/4 v12, 0x0

    .line 1050
    .local v12, "wasAdded":Z
    packed-switch v7, :pswitch_data_0

    .line 1088
    :goto_2
    :pswitch_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcs$a;

    .line 1089
    .local v9, "containerTransition":Lcs$a;
    if-eqz v11, :cond_2

    .line 1091
    move-object/from16 v0, p2

    invoke-static {v9, v0, v8}, Lcs;->a(Lcs$a;Landroid/util/SparseArray;I)Lcs$a;

    move-result-object v9

    .line 1092
    iput-object v2, v9, Lcs$a;->a:Landroid/support/v4/app/Fragment;

    .line 1093
    move/from16 v0, p3

    iput-boolean v0, v9, Lcs$a;->b:Z

    .line 1094
    iput-object p0, v9, Lcs$a;->c:Lcf;

    .line 1096
    :cond_2
    if-nez p4, :cond_4

    if-eqz v12, :cond_4

    .line 1097
    if-eqz v9, :cond_3

    iget-object v3, v9, Lcs$a;->d:Landroid/support/v4/app/Fragment;

    if-ne v3, v2, :cond_3

    .line 1098
    const/4 v3, 0x0

    iput-object v3, v9, Lcs$a;->d:Landroid/support/v4/app/Fragment;

    .line 1105
    :cond_3
    iget-object v1, p0, Lcf;->b:Lco;

    .line 1106
    .local v1, "manager":Lco;
    iget v3, v2, Landroid/support/v4/app/Fragment;->mState:I

    if-gtz v3, :cond_4

    iget v3, v1, Lco;->k:I

    if-lez v3, :cond_4

    iget-boolean v3, p0, Lcf;->u:Z

    if-nez v3, :cond_4

    .line 1108
    invoke-virtual {v1, v2}, Lco;->d(Landroid/support/v4/app/Fragment;)V

    .line 1109
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lco;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1112
    .end local v1    # "manager":Lco;
    :cond_4
    if-eqz v10, :cond_6

    if-eqz v9, :cond_5

    iget-object v3, v9, Lcs$a;->d:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_6

    .line 1114
    :cond_5
    move-object/from16 v0, p2

    invoke-static {v9, v0, v8}, Lcs;->a(Lcs$a;Landroid/util/SparseArray;I)Lcs$a;

    move-result-object v9

    .line 1115
    iput-object v2, v9, Lcs$a;->d:Landroid/support/v4/app/Fragment;

    .line 1116
    move/from16 v0, p3

    iput-boolean v0, v9, Lcs$a;->e:Z

    .line 1117
    iput-object p0, v9, Lcs$a;->f:Lcf;

    .line 1120
    :cond_6
    if-nez p4, :cond_0

    if-eqz v13, :cond_0

    if-eqz v9, :cond_0

    iget-object v3, v9, Lcs$a;->a:Landroid/support/v4/app/Fragment;

    if-ne v3, v2, :cond_0

    .line 1122
    const/4 v3, 0x0

    iput-object v3, v9, Lcs$a;->a:Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 1045
    .end local v7    # "command":I
    .end local v9    # "containerTransition":Lcs$a;
    .end local v10    # "setFirstOut":Z
    .end local v11    # "setLastIn":Z
    .end local v12    # "wasAdded":Z
    .end local v13    # "wasRemoved":Z
    :cond_7
    iget v7, p1, Lcf$a;->a:I

    goto :goto_1

    .line 1052
    .restart local v7    # "command":I
    .restart local v10    # "setFirstOut":Z
    .restart local v11    # "setLastIn":Z
    .restart local v12    # "wasAdded":Z
    .restart local v13    # "wasRemoved":Z
    :pswitch_1
    if-eqz p4, :cond_9

    .line 1053
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v3, :cond_8

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v3, :cond_8

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_8

    const/4 v11, 0x1

    .line 1057
    :goto_3
    const/4 v12, 0x1

    .line 1058
    goto :goto_2

    .line 1053
    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    .line 1055
    :cond_9
    iget-boolean v11, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    goto :goto_3

    .line 1061
    :pswitch_2
    if-eqz p4, :cond_a

    .line 1062
    iget-boolean v11, v2, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    .line 1066
    :goto_4
    const/4 v12, 0x1

    .line 1067
    goto/16 :goto_2

    .line 1064
    :cond_a
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v3, :cond_b

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v3, :cond_b

    const/4 v11, 0x1

    goto :goto_4

    :cond_b
    const/4 v11, 0x0

    goto :goto_4

    .line 1069
    :pswitch_3
    if-eqz p4, :cond_d

    .line 1070
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v3, :cond_c

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_c

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_c

    const/4 v10, 0x1

    .line 1074
    :goto_5
    const/4 v13, 0x1

    .line 1075
    goto/16 :goto_2

    .line 1070
    :cond_c
    const/4 v10, 0x0

    goto :goto_5

    .line 1072
    :cond_d
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_e

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v3, :cond_e

    const/4 v10, 0x1

    :goto_6
    goto :goto_5

    :cond_e
    const/4 v10, 0x0

    goto :goto_6

    .line 1078
    :pswitch_4
    if-eqz p4, :cond_10

    .line 1079
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v3, :cond_f

    iget-object v3, v2, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_f

    iget-object v3, v2, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1080
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_f

    iget v3, v2, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_f

    const/4 v10, 0x1

    .line 1085
    :goto_7
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 1080
    :cond_f
    const/4 v10, 0x0

    goto :goto_7

    .line 1083
    :cond_10
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_11

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v3, :cond_11

    const/4 v10, 0x1

    :goto_8
    goto :goto_7

    :cond_11
    const/4 v10, 0x0

    goto :goto_8

    .line 1050
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method static a(Lco;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 32
    .param p0, "fragmentManager"    # Lco;
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .param p5, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco;",
            "Ljava/util/ArrayList",
            "<",
            "Lcf;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcf;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget v5, v0, Lco;->k:I

    if-gtz v5, :cond_1

    .line 124
    :cond_0
    return-void

    .line 90
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_0

    .line 91
    new-instance v29, Landroid/util/SparseArray;

    invoke-direct/range {v29 .. v29}, Landroid/util/SparseArray;-><init>()V

    .line 93
    .local v29, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcs$a;>;"
    move/from16 v23, p3

    .local v23, "i":I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, p4

    if-ge v0, v1, :cond_3

    .line 94
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcf;

    .line 95
    .local v28, "record":Lcf;
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    .line 96
    .local v24, "isPop":Z
    if-eqz v24, :cond_2

    .line 97
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcs;->b(Lcf;Landroid/util/SparseArray;Z)V

    .line 93
    :goto_1
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 99
    :cond_2
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcs;->a(Lcf;Landroid/util/SparseArray;Z)V

    goto :goto_1

    .line 103
    .end local v24    # "isPop":Z
    .end local v28    # "record":Lcf;
    :cond_3
    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    new-instance v26, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lco;->l:Lcm;

    .line 1198
    iget-object v5, v5, Lcm;->c:Landroid/content/Context;

    .line 104
    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 105
    .local v26, "nonExistentView":Landroid/view/View;
    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseArray;->size()I

    move-result v27

    .line 106
    .local v27, "numContainers":I
    const/16 v23, 0x0

    :goto_2
    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    .line 107
    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v21

    .line 108
    .local v21, "containerId":I
    move/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcs;->a(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lfk;

    move-result-object v25

    .line 112
    .local v25, "nameOverrides":Lfk;, "Lfk<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcs$a;

    .line 114
    .local v22, "containerTransition":Lcs$a;
    if-eqz p5, :cond_11

    .line 2196
    const/4 v5, 0x0

    .line 2197
    move-object/from16 v0, p0

    iget-object v6, v0, Lco;->m:Lck;

    invoke-virtual {v6}, Lck;->a()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 2198
    move-object/from16 v0, p0

    iget-object v5, v0, Lco;->m:Lck;

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lck;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object v14, v5

    .line 2200
    :goto_3
    if-eqz v14, :cond_8

    .line 2203
    move-object/from16 v0, v22

    iget-object v15, v0, Lcs$a;->a:Landroid/support/v4/app/Fragment;

    .line 2204
    move-object/from16 v0, v22

    iget-object v0, v0, Lcs$a;->d:Landroid/support/v4/app/Fragment;

    move-object/from16 v16, v0

    .line 2205
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcs$a;->b:Z

    move/from16 v17, v0

    .line 2206
    move-object/from16 v0, v22

    iget-boolean v5, v0, Lcs$a;->e:Z

    .line 2208
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2209
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2210
    move/from16 v0, v17

    invoke-static {v15, v0}, Lcs;->a(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v20

    .line 2211
    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcs;->b(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v12

    .line 2480
    move-object/from16 v0, v22

    iget-object v6, v0, Lcs$a;->a:Landroid/support/v4/app/Fragment;

    .line 2481
    move-object/from16 v0, v22

    iget-object v7, v0, Lcs$a;->d:Landroid/support/v4/app/Fragment;

    .line 2482
    if-eqz v6, :cond_4

    .line 2483
    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2485
    :cond_4
    if-eqz v6, :cond_5

    if-nez v7, :cond_9

    .line 2486
    :cond_5
    const/4 v10, 0x0

    .line 2217
    :goto_4
    if-nez v20, :cond_6

    if-nez v10, :cond_6

    if-eqz v12, :cond_8

    .line 2222
    :cond_6
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v26

    invoke-static {v12, v0, v1, v2}, Lcs;->b(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v9

    .line 2225
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-static {v0, v15, v1, v2}, Lcs;->b(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v7

    .line 2228
    const/4 v5, 0x4

    invoke-static {v7, v5}, Lcs;->b(Ljava/util/ArrayList;I)V

    .line 2230
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v0, v12, v10, v15, v1}, Lcs;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    .line 2233
    if-eqz v5, :cond_8

    .line 3257
    if-eqz v16, :cond_7

    if-eqz v12, :cond_7

    move-object/from16 v0, v16

    iget-boolean v6, v0, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v6, :cond_7

    move-object/from16 v0, v16

    iget-boolean v6, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v6, :cond_7

    move-object/from16 v0, v16

    iget-boolean v6, v0, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v6, :cond_7

    .line 3259
    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/support/v4/app/Fragment;->setHideReplaced(Z)V

    .line 3261
    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v8

    move-object v6, v12

    .line 4219
    check-cast v6, Landroid/transition/Transition;

    .line 4220
    new-instance v11, Lct$2;

    invoke-direct {v11, v8, v9}, Lct$2;-><init>(Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v11}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 3262
    move-object/from16 v0, v16

    iget-object v6, v0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 3263
    new-instance v8, Lcs$1;

    invoke-direct {v8, v9}, Lcs$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v6, v8}, Ldh;->a(Landroid/view/View;Ljava/lang/Runnable;)Ldh;

    .line 2236
    :cond_7
    invoke-static/range {v18 .. v18}, Lct;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v6, v20

    move-object v8, v12

    move-object/from16 v11, v18

    .line 2237
    invoke-static/range {v5 .. v11}, Lct;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 2240
    invoke-static {v14, v5}, Lct;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 2241
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-static {v14, v0, v1, v13, v2}, Lct;->a(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 2243
    const/4 v5, 0x0

    invoke-static {v7, v5}, Lcs;->b(Ljava/util/ArrayList;I)V

    .line 2244
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v10, v0, v1}, Lct;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 106
    :cond_8
    :goto_5
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 2489
    :cond_9
    move-object/from16 v0, v22

    iget-boolean v8, v0, Lcs$a;->b:Z

    .line 2490
    invoke-virtual/range {v25 .. v25}, Lfk;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x0

    .line 2493
    :goto_6
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-static {v0, v5, v1}, Lcs;->b(Lfk;Ljava/lang/Object;Lcs$a;)Lfk;

    move-result-object v10

    .line 2496
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-static {v0, v5, v1}, Lcs;->c(Lfk;Ljava/lang/Object;Lcs$a;)Lfk;

    move-result-object v9

    .line 2499
    invoke-virtual/range {v25 .. v25}, Lfk;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 2500
    const/4 v13, 0x0

    .line 2501
    if-eqz v10, :cond_a

    .line 2502
    invoke-virtual {v10}, Lfk;->clear()V

    .line 2504
    :cond_a
    if-eqz v9, :cond_b

    .line 2505
    invoke-virtual {v9}, Lfk;->clear()V

    .line 2514
    :cond_b
    :goto_7
    if-nez v20, :cond_e

    if-nez v12, :cond_e

    if-nez v13, :cond_e

    .line 2516
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 2491
    :cond_c
    invoke-static {v6, v7, v8}, Lcs;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    goto :goto_6

    .line 2509
    :cond_d
    invoke-virtual/range {v25 .. v25}, Lfk;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 2508
    move-object/from16 v0, v19

    invoke-static {v0, v10, v11}, Lcs;->a(Ljava/util/ArrayList;Lfk;Ljava/util/Collection;)V

    .line 2511
    invoke-virtual/range {v25 .. v25}, Lfk;->values()Ljava/util/Collection;

    move-result-object v11

    .line 2510
    move-object/from16 v0, v18

    invoke-static {v0, v9, v11}, Lcs;->a(Ljava/util/ArrayList;Lfk;Ljava/util/Collection;)V

    move-object v13, v5

    goto :goto_7

    .line 2519
    :cond_e
    const/4 v5, 0x1

    invoke-static {v6, v7, v8, v10, v5}, Lcs;->b(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLfk;Z)V

    .line 2523
    if-eqz v13, :cond_10

    .line 2524
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2525
    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-static {v13, v0, v1}, Lct;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 2527
    move-object/from16 v0, v22

    iget-boolean v5, v0, Lcs$a;->e:Z

    .line 2528
    move-object/from16 v0, v22

    iget-object v11, v0, Lcs$a;->f:Lcf;

    .line 2529
    invoke-static {v13, v12, v10, v5, v11}, Lcs;->a(Ljava/lang/Object;Ljava/lang/Object;Lfk;ZLcf;)V

    .line 2531
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 2532
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v9, v0, v1, v8}, Lcs;->b(Lfk;Lcs$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v10

    .line 2534
    if-eqz v10, :cond_f

    .line 2535
    move-object/from16 v0, v20

    invoke-static {v0, v11}, Lct;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 2542
    :cond_f
    :goto_8
    new-instance v5, Lcs$3;

    invoke-direct/range {v5 .. v11}, Lcs$3;-><init>(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLfk;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v14, v5}, Ldh;->a(Landroid/view/View;Ljava/lang/Runnable;)Ldh;

    move-object v10, v13

    .line 2552
    goto/16 :goto_4

    .line 2538
    :cond_10
    const/4 v11, 0x0

    .line 2539
    const/4 v10, 0x0

    goto :goto_8

    .line 4291
    :cond_11
    const/4 v5, 0x0

    .line 4292
    move-object/from16 v0, p0

    iget-object v6, v0, Lco;->m:Lck;

    invoke-virtual {v6}, Lck;->a()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 4293
    move-object/from16 v0, p0

    iget-object v5, v0, Lco;->m:Lck;

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lck;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object/from16 v30, v5

    .line 4295
    :goto_9
    if-eqz v30, :cond_8

    .line 4298
    move-object/from16 v0, v22

    iget-object v0, v0, Lcs$a;->a:Landroid/support/v4/app/Fragment;

    move-object/from16 v31, v0

    .line 4299
    move-object/from16 v0, v22

    iget-object v0, v0, Lcs$a;->d:Landroid/support/v4/app/Fragment;

    move-object/from16 v18, v0

    .line 4300
    move-object/from16 v0, v22

    iget-boolean v5, v0, Lcs$a;->b:Z

    .line 4301
    move-object/from16 v0, v22

    iget-boolean v6, v0, Lcs$a;->e:Z

    .line 4303
    move-object/from16 v0, v31

    invoke-static {v0, v5}, Lcs;->a(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v15

    .line 4304
    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcs;->b(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v17

    .line 4306
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 4307
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 4609
    move-object/from16 v0, v22

    iget-object v11, v0, Lcs$a;->a:Landroid/support/v4/app/Fragment;

    .line 4610
    move-object/from16 v0, v22

    iget-object v12, v0, Lcs$a;->d:Landroid/support/v4/app/Fragment;

    .line 4612
    if-eqz v11, :cond_12

    if-nez v12, :cond_17

    .line 4613
    :cond_12
    const/16 v19, 0x0

    .line 4313
    :goto_a
    if-nez v15, :cond_13

    if-nez v19, :cond_13

    if-eqz v17, :cond_8

    .line 4318
    :cond_13
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-static {v0, v1, v14, v2}, Lcs;->b(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v18

    .line 4321
    if-eqz v18, :cond_14

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 4322
    :cond_14
    const/16 v17, 0x0

    .line 5523
    :cond_15
    if-eqz v15, :cond_16

    move-object v5, v15

    .line 5524
    check-cast v5, Landroid/transition/Transition;

    .line 5525
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 4329
    :cond_16
    move-object/from16 v0, v22

    iget-boolean v5, v0, Lcs$a;->b:Z

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v31

    invoke-static {v15, v0, v1, v2, v5}, Lcs;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v14

    .line 4332
    if-eqz v14, :cond_8

    .line 4333
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v9

    .line 4334
    invoke-static/range {v14 .. v20}, Lct;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 6371
    new-instance v5, Lcs$2;

    move-object v6, v15

    move-object/from16 v7, v26

    move-object/from16 v8, v31

    move-object/from16 v10, v16

    move-object/from16 v11, v18

    move-object/from16 v12, v17

    invoke-direct/range {v5 .. v12}, Lcs$2;-><init>(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    move-object/from16 v0, v30

    invoke-static {v0, v5}, Ldh;->a(Landroid/view/View;Ljava/lang/Runnable;)Ldh;

    .line 6403
    new-instance v5, Lct$4;

    move-object/from16 v0, v25

    invoke-direct {v5, v9, v0}, Lct$4;-><init>(Ljava/util/ArrayList;Ljava/util/Map;)V

    move-object/from16 v0, v30

    invoke-static {v0, v5}, Ldh;->a(Landroid/view/View;Ljava/lang/Runnable;)Ldh;

    .line 4342
    move-object/from16 v0, v30

    invoke-static {v0, v14}, Lct;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 6560
    new-instance v5, Lct$7;

    move-object/from16 v0, v25

    invoke-direct {v5, v9, v0}, Lct$7;-><init>(Ljava/util/ArrayList;Ljava/util/Map;)V

    move-object/from16 v0, v30

    invoke-static {v0, v5}, Ldh;->a(Landroid/view/View;Ljava/lang/Runnable;)Ldh;

    goto/16 :goto_5

    .line 4616
    :cond_17
    move-object/from16 v0, v22

    iget-boolean v13, v0, Lcs$a;->b:Z

    .line 4617
    invoke-virtual/range {v25 .. v25}, Lfk;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v5, 0x0

    .line 4620
    :goto_b
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-static {v0, v5, v1}, Lcs;->b(Lfk;Ljava/lang/Object;Lcs$a;)Lfk;

    move-result-object v6

    .line 4623
    invoke-virtual/range {v25 .. v25}, Lfk;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 4624
    const/4 v7, 0x0

    .line 4629
    :goto_c
    if-nez v15, :cond_1a

    if-nez v17, :cond_1a

    if-nez v7, :cond_1a

    .line 4631
    const/16 v19, 0x0

    goto/16 :goto_a

    .line 4618
    :cond_18
    invoke-static {v11, v12, v13}, Lcs;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    goto :goto_b

    .line 4626
    :cond_19
    invoke-virtual {v6}, Lfk;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v7, v5

    goto :goto_c

    .line 4634
    :cond_1a
    const/4 v5, 0x1

    invoke-static {v11, v12, v13, v6, v5}, Lcs;->b(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLfk;Z)V

    .line 4637
    if-eqz v7, :cond_1c

    .line 4638
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 4639
    move-object/from16 v0, v26

    invoke-static {v7, v0, v14}, Lct;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 4641
    move-object/from16 v0, v22

    iget-boolean v5, v0, Lcs$a;->e:Z

    .line 4642
    move-object/from16 v0, v22

    iget-object v8, v0, Lcs$a;->f:Lcf;

    .line 4643
    move-object/from16 v0, v17

    invoke-static {v7, v0, v6, v5, v8}, Lcs;->a(Ljava/lang/Object;Ljava/lang/Object;Lfk;ZLcf;)V

    .line 4645
    if-eqz v15, :cond_1b

    .line 4646
    invoke-static/range {v15 .. v16}, Lct;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 4654
    :cond_1b
    :goto_d
    new-instance v5, Lcs$4;

    move-object/from16 v6, v25

    move-object/from16 v8, v22

    move-object/from16 v10, v26

    invoke-direct/range {v5 .. v16}, Lcs$4;-><init>(Lfk;Ljava/lang/Object;Lcs$a;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object/from16 v0, v30

    invoke-static {v0, v5}, Ldh;->a(Landroid/view/View;Ljava/lang/Runnable;)Ldh;

    move-object/from16 v19, v7

    .line 4682
    goto/16 :goto_a

    .line 4649
    :cond_1c
    const/16 v16, 0x0

    goto :goto_d

    :cond_1d
    move-object/from16 v30, v5

    goto/16 :goto_9

    :cond_1e
    move-object v14, v5

    goto/16 :goto_3
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;Lfk;ZLcf;)V
    .locals 4
    .param p0, "sharedElementTransition"    # Ljava/lang/Object;
    .param p1, "exitTransition"    # Ljava/lang/Object;
    .param p3, "outIsPop"    # Z
    .param p4, "outTransaction"    # Lcf;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Lcf;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "outSharedElements":Lfk;, "Lfk<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v3, 0x0

    .line 855
    iget-object v2, p4, Lcf;->s:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p4, Lcf;->s:Ljava/util/ArrayList;

    .line 856
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 857
    if-eqz p3, :cond_1

    iget-object v2, p4, Lcf;->t:Ljava/util/ArrayList;

    .line 858
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 860
    .local v1, "sourceName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, v1}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 861
    .local v0, "outEpicenterView":Landroid/view/View;
    invoke-static {p0, v0}, Lct;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 863
    if-eqz p1, :cond_0

    .line 864
    invoke-static {p1, v0}, Lct;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 867
    .end local v0    # "outEpicenterView":Landroid/view/View;
    .end local v1    # "sourceName":Ljava/lang/String;
    :cond_0
    return-void

    .line 858
    :cond_1
    iget-object v2, p4, Lcf;->s:Ljava/util/ArrayList;

    .line 859
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/ArrayList;I)V
    .locals 1
    .param p0, "x0"    # Ljava/util/ArrayList;
    .param p1, "x1"    # I

    .prologue
    .line 38
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcs;->b(Ljava/util/ArrayList;I)V

    return-void
.end method

.method private static a(Ljava/util/ArrayList;Lfk;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 566
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p1, "sharedElements":Lfk;, "Lfk<Ljava/lang/String;Landroid/view/View;>;"
    .local p2, "nameOverridesSet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lfk;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 567
    invoke-virtual {p1, v0}, Lfk;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 568
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 572
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private static b(Lfk;Lcs$a;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 4
    .param p1, "fragments"    # Lcs$a;
    .param p2, "enterTransition"    # Ljava/lang/Object;
    .param p3, "inIsPop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Lcs$a;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p0, "inSharedElements":Lfk;, "Lfk<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v3, 0x0

    .line 830
    iget-object v0, p1, Lcs$a;->c:Lcf;

    .line 831
    .local v0, "inTransaction":Lcf;
    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    iget-object v2, v0, Lcf;->s:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcf;->s:Ljava/util/ArrayList;

    .line 833
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 834
    if-eqz p3, :cond_0

    iget-object v2, v0, Lcf;->s:Ljava/util/ArrayList;

    .line 835
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 837
    .local v1, "targetName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 839
    .end local v1    # "targetName":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 835
    :cond_0
    iget-object v2, v0, Lcf;->t:Ljava/util/ArrayList;

    .line 836
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_0

    .line 839
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static b(Lfk;Ljava/lang/Object;Lcs$a;)Lfk;
    .locals 10
    .param p1, "sharedElementTransition"    # Ljava/lang/Object;
    .param p2, "fragments"    # Lcs$a;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcs$a;",
            ")",
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 703
    .local p0, "nameOverrides":Lfk;, "Lfk<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lfk;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    if-nez p1, :cond_2

    .line 704
    :cond_0
    invoke-virtual {p0}, Lfk;->clear()V

    .line 705
    const/4 v4, 0x0

    .line 738
    :cond_1
    :goto_0
    return-object v4

    .line 707
    :cond_2
    iget-object v3, p2, Lcs$a;->d:Landroid/support/v4/app/Fragment;

    .line 708
    .local v3, "outFragment":Landroid/support/v4/app/Fragment;
    new-instance v4, Lfk;

    invoke-direct {v4}, Lfk;-><init>()V

    .line 709
    .local v4, "outSharedElements":Lfk;, "Lfk<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v9

    invoke-static {v4, v9}, Lct;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 713
    iget-object v5, p2, Lcs$a;->f:Lcf;

    .line 714
    .local v5, "outTransaction":Lcf;
    iget-boolean v9, p2, Lcs$a;->e:Z

    if-eqz v9, :cond_4

    .line 715
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Ldm;

    move-result-object v6

    .line 716
    .local v6, "sharedElementCallback":Ldm;
    iget-object v2, v5, Lcf;->t:Ljava/util/ArrayList;

    .line 722
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v4, v2}, Lfk;->retainAll(Ljava/util/Collection;)Z

    .line 723
    if-eqz v6, :cond_6

    .line 725
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_1

    .line 726
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 727
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v4, v1}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 728
    .local v8, "view":Landroid/view/View;
    if-nez v8, :cond_5

    .line 729
    invoke-virtual {p0, v1}, Lfk;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 718
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "sharedElementCallback":Ldm;
    .end local v8    # "view":Landroid/view/View;
    :cond_4
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getExitTransitionCallback()Ldm;

    move-result-object v6

    .line 719
    .restart local v6    # "sharedElementCallback":Ldm;
    iget-object v2, v5, Lcf;->s:Ljava/util/ArrayList;

    .restart local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 730
    .restart local v0    # "i":I
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v8    # "view":Landroid/view/View;
    :cond_5
    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 731
    invoke-virtual {p0, v1}, Lfk;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 732
    .local v7, "targetValue":Ljava/lang/String;
    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v7}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 736
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v7    # "targetValue":Ljava/lang/String;
    .end local v8    # "view":Landroid/view/View;
    :cond_6
    invoke-virtual {v4}, Lfk;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {p0, v9}, Lfk;->retainAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private static b(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "isPop"    # Z
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 438
    if-nez p0, :cond_0

    .line 439
    const/4 v0, 0x0

    .line 441
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 442
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    .line 441
    :goto_1
    invoke-static {v0}, Lct;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 443
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static b(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "transition"    # Ljava/lang/Object;
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 919
    .local p2, "sharedElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 920
    .local v1, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_2

    .line 921
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 922
    .restart local v1    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 923
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 924
    invoke-static {v1, v0}, Lct;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 926
    :cond_0
    if-eqz p2, :cond_1

    .line 927
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 929
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 930
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    invoke-static {p0, v1}, Lct;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 934
    .end local v0    # "root":Landroid/view/View;
    :cond_2
    return-object v1
.end method

.method private static b(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLfk;Z)V
    .locals 6
    .param p0, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "isPop"    # Z
    .param p4, "isStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 897
    .local p3, "sharedElements":Lfk;, "Lfk<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p2, :cond_0

    .line 898
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Ldm;

    move-result-object v3

    .line 900
    .local v3, "sharedElementCallback":Ldm;
    :goto_0
    if-eqz v3, :cond_2

    .line 901
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 902
    .local v4, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 903
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p3, :cond_1

    const/4 v0, 0x0

    .line 904
    .local v0, "count":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 905
    invoke-virtual {p3, v1}, Lfk;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    invoke-virtual {p3, v1}, Lfk;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 899
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "sharedElementCallback":Ldm;
    .end local v4    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Ldm;

    move-result-object v3

    goto :goto_0

    .line 903
    .restart local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "sharedElementCallback":Ldm;
    .restart local v4    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    invoke-virtual {p3}, Lfk;->size()I

    move-result v0

    goto :goto_1

    .line 914
    .end local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    return-void
.end method

.method private static b(Lcf;Landroid/util/SparseArray;Z)V
    .locals 4
    .param p0, "transaction"    # Lcf;
    .param p2, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcf;",
            "Landroid/util/SparseArray",
            "<",
            "Lcs$a;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1010
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcs$a;>;"
    iget-object v3, p0, Lcf;->b:Lco;

    iget-object v3, v3, Lco;->m:Lck;

    invoke-virtual {v3}, Lck;->a()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1018
    :cond_0
    return-void

    .line 1013
    :cond_1
    iget-object v3, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1014
    .local v0, "numOps":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "opNum":I
    :goto_0
    if-ltz v2, :cond_0

    .line 1015
    iget-object v3, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcf$a;

    .line 1016
    .local v1, "op":Lcf$a;
    const/4 v3, 0x1

    invoke-static {p0, v1, p1, v3, p2}, Lcs;->a(Lcf;Lcf$a;Landroid/util/SparseArray;ZZ)V

    .line 1014
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private static b(Ljava/util/ArrayList;I)V
    .locals 3
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 941
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p0, :cond_1

    .line 948
    :cond_0
    return-void

    .line 944
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 945
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 946
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 944
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private static c(Lfk;Ljava/lang/Object;Lcs$a;)Lfk;
    .locals 12
    .param p1, "sharedElementTransition"    # Ljava/lang/Object;
    .param p2, "fragments"    # Lcs$a;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcs$a;",
            ")",
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 759
    .local p0, "nameOverrides":Lfk;, "Lfk<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p2, Lcs$a;->a:Landroid/support/v4/app/Fragment;

    .line 760
    .local v2, "inFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 761
    .local v0, "fragmentView":Landroid/view/View;
    invoke-virtual {p0}, Lfk;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    if-eqz p1, :cond_0

    if-nez v0, :cond_2

    .line 762
    :cond_0
    invoke-virtual {p0}, Lfk;->clear()V

    .line 763
    const/4 v3, 0x0

    .line 802
    :cond_1
    return-object v3

    .line 765
    :cond_2
    new-instance v3, Lfk;

    invoke-direct {v3}, Lfk;-><init>()V

    .line 766
    .local v3, "inSharedElements":Lfk;, "Lfk<Ljava/lang/String;Landroid/view/View;>;"
    invoke-static {v3, v0}, Lct;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 770
    iget-object v4, p2, Lcs$a;->c:Lcf;

    .line 771
    .local v4, "inTransaction":Lcf;
    iget-boolean v10, p2, Lcs$a;->b:Z

    if-eqz v10, :cond_5

    .line 772
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getExitTransitionCallback()Ldm;

    move-result-object v8

    .line 773
    .local v8, "sharedElementCallback":Ldm;
    iget-object v7, v4, Lcf;->s:Ljava/util/ArrayList;

    .line 779
    .local v7, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-eqz v7, :cond_3

    .line 780
    invoke-virtual {v3, v7}, Lfk;->retainAll(Ljava/util/Collection;)Z

    .line 782
    :cond_3
    if-eqz v8, :cond_7

    .line 784
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 785
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 786
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v3, v6}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 787
    .local v9, "view":Landroid/view/View;
    if-nez v9, :cond_6

    .line 788
    invoke-static {p0, v6}, Lcs;->a(Lfk;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 789
    .local v5, "key":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 790
    invoke-virtual {p0, v5}, Lfk;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    .end local v5    # "key":Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 775
    .end local v1    # "i":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "sharedElementCallback":Ldm;
    .end local v9    # "view":Landroid/view/View;
    :cond_5
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Ldm;

    move-result-object v8

    .line 776
    .restart local v8    # "sharedElementCallback":Ldm;
    iget-object v7, v4, Lcf;->t:Ljava/util/ArrayList;

    .restart local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 792
    .restart local v1    # "i":I
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v9    # "view":Landroid/view/View;
    :cond_6
    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 793
    invoke-static {p0, v6}, Lcs;->a(Lfk;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 794
    .restart local v5    # "key":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 795
    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v5, v10}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 7876
    .end local v1    # "i":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v9    # "view":Landroid/view/View;
    :cond_7
    invoke-virtual {p0}, Lfk;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    move v11, v10

    :goto_3
    if-ltz v11, :cond_1

    .line 7877
    invoke-virtual {p0, v11}, Lfk;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 7878
    invoke-virtual {v3, v10}, Lfk;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 7879
    invoke-virtual {p0, v11}, Lfk;->removeAt(I)Ljava/lang/Object;

    .line 7876
    :cond_8
    add-int/lit8 v10, v11, -0x1

    move v11, v10

    goto :goto_3
.end method
