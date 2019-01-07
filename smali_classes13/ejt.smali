.class public final Lejt;
.super Landroid/widget/BaseAdapter;
.source "HomeOADropMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lejt$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgts;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lejt;->a:Ljava/util/List;

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lejt;->c:I

    .line 57
    iput-object p1, p0, Lejt;->b:Landroid/content/Context;

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lejt;->c:I

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    const/4 v3, 0x1

    .line 61
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lejt;->a:Ljava/util/List;

    .line 51
    iput v3, p0, Lejt;->c:I

    .line 62
    iput-object p1, p0, Lejt;->b:Landroid/content/Context;

    .line 1204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1205
    if-eqz p2, :cond_0

    .line 1207
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    .line 1208
    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-interface {p2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 1209
    invoke-static {v0}, Lejt;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1219
    const-string/jumbo v1, "HomeOADropMenuAdapter"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lejt$2;

    invoke-direct {v2, p0, p2}, Lejt$2;-><init>(Lejt;Ljava/util/List;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 63
    :cond_0
    :goto_0
    iput-object v0, p0, Lejt;->a:Ljava/util/List;

    .line 64
    iput v3, p0, Lejt;->c:I

    .line 65
    return-void

    .line 1212
    :cond_1
    invoke-static {p2}, Lejt;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lejt;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lejt;

    .prologue
    .line 46
    iget-object v0, p0, Lejt;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lejt;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lejt;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 46
    invoke-static {p1}, Lejt;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lgts;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v2, "orgMicroAPPObjectWrappers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgts;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 243
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 244
    .local v1, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v1, :cond_0

    .line 245
    new-instance v0, Lgts;

    invoke-direct {v0, v1}, Lgts;-><init>(Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;)V

    .line 246
    .local v0, "appWrapper":Lgts;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    .end local v0    # "appWrapper":Lgts;
    .end local v1    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_1
    return-object v2
.end method

.method static synthetic b(Lejt;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lejt;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 46
    iput-object p1, p0, Lejt;->a:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lejt;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lejt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 179
    if-ltz p1, :cond_0

    iget-object v0, p0, Lejt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 180
    :cond_0
    const/4 v0, 0x0

    .line 183
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lejt;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 193
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v10, 0x7f091cb3

    const/16 v11, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 111
    if-nez p2, :cond_1

    .line 112
    new-instance v4, Lejt$a;

    invoke-direct {v4, p0, v7}, Lejt$a;-><init>(Lejt;B)V

    .line 113
    .local v4, "viewHolder":Lejt$a;
    iget-object v5, p0, Lejt;->b:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v8, 0x7f040535

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 114
    const v5, 0x7f110042

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v5, v4, Lejt$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 115
    const v5, 0x7f1100e2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lejt$a;->b:Landroid/widget/TextView;

    .line 116
    const v5, 0x7f1116dc

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v5, v4, Lejt$a;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 117
    const v5, 0x7f1116dd

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lejt$a;->d:Landroid/widget/TextView;

    .line 118
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 123
    :goto_0
    invoke-virtual {p0, p1}, Lejt;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, "item":Ljava/lang/Object;
    instance-of v5, v0, Lgts;

    if-nez v5, :cond_2

    .line 174
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :cond_0
    :goto_1
    return-object p2

    .line 120
    .end local v0    # "item":Ljava/lang/Object;
    .end local v4    # "viewHolder":Lejt$a;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lejt$a;

    .restart local v4    # "viewHolder":Lejt$a;
    goto :goto_0

    .restart local v0    # "item":Ljava/lang/Object;
    :cond_2
    move-object v1, v0

    .line 129
    check-cast v1, Lgts;

    .line 131
    .local v1, "orgMicroAPPObjectWrapper":Lgts;
    if-eqz v1, :cond_0

    .line 2100
    iget v5, v1, Lgts;->a:I

    if-ne v5, v6, :cond_4

    move v5, v6

    .line 132
    :goto_2
    if-eqz v5, :cond_6

    .line 133
    iget-object v5, v4, Lejt$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v5, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 134
    iget-object v8, v4, Lejt$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lgts;->b()Ljava/lang/String;

    move-result-object v9

    .line 3062
    iget-object v5, v1, Lgts;->b:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    if-nez v5, :cond_5

    const-string/jumbo v5, ""

    .line 134
    :goto_3
    check-cast p3, Landroid/widget/AbsListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {v8, v9, v5, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 135
    iget-object v5, v4, Lejt$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lgts;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_3
    :goto_4
    iget v5, p0, Lejt;->c:I

    if-ne v5, v6, :cond_8

    .line 142
    iget-object v5, p0, Lejt;->b:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lgts;->a(Landroid/content/Context;)Z

    move-result v2

    .line 143
    .local v2, "selected":Z
    if-eqz v2, :cond_7

    .line 144
    iget-object v5, v4, Lejt$a;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v5, v7}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 145
    iget-object v5, v4, Lejt$a;->b:Landroid/widget/TextView;

    iget-object v6, p0, Lejt;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1004d4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    :goto_5
    iget-object v5, v4, Lejt$a;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .end local v2    # "selected":Z
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_4
    move v5, v7

    .line 2100
    goto :goto_2

    .line 3062
    :cond_5
    iget-object v5, v1, Lgts;->b:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v5, v5, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgIcon:Ljava/lang/String;

    goto :goto_3

    .line 136
    :cond_6
    invoke-virtual {v1}, Lgts;->c()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 137
    iget-object v5, v4, Lejt$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 138
    iget-object v5, v4, Lejt$a;->b:Landroid/widget/TextView;

    .line 4041
    const-string/jumbo v8, ""

    .line 138
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 147
    .end local p3    # "parent":Landroid/view/ViewGroup;
    .restart local v2    # "selected":Z
    :cond_7
    iget-object v5, v4, Lejt$a;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v5, v11}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 148
    iget-object v5, v4, Lejt$a;->b:Landroid/widget/TextView;

    iget-object v6, p0, Lejt;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100480

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 152
    .end local v2    # "selected":Z
    :cond_8
    iget v5, p0, Lejt;->c:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_0

    .line 154
    invoke-static {}, Lelp;->a()Lelp;

    move-result-object v5

    invoke-virtual {v1}, Lgts;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Lelp;->a(Ljava/lang/Long;)I

    move-result v3

    .line 156
    .local v3, "unreadCount":I
    if-gtz v3, :cond_9

    .line 157
    iget-object v5, v4, Lejt$a;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    :goto_6
    iget-object v5, v4, Lejt$a;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v5, v11}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 158
    :cond_9
    const/16 v5, 0x64

    if-ge v3, v5, :cond_b

    .line 159
    iget-object v5, v4, Lejt$a;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    if-ne v3, v6, :cond_a

    .line 161
    iget-object v5, v4, Lejt$a;->d:Landroid/widget/TextView;

    iget-object v8, p0, Lejt;->b:Landroid/content/Context;

    const v9, 0x7f091cb4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v7

    invoke-virtual {v8, v9, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 163
    :cond_a
    iget-object v5, v4, Lejt$a;->d:Landroid/widget/TextView;

    iget-object v8, p0, Lejt;->b:Landroid/content/Context;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v8, v10, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 166
    :cond_b
    iget-object v5, v4, Lejt$a;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v5, v4, Lejt$a;->d:Landroid/widget/TextView;

    iget-object v8, p0, Lejt;->b:Landroid/content/Context;

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v9, "99+"

    aput-object v9, v6, v7

    invoke-virtual {v8, v10, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method
