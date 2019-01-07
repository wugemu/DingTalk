.class final Lcom/alibaba/android/search/devtools/RecommendListActivity$b;
.super Lemv;
.source "RecommendListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/devtools/RecommendListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lemv",
        "<",
        "Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;",
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
    .line 142
    iput-object p1, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity$b;->c:Lcom/alibaba/android/search/devtools/RecommendListActivity;

    .line 143
    invoke-direct {p0, p2}, Lemv;-><init>(Landroid/app/Activity;)V

    .line 144
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/devtools/RecommendListActivity$b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .line 150
    .local v1, "item":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    invoke-virtual {p0}, Lcom/alibaba/android/search/devtools/RecommendListActivity$b;->a()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lemt$f;->item_rec_contact:I

    invoke-static {v2, p2, p3, v3, p1}, Lcre;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcre;

    move-result-object v0

    .line 151
    .local v0, "holder":Lcre;
    sget v2, Lemt$e;->tv_avatar:I

    invoke-virtual {v0, v2}, Lcre;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->nick:Ljava/lang/String;

    iget-object v4, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->avatar:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sget v2, Lemt$e;->nick:I

    invoke-virtual {v0, v2}, Lcre;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->nick:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    sget v2, Lemt$e;->uid:I

    invoke-virtual {v0, v2}, Lcre;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "uid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",orgId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    sget v2, Lemt$e;->empName:I

    invoke-virtual {v0, v2}, Lcre;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "empName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    sget v2, Lemt$e;->orgName:I

    invoke-virtual {v0, v2}, Lcre;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "orgName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    sget v2, Lemt$e;->depName:I

    invoke-virtual {v0, v2}, Lcre;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "depName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->depName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    sget v2, Lemt$e;->alias:I

    invoke-virtual {v0, v2}, Lcre;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "alias:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->alias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    iget-object v2, v0, Lcre;->a:Landroid/view/View;

    .line 158
    new-instance v3, Lcom/alibaba/android/search/devtools/RecommendListActivity$b$1;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/search/devtools/RecommendListActivity$b$1;-><init>(Lcom/alibaba/android/search/devtools/RecommendListActivity$b;Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2055
    iget-object v2, v0, Lcre;->a:Landroid/view/View;

    .line 175
    return-object v2
.end method
