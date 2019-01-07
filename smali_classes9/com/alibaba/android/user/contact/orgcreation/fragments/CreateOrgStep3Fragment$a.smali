.class final Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;
.super Landroid/widget/BaseAdapter;
.source "CreateOrgStep3Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;>;"
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;->a:I

    .line 191
    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;->c:Ljava/util/List;

    .line 192
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 206
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 212
    if-nez p2, :cond_0

    .line 213
    new-instance v1, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;-><init>(Landroid/content/Context;)V

    .line 218
    .local v1, "view":Lcom/alibaba/android/user/contact/view/CheckBoxTextView;
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .line 219
    .local v0, "model":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->setTextContent(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1, v5}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->setOnCheckChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 221
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->isMyDept()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->setChecked(Z)V

    .line 222
    new-instance v2, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a$1;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->setOnCheckChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 229
    new-instance v2, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a$2;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a$2;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;Lcom/alibaba/android/user/contact/view/CheckBoxTextView;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;->a:I

    if-nez v2, :cond_2

    .line 256
    sget-object v2, Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    invoke-virtual {v1, v4, v2}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->a(ILcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;)V

    .line 257
    iget v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;->a:I

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    .line 258
    sget-object v2, Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    invoke-virtual {v1, v4, v2}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->b(ILcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;)V

    .line 270
    :goto_1
    return-object v1

    .end local v0    # "model":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    .end local v1    # "view":Lcom/alibaba/android/user/contact/view/CheckBoxTextView;
    :cond_0
    move-object v1, p2

    .line 215
    check-cast v1, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;

    .restart local v1    # "view":Lcom/alibaba/android/user/contact/view/CheckBoxTextView;
    goto :goto_0

    .line 260
    .restart local v0    # "model":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    :cond_1
    sget-object v2, Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;->AlignContent:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    invoke-virtual {v1, v4, v2}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->b(ILcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;)V

    goto :goto_1

    .line 262
    :cond_2
    iget v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;->a:I

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_3

    .line 263
    invoke-virtual {v1, v6, v5}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->a(ILcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;)V

    .line 264
    sget-object v2, Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    invoke-virtual {v1, v4, v2}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->b(ILcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;)V

    goto :goto_1

    .line 266
    :cond_3
    invoke-virtual {v1, v6, v5}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->a(ILcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;)V

    .line 267
    sget-object v2, Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;->AlignContent:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    invoke-virtual {v1, v4, v2}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->b(ILcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;)V

    goto :goto_1
.end method
