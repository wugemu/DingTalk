.class final Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;
.super Landroid/widget/BaseAdapter;
.source "CreateOrgStep2Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;
    .param p2, "topDept"    # Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 189
    invoke-virtual {p2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getSubDepts()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;->a:Ljava/util/List;

    .line 190
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;->a:Ljava/util/List;

    .line 192
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;->a:Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->setSubDepts(Ljava/util/List;)V

    .line 194
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;->a:Ljava/util/List;

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
    .line 213
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 219
    if-nez p2, :cond_0

    .line 220
    new-instance v1, Lcom/alibaba/android/user/contact/view/IconEditText;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/user/contact/view/IconEditText;-><init>(Landroid/content/Context;)V

    .line 225
    .local v1, "view":Lcom/alibaba/android/user/contact/view/IconEditText;
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .line 226
    .local v0, "model":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    sget v2, Lezg$g;->icon_red_delete:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/IconEditText;->setIconResId(I)V

    .line 227
    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/IconEditText;->setEditMaxLenth(I)V

    .line 228
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/IconEditText;->setEditContent(Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;

    sget v3, Lezg$l;->create_org_dept_name_hint:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/IconEditText;->setTextHint(Ljava/lang/String;)V

    .line 230
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/IconEditText;->setTopDividerVisibility(I)V

    .line 231
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/IconEditText;->setBottomDividerVisibility(I)V

    .line 232
    sget-object v2, Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;->AlignContent:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/IconEditText;->setBottomDividerAlign(Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;)V

    .line 235
    new-instance v2, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a$1;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/IconEditText;->setIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    new-instance v2, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a$2;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;Lcom/alibaba/android/user/contact/view/IconEditText;Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/IconEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 256
    return-object v1

    .end local v0    # "model":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    .end local v1    # "view":Lcom/alibaba/android/user/contact/view/IconEditText;
    :cond_0
    move-object v1, p2

    .line 222
    check-cast v1, Lcom/alibaba/android/user/contact/view/IconEditText;

    .restart local v1    # "view":Lcom/alibaba/android/user/contact/view/IconEditText;
    goto :goto_0
.end method
