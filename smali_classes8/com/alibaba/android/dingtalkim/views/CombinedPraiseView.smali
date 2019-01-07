.class public Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;
.super Landroid/widget/FrameLayout;
.source "CombinedPraiseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;,
        Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$ViewParamsBuild;,
        Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;,
        Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$a;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;

.field public b:I

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

.field private e:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$a;

.field private f:Landroid/widget/AbsListView;

.field private g:Lcom/alibaba/doraemon/image/ImageMagician;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->c:Ljava/util/List;

    .line 157
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$1;-><init>(Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->h:Landroid/view/View$OnClickListener;

    .line 70
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->g:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 71
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$ViewParamsBuild;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$ViewParamsBuild;-><init>(Landroid/content/Context;)V

    .line 1343
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$ViewParamsBuild;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;

    .line 71
    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;)Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->e:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$a;

    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 219
    .local p1, "viewHolders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 224
    .local v2, "pullUserProfiles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;

    .line 225
    .local v0, "displayViewHolder":Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;
    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v5, :cond_2

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->c:Lcom/alibaba/wukong/im/Message;

    if-eqz v5, :cond_2

    .line 226
    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->c:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 230
    .end local v0    # "displayViewHolder":Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;
    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 231
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 232
    .local v3, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v1, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$2;

    invoke-direct {v1, p0, v2, p1}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$2;-><init>(Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;Ljava/util/Map;Ljava/util/List;)V

    .line 261
    .local v1, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_4

    .line 262
    const-class v5, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-static {v1, v5, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    check-cast v1, Lcma;

    .line 264
    .restart local v1    # "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v1, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;)Lcom/alibaba/doraemon/image/ImageMagician;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->g:Lcom/alibaba/doraemon/image/ImageMagician;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;)Landroid/widget/AbsListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->f:Landroid/widget/AbsListView;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;IIZ)V
    .locals 14
    .param p2, "startIndex"    # I
    .param p3, "count"    # I
    .param p4, "requestLayoutInner"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;IIZ)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 170
    .local p1, "praiseMsgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    if-lez p3, :cond_0

    if-gez p2, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    add-int v1, p2, p3

    .line 174
    .local v1, "endIndex":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v6, "needPullProfileHolders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;>;"
    move/from16 v3, p2

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_7

    .line 177
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 178
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/Message;

    .line 179
    .local v5, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v5, :cond_3

    .line 183
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lctk$g;->view_combine_praise_item:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 184
    .local v0, "childView":Landroid/view/View;
    sget v8, Lctk$f;->avatar:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 185
    .local v4, "imgAvatarView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    sget v8, Lctk$f;->img_praise_thumb:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 188
    .local v7, "praiseThumbView":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 189
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->c:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;

    .line 194
    .local v2, "holder":Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;
    :goto_2
    iput-object v4, v2, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 195
    iput-object v7, v2, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->b:Landroid/widget/ImageView;

    .line 196
    iget-object v8, v2, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->c:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 197
    iput-object v5, v2, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->c:Lcom/alibaba/wukong/im/Message;

    .line 199
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v8

    iput-object v8, v2, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 201
    iget-object v8, v2, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v8, :cond_5

    .line 202
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 207
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;

    .line 2305
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v9, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->a:I

    iget v11, v9, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->b:I

    invoke-direct {v8, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2306
    iget v10, v9, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->c:I

    if-nez v10, :cond_6

    .line 208
    :goto_4
    const/4 v9, 0x1

    invoke-virtual {p0, v0, v3, v8, v9}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 176
    .end local v0    # "childView":Landroid/view/View;
    .end local v2    # "holder":Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;
    .end local v4    # "imgAvatarView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .end local v5    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v7    # "praiseThumbView":Landroid/widget/ImageView;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 191
    .restart local v0    # "childView":Landroid/view/View;
    .restart local v4    # "imgAvatarView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .restart local v5    # "message":Lcom/alibaba/wukong/im/Message;
    .restart local v7    # "praiseThumbView":Landroid/widget/ImageView;
    :cond_4
    new-instance v2, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;

    const/4 v8, 0x0

    invoke-direct {v2, p0, v8}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;-><init>(Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;B)V

    .line 192
    .restart local v2    # "holder":Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->c:Ljava/util/List;

    invoke-interface {v8, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 204
    :cond_5
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->a()V

    goto :goto_3

    .line 2309
    :cond_6
    iget v10, v9, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->c:I

    div-int v10, v3, v10

    .line 2310
    iget v11, v9, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->c:I

    rem-int v11, v3, v11

    .line 2311
    iget v12, v9, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->f:I

    iget v13, v9, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->a:I

    mul-int/2addr v11, v13

    add-int/2addr v11, v12

    iput v11, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2312
    iget v9, v9, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->b:I

    mul-int/2addr v9, v10

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    .line 211
    .end local v0    # "childView":Landroid/view/View;
    .end local v2    # "holder":Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;
    .end local v4    # "imgAvatarView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .end local v5    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v7    # "praiseThumbView":Landroid/widget/ImageView;
    :cond_7
    if-eqz p4, :cond_8

    .line 212
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->requestLayout()V

    .line 213
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->invalidate()V

    .line 215
    :cond_8
    invoke-direct {p0, v6}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->a(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->d:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->d:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->d:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->b:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    sget-object v1, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;->EXPAND:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayPraises()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->d:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->d:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->b:I

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public setListener(Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$a;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->e:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$a;

    .line 93
    return-void
.end method

.method public setParent(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AbsListView;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->f:Landroid/widget/AbsListView;

    .line 58
    return-void
.end method

.method public setViewParams(Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;)V
    .locals 0
    .param p1, "params"    # Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;

    .line 78
    :cond_0
    return-void
.end method
