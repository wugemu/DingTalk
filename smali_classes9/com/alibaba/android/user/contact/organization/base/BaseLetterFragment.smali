.class public abstract Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;
.source "BaseLetterFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$a;,
        Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;"
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field protected e:Landroid/os/Handler;

.field protected f:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

.field private h:Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment",
            "<TT;>.b;"
        }
    .end annotation
.end field

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:[Ljava/lang/String;

.field private k:Landroid/widget/TextView;

.field private final l:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    .local p0, "this":Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;, "Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment<TT;>;"
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->e:Landroid/os/Handler;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->i:Ljava/util/HashMap;

    .line 92
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->l:[Ljava/lang/String;

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->i:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->j:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;)Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->h:Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$b;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;, "Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment<TT;>;"
    .local p1, "mDataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->a(Ljava/util/List;I)V

    .line 117
    return-void
.end method

.method public final a(Ljava/util/List;I)V
    .locals 18
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;, "Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment<TT;>;"
    .local p1, "mDataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    if-nez v14, :cond_0

    .line 169
    :goto_0
    return-void

    .line 124
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->i:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 125
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->j:[Ljava/lang/String;

    .line 126
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 127
    .local v3, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v14, "buildLetterView, uid:"

    invoke-virtual {v3, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 128
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v14

    invoke-virtual {v14}, Lcid;->b()Lchy;

    move-result-object v14

    invoke-virtual {v14}, Lchy;->getCurrentUid()J

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 130
    .local v12, "time1":J
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    .line 131
    .local v11, "size":I
    new-array v14, v11, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->j:[Ljava/lang/String;

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v2, "alphaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-lez p2, :cond_1

    .line 134
    const-string/jumbo v14, "\u9489"

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->i:Ljava/util/HashMap;

    const-string/jumbo v15, "\u9489"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->j:[Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "\u9489"

    aput-object v16, v14, v15

    .line 138
    :cond_1
    move/from16 v5, p2

    .local v5, "i":I
    :goto_1
    if-ge v5, v11, :cond_4

    .line 139
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x23

    invoke-static {v14, v15}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v4

    .line 140
    .local v4, "currentStr":C
    add-int/lit8 v14, v5, -0x1

    if-ltz v14, :cond_3

    add-int/lit8 v14, v5, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x23

    invoke-static {v14, v15}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v10

    .line 141
    .local v10, "previewStr":C
    :goto_2
    if-eq v10, v4, :cond_2

    .line 142
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x23

    invoke-static {v14, v15}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v9

    .line 143
    .local v9, "name":C
    const-string/jumbo v14, "n:"

    invoke-virtual {v3, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 144
    invoke-virtual {v3, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 145
    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->i:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->j:[Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v5

    .line 138
    .end local v9    # "name":C
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 140
    .end local v10    # "previewStr":C
    :cond_3
    const/16 v10, 0x20

    goto :goto_2

    .line 150
    .end local v4    # "currentStr":C
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    new-array v7, v14, [Ljava/lang/String;

    .line 151
    .local v7, "letters":[Ljava/lang/String;
    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 152
    const/4 v6, 0x0

    .line 153
    .local v6, "isAlphaFail":Z
    array-length v14, v7

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    const-string/jumbo v14, "#"

    const/4 v15, 0x0

    aget-object v15, v7, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 155
    const/16 v14, 0x14

    if-le v11, v14, :cond_7

    const/4 v6, 0x1

    .line 157
    :cond_5
    :goto_3
    array-length v14, v7

    if-lez v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->i:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    if-lez v14, :cond_6

    if-nez v6, :cond_6

    .line 158
    const-string/jumbo v14, "s:"

    invoke-virtual {v3, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 159
    array-length v14, v7

    invoke-virtual {v3, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 160
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v14, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setLetters([Ljava/lang/String;)V

    .line 162
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v14}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 163
    .local v8, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    array-length v15, v7

    mul-int/lit8 v15, v15, 0x14

    int-to-float v15, v15

    invoke-static {v14, v15}, Lcms;->c(Landroid/content/Context;F)I

    move-result v14

    iput v14, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 164
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v14, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setVisibility(I)V

    .line 166
    const-string/jumbo v14, ",time:"

    invoke-virtual {v3, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v12

    invoke-virtual {v3, v14, v15}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 168
    const-string/jumbo v14, "user_ct"

    sget-object v15, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->g:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v14 .. v17}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 155
    .end local v8    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    const/4 v6, 0x0

    goto :goto_3
.end method

.method public abstract g()I
.end method

.method public abstract h()I
.end method

.method public abstract i()Landroid/widget/ListView;
.end method

.method public j()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    .local p0, "this":Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;, "Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment<TT;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->l:[Ljava/lang/String;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;, "Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment<TT;>;"
    const/16 v4, 0x8

    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 70
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->I:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    .line 71
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->j()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setLetters([Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$e;->ui_common_level1_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setLetterColor(I)V

    .line 73
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    new-instance v2, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$a;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$a;-><init>(Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setOnTouchingLetterChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;)V

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$g;->letter_list_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 75
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setBgDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setPaintSize(F)V

    .line 77
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setVisibility(I)V

    .line 79
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->I:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->k:Landroid/widget/TextView;

    .line 80
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    new-instance v1, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$b;-><init>(Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;B)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->h:Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$b;

    .line 82
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->I:Landroid/view/View;

    return-object v1
.end method
