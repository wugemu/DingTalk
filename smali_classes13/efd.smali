.class public final Lefd;
.super Lefc;
.source "MicroGroupViewHolder.java"


# instance fields
.field public a:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Lefv;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lefc;-><init>(Landroid/view/View;)V

    .line 52
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 55
    sget v0, Ledz$g;->oa_entry_group_item:I

    return v0
.end method

.method private a(Lgtr;II)V
    .locals 7
    .param p1, "microAppGroupObject"    # Lgtr;
    .param p2, "count"    # I
    .param p3, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 112
    if-ge v1, p3, :cond_0

    .line 114
    iget-object v4, p1, Lgtr;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 115
    .local v2, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    const/4 v3, 0x0

    .line 117
    .local v3, "url":Ljava/lang/String;
    :try_start_0
    iget-object v4, v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->icon:Ljava/lang/String;

    invoke-static {v4}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 121
    :goto_1
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v4

    sget v5, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    sget v6, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    invoke-virtual {v4, v3, v5, v6}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    .line 124
    iget-object v4, p0, Lefd;->a:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aget-object v4, v4, v1

    iget-object v5, v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 111
    .end local v2    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v3    # "url":Ljava/lang/String;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .restart local v2    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .restart local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1

    .line 126
    .end local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    .end local v2    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lefd;->a:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aget-object v4, v4, v1

    sget v5, Ledz$e;->avatar_nobody:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    goto :goto_2

    .line 129
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 61
    sget v0, Ledz$f;->ll_group1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lefd;->d:Landroid/view/View;

    .line 62
    sget v0, Ledz$f;->ll_group2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lefd;->e:Landroid/view/View;

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lefd;->a:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 65
    iget-object v1, p0, Lefd;->a:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v2, 0x0

    sget v0, Ledz$f;->session_user_icon0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v0, v1, v2

    .line 66
    iget-object v1, p0, Lefd;->a:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v2, 0x1

    sget v0, Ledz$f;->session_user_icon1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v0, v1, v2

    .line 67
    iget-object v1, p0, Lefd;->a:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v2, 0x2

    sget v0, Ledz$f;->session_user_icon2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v0, v1, v2

    .line 68
    iget-object v1, p0, Lefd;->a:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v2, 0x3

    sget v0, Ledz$f;->session_user_icon3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v0, v1, v2

    .line 70
    sget v0, Ledz$f;->oa_entry_new:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lefd;->b:Landroid/widget/TextView;

    .line 71
    sget v0, Ledz$f;->oa_entry_group_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lefd;->c:Landroid/widget/TextView;

    .line 74
    :cond_0
    return-void
.end method

.method public final a(Lefv;)V
    .locals 8
    .param p1, "microGridItemObject"    # Lefv;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x4

    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 78
    iput-object p1, p0, Lefd;->f:Lefv;

    .line 79
    iget-object v1, p0, Lefd;->f:Lefv;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lefd;->f:Lefv;

    iget-object v1, v1, Lefv;->c:Lgtr;

    if-nez v1, :cond_1

    .line 80
    :cond_0
    iget-object v1, p0, Lefd;->d:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v1, p0, Lefd;->e:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v1, p0, Lefd;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v1, p0, Lefd;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1151
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v1, p0, Lefd;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v1, p0, Lefd;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lefd;->f:Lefv;

    iget-object v2, v2, Lefv;->c:Lgtr;

    iget-object v2, v2, Lgtr;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lefd;->f:Lefv;

    iget-object v1, v1, Lefv;->c:Lgtr;

    invoke-virtual {v1}, Lgtr;->a()I

    move-result v0

    .line 90
    .local v0, "size":I
    if-lt v0, v7, :cond_4

    .line 92
    iget-object v1, p0, Lefd;->d:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v1, p0, Lefd;->e:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v1, p1, Lefv;->c:Lgtr;

    invoke-direct {p0, v1, v7, v0}, Lefd;->a(Lgtr;II)V

    .line 1133
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 1134
    iget-object v1, p0, Lefd;->f:Lefv;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lefd;->f:Lefv;

    iget-object v1, v1, Lefv;->c:Lgtr;

    if-eqz v1, :cond_9

    .line 1135
    iget-object v1, p0, Lefd;->f:Lefv;

    iget-object v1, v1, Lefv;->c:Lgtr;

    iget-object v1, v1, Lgtr;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 1136
    invoke-static {}, Leel;->f()Leek;

    move-result-object v5

    invoke-interface {v5, v1}, Leek;->b(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1137
    const/4 v2, 0x1

    .line 1138
    iget-object v1, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->hintText:Ljava/lang/String;

    .line 1143
    :goto_2
    if-eqz v2, :cond_6

    .line 1144
    iget-object v2, p0, Lefd;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1148
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1149
    iget-object v1, p0, Lefd;->b:Landroid/widget/TextView;

    const-string/jumbo v2, "NEW"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 95
    :cond_4
    if-lt v0, v5, :cond_5

    .line 97
    iget-object v1, p0, Lefd;->d:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v1, p0, Lefd;->e:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v1, p1, Lefv;->c:Lgtr;

    invoke-direct {p0, v1, v5, v0}, Lefd;->a(Lgtr;II)V

    goto :goto_1

    .line 100
    :cond_5
    if-lt v0, v4, :cond_2

    .line 101
    iget-object v1, p0, Lefd;->d:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lefd;->e:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v1, p1, Lefv;->c:Lgtr;

    invoke-direct {p0, v1, v4, v0}, Lefd;->a(Lgtr;II)V

    goto :goto_1

    .line 1146
    :cond_6
    iget-object v2, p0, Lefd;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1150
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_8

    .line 1151
    iget-object v2, p0, Lefd;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1153
    :cond_8
    iget-object v2, p0, Lefd;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    move-object v1, v2

    move v2, v3

    goto :goto_2
.end method
