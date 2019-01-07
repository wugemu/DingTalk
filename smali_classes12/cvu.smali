.class public Lcvu;
.super Lcqr;
.source "GroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcvu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcqr",
        "<",
        "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String;

.field private static final h:Ljava/util/regex/Pattern;


# instance fields
.field public e:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

.field public f:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

.field public g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcvu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcvu;->d:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "<red>(.+?)</red>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcvu;->h:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcqr;-><init>(Landroid/app/Activity;)V

    .line 51
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcvu;->i:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 52
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 3116
    invoke-static {p1}, Ldjl;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v0

    .line 38
    return-object v0
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z
    .locals 1
    .param p1, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 69
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcvu;->f:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcvu;->f:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isDisable(Ljava/lang/Object;)Z

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)V
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
    .line 60
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    iput-object p1, p0, Lcvu;->a:Ljava/util/List;

    .line 61
    return-void
.end method

.method public final b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z
    .locals 1
    .param p1, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 77
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcvu;->f:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcvu;->f:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isHasSelected(Ljava/lang/Object;)Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    if-nez p2, :cond_8

    .line 152
    iget-object v8, p0, Lcvu;->b:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lctk$g;->group_item_layout:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 153
    new-instance v3, Lcvu$a;

    invoke-direct {v3, p0}, Lcvu$a;-><init>(Lcvu;)V

    .line 154
    .local v3, "groupHolder":Lcvu$a;
    sget v8, Lctk$f;->group_count:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcvu$a;->c:Landroid/widget/TextView;

    .line 155
    sget v8, Lctk$f;->group_title:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcvu$a;->a:Landroid/widget/TextView;

    .line 156
    sget v8, Lctk$f;->iv_group_tag:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcvu$a;->b:Landroid/widget/ImageView;

    .line 157
    sget v8, Lctk$f;->session_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v8, v3, Lcvu$a;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 158
    sget v8, Lctk$f;->cell_checkbox:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, v3, Lcvu$a;->e:Landroid/widget/CheckBox;

    .line 160
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 164
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcvu;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 165
    .local v2, "data":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iget-object v8, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 166
    iget-object v9, v3, Lcvu$a;->a:Landroid/widget/TextView;

    iget-object v10, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    .line 1120
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1121
    sget-object v8, Lcvu;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 1122
    const/4 v8, 0x0

    .line 1123
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1124
    const/4 v8, 0x1

    invoke-virtual {v12, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 1126
    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 1127
    const-string/jumbo v12, "<red>(.+?)</red>"

    invoke-virtual {v10, v12, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1128
    invoke-virtual {v11, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1129
    invoke-virtual {v10, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 1130
    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    iget-object v13, p0, Lcvu;->b:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lctk$c;->text_color_blue:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-direct {v12, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1132
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v10

    const/16 v13, 0x21

    invoke-virtual {v11, v12, v10, v8, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    :goto_1
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_1
    iget-object v8, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v8}, Ldjl;->C(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 169
    iget-object v8, v3, Lcvu$a;->c:Landroid/widget/TextView;

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :goto_2
    const/4 v4, 0x0

    .line 175
    .local v4, "hasGroupTagSettings":Z
    iget-object v8, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    invoke-static {v8}, Ldjl;->a(Ljava/util/Map;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2031
    invoke-static {}, Ldik$a;->a()Ldik;

    move-result-object v8

    .line 176
    iget-object v9, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Ldik;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 177
    .local v6, "iconUrl":Ljava/lang/String;
    invoke-static {v6}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 178
    const/4 v4, 0x1

    .line 179
    iget-object v8, p0, Lcvu;->i:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v9, v3, Lcvu$a;->b:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v6, v10}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 180
    iget-object v8, v3, Lcvu$a;->b:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    iget-object v8, v3, Lcvu$a;->a:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 184
    .end local v6    # "iconUrl":Ljava/lang/String;
    :cond_2
    if-nez v4, :cond_5

    .line 185
    iget-object v8, v3, Lcvu$a;->b:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iget-object v8, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v9, "tag"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v9, "tag"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2150
    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v8

    .line 186
    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    :cond_3
    iget-object v8, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 188
    invoke-static {v8}, Ldjl;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v8}, Ldjl;->i(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 190
    invoke-static {v8}, Ldjl;->g(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 191
    :cond_4
    iget-object v8, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v8}, Ldjl;->u(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v7

    .line 192
    .local v7, "resource":I
    if-eqz v7, :cond_5

    .line 193
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 194
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 195
    iget-object v8, v3, Lcvu$a;->a:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v5, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 202
    .end local v5    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "resource":I
    :cond_5
    :goto_3
    const-string/jumbo v5, ""

    .line 203
    .local v5, "icon":Ljava/lang/String;
    iget-object v8, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v8, :cond_c

    .line 204
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v8

    iget-object v9, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v8, v9}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v5

    .line 208
    :cond_6
    :goto_4
    iget-object v8, v3, Lcvu$a;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v9, Lctk$e;->default_group_icon:I

    invoke-virtual {v8, v9}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setDefaultRes(I)V

    .line 209
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 210
    iget-object v8, v3, Lcvu$a;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_5
    iget-object v8, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    iget-object v9, v3, Lcvu$a;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {v8, v9}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V

    .line 216
    iget-object v9, v3, Lcvu$a;->e:Landroid/widget/CheckBox;

    iget-object v8, p0, Lcvu;->e:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    if-eqz v8, :cond_e

    const/4 v8, 0x0

    :goto_6
    invoke-virtual {v9, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 217
    iget-object v8, p0, Lcvu;->e:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    if-eqz v8, :cond_7

    .line 218
    invoke-static {v2}, Ldjl;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "cid":Ljava/lang/String;
    iget-object v8, p0, Lcvu;->g:Ljava/util/HashSet;

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcvu;->g:Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 220
    iget-object v8, v3, Lcvu$a;->e:Landroid/widget/CheckBox;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 221
    iget-object v8, v3, Lcvu$a;->e:Landroid/widget/CheckBox;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 222
    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 237
    .end local v1    # "cid":Ljava/lang/String;
    :cond_7
    :goto_7
    return-object p2

    .line 162
    .end local v2    # "data":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v3    # "groupHolder":Lcvu$a;
    .end local v4    # "hasGroupTagSettings":Z
    .end local v5    # "icon":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcvu$a;

    .restart local v3    # "groupHolder":Lcvu$a;
    goto/16 :goto_0

    .line 1133
    .restart local v2    # "data":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :catch_0
    move-exception v8

    .line 1134
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1137
    :cond_9
    invoke-virtual {v11, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    .line 171
    :cond_a
    iget-object v8, v3, Lcvu$a;->c:Landroid/widget/TextView;

    iget-object v9, p0, Lcvu;->b:Landroid/app/Activity;

    sget v10, Lctk$i;->member_count:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v14, "memberCount"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 198
    .restart local v4    # "hasGroupTagSettings":Z
    :cond_b
    iget-object v8, v3, Lcvu$a;->a:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 205
    .restart local v5    # "icon":Ljava/lang/String;
    :cond_c
    iget-object v8, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v8, :cond_6

    .line 206
    iget-object v8, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v9, "groupIcon"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "icon":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "icon":Ljava/lang/String;
    goto/16 :goto_4

    .line 212
    :cond_d
    iget-object v8, v3, Lcvu$a;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v9, Lctk$e;->default_group_icon:I

    invoke-virtual {v8, v9}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 216
    :cond_e
    const/16 v8, 0x8

    goto/16 :goto_6

    .line 223
    .restart local v1    # "cid":Ljava/lang/String;
    :cond_f
    invoke-virtual {p0, v2}, Lcvu;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 224
    iget-object v8, v3, Lcvu$a;->e:Landroid/widget/CheckBox;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 225
    iget-object v8, v3, Lcvu$a;->e:Landroid/widget/CheckBox;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 226
    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_7

    .line 227
    :cond_10
    invoke-virtual {p0, v2}, Lcvu;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 228
    iget-object v8, v3, Lcvu$a;->e:Landroid/widget/CheckBox;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 229
    iget-object v8, v3, Lcvu$a;->e:Landroid/widget/CheckBox;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 230
    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_7

    .line 232
    :cond_11
    const/4 v8, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 233
    iget-object v8, v3, Lcvu$a;->e:Landroid/widget/CheckBox;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 234
    iget-object v8, v3, Lcvu$a;->e:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcvu;->e:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v9, v1}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->b(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_7
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcvu;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 145
    .local v0, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    invoke-virtual {p0, v0}, Lcvu;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
