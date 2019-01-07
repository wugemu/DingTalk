.class final Lcom/alibaba/android/search/devtools/RecommendListActivity$a;
.super Lemv;
.source "RecommendListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/devtools/RecommendListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lemv",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/alibaba/android/search/devtools/RecommendListActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/search/devtools/RecommendListActivity;Landroid/app/Activity;)V
    .locals 0
    .param p2, "context"    # Landroid/app/Activity;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity$a;->c:Lcom/alibaba/android/search/devtools/RecommendListActivity;

    .line 182
    invoke-direct {p0, p2}, Lemv;-><init>(Landroid/app/Activity;)V

    .line 183
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/devtools/RecommendListActivity$a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Conversation;

    .line 189
    .local v1, "item":Lcom/alibaba/wukong/im/Conversation;
    invoke-virtual {p0}, Lcom/alibaba/android/search/devtools/RecommendListActivity$a;->a()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lemt$f;->item_rec_group:I

    invoke-static {v2, p2, p3, v3, p1}, Lcre;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcre;

    move-result-object v0

    .line 190
    .local v0, "holder":Lcre;
    sget v2, Lemt$e;->tv_avatar:I

    invoke-virtual {v0, v2}, Lcre;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->groupIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    sget v2, Lemt$e;->title:I

    invoke-virtual {v0, v2}, Lcre;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    sget v2, Lemt$e;->cid:I

    invoke-virtual {v0, v2}, Lcre;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    iget-object v2, v0, Lcre;->a:Landroid/view/View;

    .line 193
    new-instance v3, Lcom/alibaba/android/search/devtools/RecommendListActivity$a$1;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/search/devtools/RecommendListActivity$a$1;-><init>(Lcom/alibaba/android/search/devtools/RecommendListActivity$a;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2055
    iget-object v2, v0, Lcre;->a:Landroid/view/View;

    .line 213
    return-object v2
.end method
