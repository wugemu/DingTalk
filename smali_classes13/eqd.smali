.class public Leqd;
.super Lemv;
.source "ChatMsgSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leqd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lemv",
        "<",
        "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String;


# instance fields
.field public d:Lenx;

.field public e:Landroid/os/Bundle;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Leqd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leqd;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lemv;-><init>(Landroid/app/Activity;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Leqd;->h:Z

    .line 71
    return-void
.end method

.method static synthetic a(Leqd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Leqd;

    .prologue
    .line 42
    iget-object v0, p0, Leqd;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Leqd;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Leqd;

    .prologue
    .line 42
    iget-object v0, p0, Leqd;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Leqd;)J
    .locals 2
    .param p0, "x0"    # Leqd;

    .prologue
    .line 42
    iget-wide v0, p0, Leqd;->i:J

    return-wide v0
.end method

.method static synthetic d(Leqd;)Lenx;
    .locals 1
    .param p0, "x0"    # Leqd;

    .prologue
    .line 42
    iget-object v0, p0, Leqd;->d:Lenx;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;JLenx;Landroid/os/Bundle;Z)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "uid"    # J
    .param p4, "visiableListener"    # Lenx;
    .param p5, "fragmentArgs"    # Landroid/os/Bundle;
    .param p6, "showCreateTime"    # Z

    .prologue
    .line 58
    iput-wide p2, p0, Leqd;->i:J

    .line 59
    iput-object p1, p0, Leqd;->f:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Leqd;->d:Lenx;

    .line 61
    iput-object p5, p0, Leqd;->e:Landroid/os/Bundle;

    .line 62
    iput-boolean p6, p0, Leqd;->h:Z

    .line 63
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    iput-object p1, p0, Leqd;->a:Ljava/util/List;

    .line 76
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    .local p2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Leqd;->a:Ljava/util/List;

    .line 80
    iput-object p2, p0, Leqd;->g:Ljava/util/HashMap;

    .line 81
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    if-nez p2, :cond_6

    .line 87
    new-instance v3, Leqd$a;

    invoke-direct {v3, p0}, Leqd$a;-><init>(Leqd;)V

    .line 88
    .local v3, "groupHolder":Leqd$a;
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v7

    iget-object v8, p0, Leqd;->b:Landroid/app/Activity;

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 89
    iget-object v7, p0, Leqd;->b:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lemt$f;->search_item_chat2:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 90
    sget v7, Lemt$e;->layout_session_content:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    iput-object v7, v3, Leqd$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    .line 95
    :goto_0
    sget v7, Lemt$e;->session_icon:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v7, v3, Leqd$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 96
    sget v7, Lemt$e;->session_title:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v3, Leqd$a;->b:Landroid/widget/TextView;

    .line 98
    sget v7, Lemt$e;->tv_create_time:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v3, Leqd$a;->d:Landroid/widget/TextView;

    .line 99
    sget v7, Lemt$e;->group_divider:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v3, Leqd$a;->e:Landroid/view/View;

    .line 100
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    :goto_1
    invoke-virtual {p0, p1}, Leqd;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 106
    .local v4, "object":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    invoke-static {v4}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/util/List;

    move-result-object v6

    .line 107
    .local v6, "userIconObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/SearchUserIconObject;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_7

    .line 108
    iget-object v7, v3, Leqd$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 1196
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :cond_0
    :goto_2
    iget-object v7, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    if-nez v7, :cond_1

    .line 1199
    iget-object v7, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v8, "title"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1200
    const/4 v8, 0x0

    .line 1201
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1202
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v8

    iget-object v7, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v9, "cid"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1209
    :goto_3
    iget-object v8, p0, Leqd;->g:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 1210
    if-eqz v7, :cond_1

    .line 1214
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1215
    new-instance v10, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    invoke-direct {v10}, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;-><init>()V

    .line 1216
    const-string/jumbo v8, "avatarMediaId"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->mediaId:Ljava/lang/String;

    .line 1217
    const-string/jumbo v8, "nick"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->nick:Ljava/lang/String;

    .line 1218
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    iput-object v9, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    .line 1220
    const-string/jumbo v8, "nick"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    .line 116
    :cond_1
    iget-object v7, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 117
    iget-object v7, v3, Leqd$a;->b:Landroid/widget/TextView;

    iget-object v8, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_2
    iget-object v7, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->content:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 120
    const/4 v7, 0x0

    iget-object v8, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->content:Ljava/lang/String;

    .line 2187
    iget-object v9, p0, Leqd;->b:Landroid/app/Activity;

    invoke-static {v9, v8}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_3
    iget-boolean v7, p0, Leqd;->h:Z

    if-eqz v7, :cond_9

    .line 124
    :try_start_0
    iget-object v7, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v8, "createdAt"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 125
    .local v0, "createAt":J
    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-eqz v7, :cond_4

    .line 126
    iget-object v7, v3, Leqd$a;->d:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v0, v1, v8, v9}, Lcog;->a(JZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v7, v3, Leqd$a;->d:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    .end local v0    # "createAt":J
    :cond_4
    :goto_4
    new-instance v7, Leqd$1;

    invoke-direct {v7, p0, v4}, Leqd$1;-><init>(Leqd;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    invoke-virtual {p2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    invoke-virtual {p0}, Leqd;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne p1, v7, :cond_a

    .line 179
    iget-object v7, v3, Leqd$a;->e:Landroid/view/View;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :goto_5
    return-object p2

    .line 92
    .end local v4    # "object":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v6    # "userIconObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/SearchUserIconObject;>;"
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_5
    iget-object v7, p0, Leqd;->b:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lemt$f;->search_item_chat:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 102
    .end local v3    # "groupHolder":Leqd$a;
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leqd$a;

    .restart local v3    # "groupHolder":Leqd$a;
    goto/16 :goto_1

    .line 109
    .restart local v4    # "object":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .restart local v6    # "userIconObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/SearchUserIconObject;>;"
    :cond_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 110
    iget-object v7, v3, Leqd$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 111
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/search/SearchUserIconObject;

    .line 112
    .local v5, "userIconObject":Lcom/alibaba/android/search/SearchUserIconObject;
    iget-object v7, v3, Leqd$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    check-cast p3, Landroid/widget/AbsListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-static {v7, v5, p3}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Lcom/alibaba/android/search/SearchUserIconObject;Landroid/widget/AbsListView;)V

    goto/16 :goto_2

    .line 1205
    .end local v5    # "userIconObject":Lcom/alibaba/android/search/SearchUserIconObject;
    :cond_8
    :try_start_1
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto/16 :goto_3

    :catch_0
    move-exception v7

    move-object v7, v8

    goto/16 :goto_3

    .line 129
    :catch_1
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_4

    .line 133
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9
    iget-object v7, v3, Leqd$a;->d:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 181
    :cond_a
    iget-object v7, v3, Leqd$a;->e:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method
