.class public abstract Lcxg;
.super Ljava/lang/Object;
.source "SessionItemHolder.java"


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:Z

.field protected a:Landroid/view/View;

.field public b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public c:Lcom/alibaba/android/dingtalkim/views/DDTextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/ImageView;

.field public h:Landroid/widget/ImageView;

.field public i:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

.field public j:Landroid/view/View;

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public m:Ljava/lang/String;

.field public n:Landroid/widget/AbsListView;

.field protected o:Landroid/view/View;

.field protected p:Landroid/view/View;

.field protected q:Landroid/app/Activity;

.field protected r:Lcxi;

.field s:I

.field protected t:I

.field protected u:Landroid/widget/ImageView;

.field protected v:Landroid/widget/ImageView;

.field protected w:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected x:Lcom/alibaba/doraemon/image/ImageMagician;

.field protected y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation
.end field

.field protected z:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/AbsListView;Lcxi;Ljava/util/List;)V
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/widget/AbsListView;
    .param p3, "listener"    # Lcxi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/widget/AbsListView;",
            "Lcxi;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcxg;-><init>(Landroid/app/Activity;Landroid/widget/AbsListView;Lcxi;Ljava/util/List;Z)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/widget/AbsListView;Lcxi;Ljava/util/List;Z)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/widget/AbsListView;
    .param p3, "listener"    # Lcxi;
    .param p5, "showBottomLine"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/widget/AbsListView;",
            "Lcxi;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcxg;->q:Landroid/app/Activity;

    .line 100
    iput-object p2, p0, Lcxg;->n:Landroid/widget/AbsListView;

    .line 101
    iput-object p3, p0, Lcxg;->r:Lcxi;

    .line 102
    iput-object p4, p0, Lcxg;->y:Ljava/util/List;

    .line 103
    iput-boolean p5, p0, Lcxg;->A:Z

    .line 104
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcxg;->x:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 106
    invoke-static {}, Lcms;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcxg;->G:Z

    .line 107
    return-void
.end method

.method private static a(Landroid/widget/ImageView;I)I
    .locals 5
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "roughValue"    # I

    .prologue
    .line 587
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 588
    :cond_0
    const/4 p1, 0x0

    .line 606
    .end local p1    # "roughValue":I
    :cond_1
    :goto_0
    return p1

    .line 590
    .restart local p1    # "roughValue":I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 591
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 594
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 595
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    .line 596
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    .line 598
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_3

    .line 599
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 600
    .local v1, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v1, :cond_3

    .line 601
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    .line 602
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    .end local v1    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    move p1, v2

    .line 606
    goto :goto_0
.end method

.method private d()Landroid/widget/ImageView;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 440
    iget-object v1, p0, Lcxg;->w:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcxg;->a:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lcxg;->a:Landroid/view/View;

    sget v2, Lctk$f;->stub_session_remind:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 442
    .local v0, "viewStub":Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcxg;->w:Landroid/widget/ImageView;

    .line 446
    .end local v0    # "viewStub":Landroid/view/ViewStub;
    :cond_0
    iget-object v1, p0, Lcxg;->w:Landroid/widget/ImageView;

    return-object v1
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public final a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    invoke-virtual {p0}, Lcxg;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcxg;->a:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcxg;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcxg;->a(Landroid/view/View;)V

    .line 127
    iget-object v0, p0, Lcxg;->a:Landroid/view/View;

    return-object v0
.end method

.method public final a(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 518
    iput p1, p0, Lcxg;->t:I

    .line 519
    return-void
.end method

.method protected abstract a(Landroid/view/View;)V
.end method

.method protected abstract a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
.end method

.method public b()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 12
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 191
    if-eqz p1, :cond_0

    iget-object v7, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v7, :cond_1

    .line 3613
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v7, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    iget-object v7, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_12

    .line 196
    :cond_2
    iget-object v7, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    if-eqz v7, :cond_11

    iget-object v7, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_11

    iget-object v7, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 197
    iget-object v7, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    iget-object v6, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->name:Ljava/lang/String;

    .line 204
    .local v6, "title":Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lcxg;->d:Landroid/widget/TextView;

    if-eqz v7, :cond_3

    .line 205
    iget-object v7, p0, Lcxg;->d:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :cond_3
    invoke-virtual {p0, p1}, Lcxg;->f(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 209
    iget-object v8, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 1548
    const/4 v7, 0x0

    .line 1549
    if-eqz v8, :cond_5

    .line 1550
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v7

    invoke-virtual {v7, v8}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v7

    .line 1551
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_4

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    .line 1552
    :cond_4
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0x4

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    .line 1553
    const/4 v7, 0x0

    .line 1561
    :cond_5
    iget-object v8, p0, Lcxg;->u:Landroid/widget/ImageView;

    if-eqz v8, :cond_6

    .line 1562
    iget-object v8, p0, Lcxg;->u:Landroid/widget/ImageView;

    if-eqz v7, :cond_13

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    :cond_6
    iget-object v7, p0, Lcxg;->h:Landroid/widget/ImageView;

    if-eqz v7, :cond_8

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "hasGroupTagSettings":Z
    iget-object v7, p0, Lcxg;->h:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 213
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v7}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2031
    invoke-static {}, Ldik$a;->a()Ldik;

    move-result-object v7

    .line 214
    iget-object v8, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v7, v8}, Ldik;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "imageUrl":Ljava/lang/String;
    invoke-static {v1}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 216
    iget-object v7, p0, Lcxg;->x:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v8, p0, Lcxg;->h:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-interface {v7, v8, v1, v9}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 217
    iget-boolean v7, p0, Lcxg;->G:Z

    if-eqz v7, :cond_14

    .line 218
    iget-object v7, p0, Lcxg;->q:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lctk$d;->im_group_tag_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 219
    iget-object v7, p0, Lcxg;->q:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lctk$d;->im_group_tag_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 224
    :goto_3
    iget-object v7, p0, Lcxg;->h:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    iget-object v7, p0, Lcxg;->h:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    const/4 v0, 0x1

    .line 229
    .end local v1    # "imageUrl":Ljava/lang/String;
    :cond_7
    if-nez v0, :cond_8

    .line 230
    const/4 v7, -0x2

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 231
    const/4 v7, -0x2

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 232
    iget-object v7, p0, Lcxg;->h:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object v7, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-nez v7, :cond_15

    .line 236
    iget-object v7, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v7}, Ldjl;->v(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v4

    .line 240
    .local v4, "resource":I
    :goto_4
    if-eqz v4, :cond_16

    .line 241
    iget-object v7, p0, Lcxg;->h:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    iget-object v7, p0, Lcxg;->h:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    .end local v0    # "hasGroupTagSettings":Z
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "resource":I
    :cond_8
    :goto_5
    iget-object v8, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 2275
    iget-object v7, p0, Lcxg;->i:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    if-eqz v7, :cond_a

    .line 2278
    const/4 v7, 0x0

    .line 2279
    if-eqz v8, :cond_9

    invoke-static {v8}, Ldza;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2280
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v8

    .line 2281
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_9

    .line 2282
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v7

    .line 2285
    :cond_9
    iget-object v8, p0, Lcxg;->i:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    invoke-static {v8, v7}, Ldjl;->a(Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Z

    .line 249
    :cond_a
    iget-object v7, p0, Lcxg;->e:Landroid/widget/TextView;

    if-eqz v7, :cond_d

    .line 250
    const/4 v5, 0x0

    .line 251
    .local v5, "showOnlineTips":Z
    iget-object v7, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 3105
    invoke-static {v7}, Libb;->i(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v7

    .line 251
    if-nez v7, :cond_b

    iget-object v7, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 3114
    invoke-static {v7}, Libb;->h(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v7

    .line 252
    if-eqz v7, :cond_c

    .line 253
    :cond_b
    iget-object v7, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v7}, Ldwz;->a(Lcom/alibaba/wukong/im/Conversation;)Ldwz;

    move-result-object v3

    .line 254
    .local v3, "object":Ldwz;
    if-eqz v3, :cond_c

    const/4 v7, 0x1

    iget v8, v3, Ldwz;->c:I

    if-ne v7, v8, :cond_c

    .line 255
    const/4 v5, 0x1

    .line 256
    iget-object v7, p0, Lcxg;->e:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object v7, p0, Lcxg;->e:Landroid/widget/TextView;

    sget v8, Lctk$i;->dt_im_chat_recently_active:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 260
    .end local v3    # "object":Ldwz;
    :cond_c
    if-nez v5, :cond_d

    .line 261
    iget-object v7, p0, Lcxg;->e:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3610
    .end local v5    # "showOnlineTips":Z
    :cond_d
    iget-object v8, p0, Lcxg;->q:Landroid/app/Activity;

    .line 4567
    if-eqz v8, :cond_e

    iget-object v7, p0, Lcxg;->o:Landroid/view/View;

    if-nez v7, :cond_17

    .line 3612
    :cond_e
    :goto_6
    iget-object v7, p0, Lcxg;->d:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    iget v7, p0, Lcxg;->E:I

    if-lez v7, :cond_0

    .line 3616
    iget v7, p0, Lcxg;->E:I

    .line 3618
    iget-object v8, p0, Lcxg;->u:Landroid/widget/ImageView;

    iget v9, p0, Lcxg;->B:I

    invoke-static {v8, v9}, Lcxg;->a(Landroid/widget/ImageView;I)I

    move-result v8

    sub-int/2addr v7, v8

    .line 3619
    iget-object v8, p0, Lcxg;->h:Landroid/widget/ImageView;

    iget v9, p0, Lcxg;->C:I

    invoke-static {v8, v9}, Lcxg;->a(Landroid/widget/ImageView;I)I

    move-result v8

    sub-int/2addr v7, v8

    .line 3621
    iget-object v8, p0, Lcxg;->i:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcxg;->i:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_f

    .line 3622
    iget v8, p0, Lcxg;->D:I

    sub-int/2addr v7, v8

    .line 3624
    :cond_f
    iget-object v8, p0, Lcxg;->e:Landroid/widget/TextView;

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcxg;->e:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_10

    .line 3625
    iget v8, p0, Lcxg;->F:I

    sub-int/2addr v7, v8

    .line 3628
    :cond_10
    if-lez v7, :cond_0

    .line 3629
    iget-object v8, p0, Lcxg;->d:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_0

    .line 199
    .end local v6    # "title":Ljava/lang/String;
    :cond_11
    iget-object v7, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "title":Ljava/lang/String;
    goto/16 :goto_1

    .line 202
    .end local v6    # "title":Ljava/lang/String;
    :cond_12
    iget-object v7, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "title":Ljava/lang/String;
    goto/16 :goto_1

    .line 1562
    :cond_13
    const/16 v7, 0x8

    goto/16 :goto_2

    .line 221
    .restart local v0    # "hasGroupTagSettings":Z
    .restart local v1    # "imageUrl":Ljava/lang/String;
    .restart local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_14
    iget-object v7, p0, Lcxg;->q:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lctk$d;->im_group_tag_size_for_global:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 222
    iget-object v7, p0, Lcxg;->q:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lctk$d;->im_group_tag_size_for_global:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto/16 :goto_3

    .line 238
    .end local v1    # "imageUrl":Ljava/lang/String;
    :cond_15
    iget-object v7, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v7}, Ldjl;->u(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v4

    .restart local v4    # "resource":I
    goto/16 :goto_4

    .line 244
    :cond_16
    iget-object v7, p0, Lcxg;->h:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 4570
    .end local v0    # "hasGroupTagSettings":Z
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "resource":I
    :cond_17
    iget v7, p0, Lcxg;->E:I

    if-gtz v7, :cond_e

    .line 4574
    iget-object v7, p0, Lcxg;->o:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_e

    .line 4575
    iget-object v7, p0, Lcxg;->o:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4576
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 4577
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v9, v10

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v7, v9, v7

    iput v7, p0, Lcxg;->E:I

    .line 4579
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lctk$d;->safe_icon_width:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcxg;->B:I

    .line 4580
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lctk$d;->dd_status_min_width:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcxg;->D:I

    .line 4581
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lctk$d;->enterprise_icon_width:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcxg;->C:I

    .line 4582
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lctk$d;->im_session_online_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcxg;->F:I

    goto/16 :goto_6
.end method

.method public final c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 171
    iget-object v1, p0, Lcxg;->p:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 172
    iget v1, p0, Lcxg;->t:I

    iget-object v2, p0, Lcxg;->y:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 173
    iget-object v1, p0, Lcxg;->y:Ljava/util/List;

    iget v2, p0, Lcxg;->t:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 174
    .local v0, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->displayType:I

    if-ne v1, v4, :cond_1

    .line 175
    iget-object v1, p0, Lcxg;->p:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 183
    .end local v0    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_0
    :goto_0
    return-void

    .line 177
    .restart local v0    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_1
    iget-object v1, p0, Lcxg;->p:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 180
    .end local v0    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_2
    iget-object v1, p0, Lcxg;->p:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public abstract c(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
.end method

.method public final d(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 4
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    iget-object v0, p0, Lcxg;->l:Landroid/view/View;

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcxg;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcxg;->l:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final e(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 8
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 154
    iget-object v1, p0, Lcxg;->f:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 162
    .local v0, "latestMessage":Lcom/alibaba/wukong/im/Message;
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->getLastModify()J

    move-result-wide v2

    .line 163
    .local v2, "showTime":J
    cmp-long v1, v2, v6

    if-gtz v1, :cond_2

    .line 164
    if-nez v0, :cond_3

    .line 166
    :cond_2
    :goto_1
    iget-object v5, p0, Lcxg;->f:Landroid/widget/TextView;

    cmp-long v1, v2, v6

    if-gtz v1, :cond_4

    const/4 v1, 0x4

    :goto_2
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v1, p0, Lcxg;->f:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcog;->a(JZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 164
    :cond_3
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    goto :goto_1

    :cond_4
    move v1, v4

    .line 166
    goto :goto_2
.end method

.method protected f(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 0
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 271
    return-void
.end method

.method public final g(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 12
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v10, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 294
    iget-object v4, p0, Lcxg;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-nez v4, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v4, p0, Lcxg;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v4, v8, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 301
    iget-object v4, p0, Lcxg;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v4, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 303
    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 304
    :cond_2
    iget-object v4, p0, Lcxg;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v4, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 305
    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 306
    .local v2, "receiverUid":J
    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 307
    invoke-static {v4}, Ldyq;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 308
    :cond_3
    iget-object v4, p0, Lcxg;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 5366
    sget v5, Lctk$e;->secret_chat_icon_boss2:I

    .line 308
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    goto :goto_0

    .line 310
    :cond_4
    iget-object v4, p0, Lcxg;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcxg;->n:Landroid/widget/AbsListView;

    invoke-virtual {v4, v5, v8, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 315
    .end local v2    # "receiverUid":J
    :cond_5
    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 316
    .restart local v2    # "receiverUid":J
    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-eqz v4, :cond_6

    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 317
    invoke-static {v4}, Ldyq;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 318
    :cond_6
    iget-object v4, p0, Lcxg;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v4, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setBurnChat(Z)V

    .line 319
    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 320
    iget-object v4, p0, Lcxg;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v5, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6366
    sget v5, Lctk$e;->secret_chat_icon_boss2:I

    .line 320
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 322
    :cond_7
    iget-object v4, p0, Lcxg;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 7366
    sget v5, Lctk$e;->secret_chat_icon_boss2:I

    .line 322
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 325
    :cond_8
    iget-object v4, p0, Lcxg;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v4, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setBurnChat(Z)V

    .line 326
    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 327
    iget-object v5, p0, Lcxg;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    iget-object v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->nick:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->mediaId:Ljava/lang/String;

    iget-object v7, p0, Lcxg;->n:Landroid/widget/AbsListView;

    invoke-virtual {v5, v6, v4, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto/16 :goto_0

    .line 329
    :cond_9
    iget-object v4, p0, Lcxg;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcxg;->n:Landroid/widget/AbsListView;

    invoke-virtual {v4, v5, v8, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto/16 :goto_0

    .line 332
    .end local v2    # "receiverUid":J
    :cond_a
    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    .line 333
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v4

    iget-object v5, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "icon":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 335
    iget-object v4, p0, Lcxg;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v4, v8, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 337
    :cond_b
    iget-object v4, p0, Lcxg;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v5, Lctk$e;->default_group_icon:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 338
    invoke-static {}, Ldjf;->a()Ldjf;

    move-result-object v4

    iget-object v5, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ldjf;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 340
    .end local v0    # "icon":Ljava/lang/String;
    :cond_c
    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 341
    iget-object v4, p0, Lcxg;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 8233
    iput v7, v4, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b:I

    .line 342
    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 343
    .restart local v2    # "receiverUid":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    .line 344
    .local v1, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-nez v4, :cond_e

    .line 345
    iget-object v4, p0, Lcxg;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v4, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setBurnChat(Z)V

    .line 346
    if-eqz v1, :cond_d

    .line 347
    iget-object v4, p0, Lcxg;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 8366
    sget v5, Lctk$e;->secret_chat_icon_boss2:I

    .line 347
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 349
    :cond_d
    iget-object v4, p0, Lcxg;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 9366
    sget v5, Lctk$e;->secret_chat_icon_boss2:I

    .line 349
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 352
    :cond_e
    iget-object v4, p0, Lcxg;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v4, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setBurnChat(Z)V

    .line 353
    if-eqz v1, :cond_f

    .line 354
    iget-object v4, p0, Lcxg;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iget-object v7, p0, Lcxg;->n:Landroid/widget/AbsListView;

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto/16 :goto_0

    .line 356
    :cond_f
    iget-object v4, p0, Lcxg;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcxg;->n:Landroid/widget/AbsListView;

    invoke-virtual {v4, v5, v8, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto/16 :goto_0
.end method

.method final h(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 8
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 378
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v4, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v4, p0, Lcxg;->c:Lcom/alibaba/android/dingtalkim/views/DDTextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcxg;->g:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcxg;->k:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 385
    iget-object v4, p0, Lcxg;->w:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 387
    iget-object v4, p0, Lcxg;->w:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 389
    :cond_2
    iget-object v4, p0, Lcxg;->c:Lcom/alibaba/android/dingtalkim/views/DDTextView;

    invoke-virtual {v4, v7}, Lcom/alibaba/android/dingtalkim/views/DDTextView;->setVisibility(I)V

    .line 390
    iget-object v4, p0, Lcxg;->g:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 391
    iget-object v4, p0, Lcxg;->k:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 393
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 394
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v3

    .line 395
    .local v3, "unreadCount":I
    invoke-static {v0}, Ldez;->a(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    move-result-object v2

    .line 396
    .local v2, "sessionNotifyEnum":Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;
    sget-object v4, Lcxg$2;->a:[I

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 9450
    :cond_3
    :goto_1
    :pswitch_0
    sget-object v4, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->CHAT_GUIDE:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    if-eq v2, v4, :cond_4

    sget-object v4, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->BIRTH_DAY:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    if-ne v2, v4, :cond_0

    .line 9451
    :cond_4
    invoke-static {}, Lcnr;->a()Lcnr;

    move-result-object v4

    new-instance v5, Lcxg$1;

    invoke-direct {v5, p0, v2}, Lcxg$1;-><init>(Lcxg;Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;)V

    invoke-virtual {v4, v5}, Lcnr;->a(Lcnq;)V

    goto :goto_0

    .line 402
    :pswitch_1
    const/16 v4, 0x63

    if-le v3, v4, :cond_5

    .line 403
    iget-object v4, p0, Lcxg;->c:Lcom/alibaba/android/dingtalkim/views/DDTextView;

    const-string/jumbo v5, "99+"

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkim/views/DDTextView;->setText(Ljava/lang/String;)V

    .line 407
    :goto_2
    iget-object v4, p0, Lcxg;->c:Lcom/alibaba/android/dingtalkim/views/DDTextView;

    invoke-virtual {v4, v6}, Lcom/alibaba/android/dingtalkim/views/DDTextView;->setVisibility(I)V

    goto :goto_1

    .line 405
    :cond_5
    iget-object v4, p0, Lcxg;->c:Lcom/alibaba/android/dingtalkim/views/DDTextView;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkim/views/DDTextView;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 410
    :pswitch_2
    invoke-direct {p0}, Lcxg;->d()Landroid/widget/ImageView;

    .line 411
    invoke-static {v0}, Ldez;->b(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/models/RemindIconModel;

    move-result-object v1

    .line 412
    .local v1, "model":Lcom/alibaba/android/dingtalkim/models/RemindIconModel;
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcxg;->w:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    .line 413
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/models/RemindIconModel;->mediaId:Ljava/lang/String;

    iget-object v5, p0, Lcxg;->w:Landroid/widget/ImageView;

    invoke-static {v4, v5}, Ldmm;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 414
    iget-object v4, p0, Lcxg;->w:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 418
    .end local v1    # "model":Lcom/alibaba/android/dingtalkim/models/RemindIconModel;
    :pswitch_3
    invoke-direct {p0}, Lcxg;->d()Landroid/widget/ImageView;

    .line 419
    iget-object v4, p0, Lcxg;->w:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    .line 420
    iget-object v4, p0, Lcxg;->w:Landroid/widget/ImageView;

    sget v5, Lctk$e;->im_drawable_wave_say_hello:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 421
    iget-object v4, p0, Lcxg;->w:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 425
    :pswitch_4
    if-lez v3, :cond_6

    .line 427
    iget-object v4, p0, Lcxg;->g:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 431
    :goto_3
    iget-object v4, p0, Lcxg;->k:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 429
    :cond_6
    iget-object v4, p0, Lcxg;->g:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 396
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final i(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 0
    .param p1, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 522
    iput-object p1, p0, Lcxg;->z:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 523
    return-void
.end method
