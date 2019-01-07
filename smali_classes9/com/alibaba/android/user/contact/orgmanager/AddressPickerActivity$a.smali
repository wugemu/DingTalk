.class public final Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;
.super Lfxq;
.source "AddressPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxq",
        "<",
        "Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lfxq;-><init>(Landroid/app/Activity;)V

    .line 197
    return-void
.end method


# virtual methods
.method public final a()Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 264
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;->h:Ljava/util/List;

    if-nez v3, :cond_1

    move-object v1, v2

    .line 274
    :cond_0
    :goto_0
    return-object v1

    .line 267
    :cond_1
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 268
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;

    .line 269
    .local v1, "item":Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;
    if-eqz v1, :cond_2

    iget-boolean v3, v1, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;->checked:Z

    if-nez v3, :cond_0

    .line 267
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "item":Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;
    :cond_3
    move-object v1, v2

    .line 274
    goto :goto_0
.end method

.method public final a(J)V
    .locals 5
    .param p1, "addressId"    # J

    .prologue
    .line 248
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;->h:Ljava/util/List;

    if-nez v2, :cond_0

    .line 261
    :goto_0
    return-void

    .line 251
    :cond_0
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 252
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;

    .line 253
    .local v1, "item":Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;
    if-eqz v1, :cond_1

    .line 256
    iget-object v2, v1, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;->orgEcAddressObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;->orgEcAddressObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;

    iget v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->addressId:I

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, v1, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;->checked:Z

    .line 251
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 256
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 260
    .end local v1    # "item":Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 209
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;->h:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;

    .line 210
    .local v2, "item":Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;->i:Landroid/app/Activity;

    sget v4, Lezg$j;->item_address_list:I

    invoke-static {v3, p2, p3, v4, p1}, Lcre;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcre;

    move-result-object v1

    .line 211
    .local v1, "holder":Lcre;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;->orgEcAddressObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;

    if-eqz v3, :cond_0

    .line 212
    sget v3, Lezg$h;->tv_address_name:I

    invoke-virtual {v1, v3}, Lcre;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v2, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;->orgEcAddressObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    sget v3, Lezg$h;->tv_address_details:I

    invoke-virtual {v1, v3}, Lcre;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v2, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;->orgEcAddressObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->detailAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    sget v3, Lezg$h;->right_icon:I

    invoke-virtual {v1, v3}, Lcre;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 219
    .local v0, "actionView":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    iget-boolean v3, v2, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;->checked:Z

    if-eqz v3, :cond_1

    .line 220
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 221
    sget v3, Lezg$l;->icon_right_fill:I

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 222
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;->i:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->uidic_global_color_c2:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 226
    :goto_0
    new-instance v3, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a$1;

    invoke-direct {v3, p0, v2}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a$1;-><init>(Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1055
    iget-object v3, v1, Lcre;->a:Landroid/view/View;

    .line 234
    new-instance v4, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a$2;

    invoke-direct {v4, p0, v2}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a$2;-><init>(Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2055
    .end local v0    # "actionView":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    :cond_0
    iget-object v3, v1, Lcre;->a:Landroid/view/View;

    .line 244
    return-object v3

    .line 224
    .restart local v0    # "actionView":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    :cond_1
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_0
.end method
