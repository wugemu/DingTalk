.class public final Ldvm;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ExpandableGroupConversationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldvm$a;,
        Ldvm$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldvn;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "<red>(.+?)</red>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ldvm;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 77
    iput-object p1, p0, Ldvm;->b:Landroid/app/Activity;

    .line 78
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Ldvm;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 79
    return-void
.end method

.method static synthetic a(Ldvm;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Ldvm;

    .prologue
    .line 66
    iget-object v0, p0, Ldvm;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldvn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "mGroupList":Ljava/util/List;, "Ljava/util/List<Ldvn;>;"
    iput-object p1, p0, Ldvm;->c:Ljava/util/List;

    .line 83
    invoke-virtual {p0}, Ldvm;->notifyDataSetChanged()V

    .line 84
    return-void
.end method

.method public final getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 103
    iget-object v0, p0, Ldvm;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldvn;

    invoke-virtual {v0, p2}, Ldvn;->a(I)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    return-object v0
.end method

.method public final getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    int-to-long v0, p2

    return-wide v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    if-nez p4, :cond_6

    .line 148
    iget-object v7, p0, Ldvm;->b:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lctk$g;->group_item_layout:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 149
    new-instance v2, Ldvm$a;

    invoke-direct {v2, p0}, Ldvm$a;-><init>(Ldvm;)V

    .line 150
    .local v2, "groupHolder":Ldvm$a;
    sget v7, Lctk$f;->group_count:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Ldvm$a;->c:Landroid/widget/TextView;

    .line 151
    sget v7, Lctk$f;->group_title:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Ldvm$a;->a:Landroid/widget/TextView;

    .line 152
    sget v7, Lctk$f;->iv_group_tag:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v2, Ldvm$a;->b:Landroid/widget/ImageView;

    .line 153
    sget v7, Lctk$f;->session_icon:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v7, v2, Ldvm$a;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 155
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 159
    :goto_0
    iget-object v7, p0, Ldvm;->c:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldvn;

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ldvn;->a(I)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v1

    .line 161
    .local v1, "data":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iget-object v7, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 162
    iget-object v8, v2, Ldvm$a;->a:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    .line 1282
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1283
    sget-object v7, Ldvm;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 1284
    const/4 v7, 0x0

    .line 1285
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1286
    const/4 v7, 0x1

    invoke-virtual {v11, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 1288
    :cond_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 1289
    const-string/jumbo v11, "<red>(.+?)</red>"

    invoke-virtual {v9, v11, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1290
    invoke-virtual {v10, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1291
    invoke-virtual {v9, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 1292
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    .line 2017
    sget-object v12, Leda;->a:Landroid/content/Context;

    .line 1292
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lctk$c;->text_color_blue:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1294
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v9

    const/16 v12, 0x21

    invoke-virtual {v10, v11, v9, v7, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1301
    :goto_1
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :cond_1
    iget-object v7, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v7, :cond_8

    iget-object v7, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v7}, Ldjl;->C(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 165
    iget-object v7, v2, Ldvm$a;->c:Landroid/widget/TextView;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_2
    const/4 v3, 0x0

    .line 172
    .local v3, "hasGroupTagSettings":Z
    iget-object v7, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    invoke-static {v7}, Ldjl;->a(Ljava/util/Map;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2031
    invoke-static {}, Ldik$a;->a()Ldik;

    move-result-object v7

    .line 173
    iget-object v8, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ldik;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, "iconUrl":Ljava/lang/String;
    invoke-static {v5}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 175
    const/4 v3, 0x1

    .line 176
    iget-object v7, p0, Ldvm;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v8, v2, Ldvm$a;->b:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-interface {v7, v8, v5, v9}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 177
    iget-object v7, v2, Ldvm$a;->b:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    iget-object v7, v2, Ldvm$a;->a:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 182
    .end local v5    # "iconUrl":Ljava/lang/String;
    :cond_2
    if-nez v3, :cond_5

    .line 183
    iget-object v7, v2, Ldvm$a;->b:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    iget-object v7, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v8, "tag"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v8, "tag"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2150
    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v7

    .line 184
    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    :cond_3
    iget-object v7, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 185
    invoke-static {v7}, Ldjl;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v7}, Ldjl;->i(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 187
    :cond_4
    iget-object v7, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v7}, Ldjl;->u(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v6

    .line 188
    .local v6, "resource":I
    if-eqz v6, :cond_5

    .line 189
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 190
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 191
    iget-object v7, v2, Ldvm$a;->a:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v4, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 198
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "resource":I
    :cond_5
    :goto_3
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v7

    iget-object v8, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "icon":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 200
    iget-object v7, v2, Ldvm$a;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_4
    iget-object v7, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    iget-object v8, v2, Ldvm$a;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {v7, v8}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V

    .line 206
    new-instance v7, Ldvm$1;

    invoke-direct {v7, p0, v1}, Ldvm$1;-><init>(Ldvm;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    new-instance v7, Ldvm$2;

    invoke-direct {v7, p0, v1}, Ldvm$2;-><init>(Ldvm;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 273
    return-object p4

    .line 157
    .end local v1    # "data":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v2    # "groupHolder":Ldvm$a;
    .end local v3    # "hasGroupTagSettings":Z
    .end local v4    # "icon":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldvm$a;

    .restart local v2    # "groupHolder":Ldvm$a;
    goto/16 :goto_0

    .line 1295
    .restart local v1    # "data":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :catch_0
    move-exception v7

    .line 1296
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1299
    :cond_7
    invoke-virtual {v10, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    .line 167
    :cond_8
    iget-object v7, v2, Ldvm$a;->c:Landroid/widget/TextView;

    iget-object v8, p0, Ldvm;->b:Landroid/app/Activity;

    sget v9, Lctk$i;->member_count:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v13, "memberCount"

    .line 168
    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 167
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 194
    .restart local v3    # "hasGroupTagSettings":Z
    :cond_9
    iget-object v7, v2, Ldvm$a;->a:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 202
    .restart local v4    # "icon":Ljava/lang/String;
    :cond_a
    iget-object v7, v2, Ldvm$a;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v8, Lctk$e;->default_group_icon:I

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 203
    invoke-static {}, Ldjf;->a()Ldjf;

    move-result-object v7

    iget-object v8, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ldjf;->a(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public final getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 93
    iget-object v0, p0, Ldvm;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldvn;

    .line 1050
    iget-object v0, v0, Ldvn;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 93
    return v0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 98
    iget-object v0, p0, Ldvm;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Ldvm;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldvm;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    if-nez p3, :cond_1

    .line 125
    iget-object v2, p0, Ldvm;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lctk$g;->group_item_title_layout:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 126
    new-instance v1, Ldvm$b;

    invoke-direct {v1, p0}, Ldvm$b;-><init>(Ldvm;)V

    .line 127
    .local v1, "holder":Ldvm$b;
    sget v2, Lctk$f;->tv_title:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ldvm$b;->a:Landroid/widget/TextView;

    .line 128
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    :goto_0
    iget-object v2, p0, Ldvm;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldvn;

    .line 133
    .local v0, "component":Ldvn;
    if-eqz v0, :cond_0

    .line 134
    iget-object v2, v1, Ldvm$b;->a:Landroid/widget/TextView;

    iget-object v3, v0, Ldvn;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/view/View;->setClickable(Z)V

    .line 137
    return-object p3

    .line 130
    .end local v0    # "component":Ldvn;
    .end local v1    # "holder":Ldvm$b;
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldvm$b;

    .restart local v1    # "holder":Ldvm$b;
    goto :goto_0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Ldvm;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldvm;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
