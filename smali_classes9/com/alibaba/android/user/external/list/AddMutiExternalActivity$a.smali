.class final Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;
.super Landroid/widget/BaseAdapter;
.source "AddMutiExternalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V
    .locals 0

    .prologue
    .line 881
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    .prologue
    .line 881
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;-><init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->a(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->a(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 887
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 893
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->a(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->a(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->a(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 896
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 902
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 908
    if-nez p2, :cond_1

    .line 909
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    sget v4, Lezg$j;->activity_add_muti_external_item:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 910
    new-instance v0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$b;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$b;-><init>(B)V

    .line 911
    .local v0, "holder":Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$b;
    sget v3, Lezg$h;->avatar:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v3, v0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 912
    sget v3, Lezg$h;->name:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$b;->b:Landroid/widget/TextView;

    .line 913
    sget v3, Lezg$h;->edit:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v3, v0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$b;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 914
    sget v3, Lezg$h;->remove:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v3, v0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$b;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 915
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 919
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/external/ExternalEditContract$a;

    .line 920
    .local v2, "itemWrapper":Lcom/alibaba/android/user/external/ExternalEditContract$a;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/alibaba/android/user/external/ExternalEditContract$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v3, :cond_0

    .line 921
    iget-object v1, v2, Lcom/alibaba/android/user/external/ExternalEditContract$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 922
    .local v1, "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-object v3, v0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgAvatarMediaId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    iget-object v3, v0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$b;->b:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 924
    iget-object v4, v0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$b;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-boolean v3, v2, Lcom/alibaba/android/user/external/ExternalEditContract$a;->b:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lezg$e;->uidic_global_color_6_2:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    :goto_1
    invoke-virtual {v4, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 926
    iget-object v3, v0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$b;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v4, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a$1;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a$1;-><init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 942
    iget-object v3, v0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$b;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v4, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a$2;

    invoke-direct {v4, p0, v2}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a$2;-><init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;Lcom/alibaba/android/user/external/ExternalEditContract$a;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 952
    .end local v1    # "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_0
    return-object p2

    .line 917
    .end local v0    # "holder":Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$b;
    .end local v2    # "itemWrapper":Lcom/alibaba/android/user/external/ExternalEditContract$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$b;

    .restart local v0    # "holder":Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$b;
    goto :goto_0

    .line 924
    .restart local v1    # "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .restart local v2    # "itemWrapper":Lcom/alibaba/android/user/external/ExternalEditContract$a;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    .line 925
    invoke-virtual {v3}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lezg$e;->uidic_global_color_c3:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_1
.end method
