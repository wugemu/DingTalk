.class public abstract Lfin;
.super Lfxq;
.source "BaseContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lfxq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected a:Landroid/app/Activity;

.field protected b:I

.field protected c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "chooseType"    # I

    .prologue
    .line 40
    .local p0, "this":Lfin;, "Lfin<TT;>;"
    invoke-direct {p0, p1}, Lfxq;-><init>(Landroid/app/Activity;)V

    .line 41
    iput-object p1, p0, Lfin;->a:Landroid/app/Activity;

    .line 42
    iput p2, p0, Lfin;->b:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "chooseType"    # I
    .param p3, "source"    # I

    .prologue
    .line 46
    .local p0, "this":Lfin;, "Lfin<TT;>;"
    invoke-direct {p0, p1, p2}, Lfin;-><init>(Landroid/app/Activity;I)V

    .line 47
    iput p3, p0, Lfin;->c:I

    .line 48
    return-void
.end method


# virtual methods
.method public abstract a(I)Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lfin;, "Lfin<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 120
    .local p0, "this":Lfin;, "Lfin<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 52
    .local p0, "this":Lfin;, "Lfin<TT;>;"
    invoke-virtual {p0, p1}, Lfin;->a(I)Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 64
    .local p0, "this":Lfin;, "Lfin<TT;>;"
    invoke-virtual {p0, p1}, Lfin;->getItemViewType(I)I

    move-result v3

    .line 65
    .local v3, "type":I
    const/4 v1, -0x1

    .line 66
    .local v1, "nextType":I
    invoke-virtual {p0}, Lfin;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge p1, v5, :cond_0

    .line 67
    add-int/lit8 v5, p1, 0x1

    invoke-virtual {p0, v5}, Lfin;->getItemViewType(I)I

    move-result v1

    .line 70
    :cond_0
    if-nez p2, :cond_1b

    .line 71
    iget-object v5, p0, Lfin;->a:Landroid/app/Activity;

    .line 1054
    sget-object v6, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_5

    .line 1055
    new-instance v4, Lfjx;

    invoke-direct {v4, v5}, Lfjx;-><init>(Landroid/app/Activity;)V

    .line 72
    .local v4, "viewHolder":Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;
    :goto_0
    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->a()Landroid/view/View;

    move-result-object p2

    .line 73
    iget v5, p0, Lfin;->b:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->a(I)V

    .line 74
    iget v5, p0, Lfin;->c:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->b(I)V

    .line 75
    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->b()V

    .line 76
    invoke-virtual {v4, p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->a(Lfin;)V

    .line 77
    invoke-virtual {p0}, Lfin;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->c(I)V

    .line 78
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    :goto_1
    invoke-virtual {p0}, Lfin;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    if-lez p1, :cond_1

    .line 83
    iget-object v5, p0, Lfin;->h:Ljava/util/List;

    add-int/lit8 v6, p1, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->a(Ljava/lang/Object;)V

    .line 85
    :cond_1
    invoke-virtual {p0}, Lfin;->b()Z

    move-result v5

    if-eqz v5, :cond_2

    if-ltz p1, :cond_2

    .line 86
    iget-object v5, p0, Lfin;->h:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->b(Ljava/lang/Object;)V

    .line 88
    :cond_2
    if-eq v3, v1, :cond_3

    const/4 v5, -0x1

    if-ne v1, v5, :cond_1c

    :cond_3
    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->a(Z)V

    .line 90
    iget-object v5, p0, Lfin;->h:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 92
    .local v2, "t":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_4

    .line 93
    invoke-virtual {v4, v2, p1, p3}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->a(Ljava/lang/Object;ILandroid/view/ViewGroup;)V

    .line 94
    sget v5, Lezg$h;->checkable_cell:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/CheckableCell;

    .line 95
    .local v0, "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/CheckableCell;
    if-nez v0, :cond_4

    .line 96
    new-instance v5, Lfin$1;

    invoke-direct {v5, p0, v4, v2, p1}, Lfin$1;-><init>(Lfin;Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;Ljava/lang/Object;I)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .end local v0    # "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/CheckableCell;
    :cond_4
    return-object p2

    .line 1056
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    .end local v4    # "viewHolder":Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;
    :cond_5
    sget-object v6, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_6

    .line 1057
    new-instance v4, Lfjw;

    invoke-direct {v4, v5}, Lfjw;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 1058
    :cond_6
    sget-object v6, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->SINGLE_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_7

    .line 1059
    new-instance v4, Lfkh;

    invoke-direct {v4, v5}, Lfkh;-><init>(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1060
    :cond_7
    sget-object v6, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->SINGLE_DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_8

    .line 1061
    new-instance v4, Lfkg;

    invoke-direct {v4, v5}, Lfkg;-><init>(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1062
    :cond_8
    sget-object v6, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTIPLE_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_9

    .line 1063
    new-instance v4, Lfkd;

    invoke-direct {v4, v5}, Lfkd;-><init>(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1064
    :cond_9
    sget-object v6, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTIPLE_DEPT_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_a

    .line 1065
    new-instance v4, Lfkb;

    invoke-direct {v4, v5}, Lfkb;-><init>(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1066
    :cond_a
    sget-object v6, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTIPLE_DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_b

    .line 1067
    new-instance v4, Lfkc;

    invoke-direct {v4, v5}, Lfkc;-><init>(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1068
    :cond_b
    sget-object v6, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->EDITOR_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_c

    .line 1069
    new-instance v4, Lfjw;

    invoke-direct {v4, v5}, Lfjw;-><init>(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1070
    :cond_c
    sget-object v6, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->FOLLOWER:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_d

    .line 1071
    new-instance v4, Lfjz;

    invoke-direct {v4, v5}, Lfjz;-><init>(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1072
    :cond_d
    sget-object v6, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->FOLLOWER_DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_e

    .line 1073
    new-instance v4, Lfjy;

    invoke-direct {v4, v5}, Lfjy;-><init>(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1074
    :cond_e
    sget-object v6, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->LOCAL_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_f

    .line 1075
    new-instance v4, Lfjq;

    invoke-direct {v4, v5}, Lfjq;-><init>(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1076
    :cond_f
    sget-object v6, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTIPLE_LOCAL_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_10

    .line 1077
    new-instance v4, Lfjr;

    invoke-direct {v4, v5, p0}, Lfjr;-><init>(Landroid/app/Activity;Lfin;)V

    goto/16 :goto_0

    .line 1078
    :cond_10
    sget-object v6, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->FRIEND:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_11

    .line 1079
    new-instance v4, Lfjh;

    invoke-direct {v4, v5}, Lfjh;-><init>(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1080
    :cond_11
    sget-object v6, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTI_FRIEND:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_12

    .line 1081
    new-instance v4, Lfji;

    invoke-direct {v4, v5}, Lfji;-><init>(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1082
    :cond_12
    sget-object v6, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->COMMON_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_13

    .line 1083
    new-instance v4, Lfiw;

    invoke-direct {v4, v5}, Lfiw;-><init>(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1084
    :cond_13
    sget-object v6, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTI_COMMON_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_14

    .line 1085
    new-instance v4, Lfix;

    invoke-direct {v4, v5}, Lfix;-><init>(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1086
    :cond_14
    sget-object v6, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->CRM:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_15

    .line 1087
    new-instance v4, Lfiz;

    invoke-direct {v4, v5}, Lfiz;-><init>(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1088
    :cond_15
    sget-object v6, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTI_CRM_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_16

    .line 1089
    new-instance v4, Lfjb;

    invoke-direct {v4, v5}, Lfjb;-><init>(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1090
    :cond_16
    sget-object v6, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->EDIT_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_17

    .line 1091
    new-instance v4, Lfjs;

    invoke-direct {v4, v5}, Lfjs;-><init>(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1092
    :cond_17
    sget-object v6, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->LABEL:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_18

    .line 1093
    new-instance v4, Lfka;

    invoke-direct {v4, v5}, Lfka;-><init>(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1094
    :cond_18
    sget-object v6, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTI_DEVICE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_19

    .line 1095
    new-instance v4, Lfkj;

    invoke-direct {v4, v5}, Lfkj;-><init>(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1096
    :cond_19
    sget-object v6, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->DEVICE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_1a

    .line 1097
    new-instance v4, Lfkm;

    invoke-direct {v4, v5}, Lfkm;-><init>(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1099
    :cond_1a
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 80
    :cond_1b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;

    .restart local v4    # "viewHolder":Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;
    goto/16 :goto_1

    .line 88
    :cond_1c
    const/4 v5, 0x0

    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lfin;, "Lfin<TT;>;"
    invoke-static {}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->values()[Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
