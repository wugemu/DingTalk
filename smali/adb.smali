.class public final Ladb;
.super Landroid/widget/BaseAdapter;
.source "MailSignAdminOptionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ladb$a;,
        Ladb$b;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field public b:Landroid/widget/CompoundButton;

.field private final c:Ladb$b;

.field private d:Landroid/app/Activity;

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lacz$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ladb$b;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Ladb$b;

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    const-string/jumbo v0, "MailSignAdminOptionListAdapter"

    iput-object v0, p0, Ladb;->a:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ladb;->f:Ljava/util/List;

    .line 50
    iput-object p1, p0, Ladb;->d:Landroid/app/Activity;

    .line 53
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->v()Z

    move-result v0

    iput-boolean v0, p0, Ladb;->e:Z

    .line 55
    iput-object p2, p0, Ladb;->c:Ladb$b;

    .line 57
    invoke-direct {p0}, Ladb;->a()V

    .line 58
    return-void
.end method

.method static synthetic a(Ladb;)Landroid/widget/CompoundButton;
    .locals 1
    .param p0, "x0"    # Ladb;

    .prologue
    .line 37
    iget-object v0, p0, Ladb;->b:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic a(Ladb;Landroid/widget/CompoundButton;)Landroid/widget/CompoundButton;
    .locals 0
    .param p0, "x0"    # Ladb;
    .param p1, "x1"    # Landroid/widget/CompoundButton;

    .prologue
    .line 37
    iput-object p1, p0, Ladb;->b:Landroid/widget/CompoundButton;

    return-object p1
.end method

.method private a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 63
    iget-object v3, p0, Ladb;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 64
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 65
    .local v2, "userModel":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 77
    :cond_0
    return-void

    .line 69
    :cond_1
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 71
    .local v1, "orgModel":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_2

    iget v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->role:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 72
    new-instance v0, Lacz$a;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-direct {v0, v4, v5, v6, v7}, Lacz$a;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 74
    .local v0, "obj":Lacz$a;
    iget-object v4, p0, Ladb;->f:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic b(Ladb;)Ladb$b;
    .locals 1
    .param p0, "x0"    # Ladb;

    .prologue
    .line 37
    iget-object v0, p0, Ladb;->c:Ladb$b;

    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Ladb;->b:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Ladb;->b:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2121
    const/4 v0, 0x0

    iput-object v0, p0, Ladb;->b:Landroid/widget/CompoundButton;

    .line 118
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Ladb;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 86
    iget-object v0, p0, Ladb;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 91
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 97
    if-nez p2, :cond_1

    .line 98
    iget-object v2, p0, Ladb;->d:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Laxo$g;->alm_cmail_fragment_mail_sign_admin_option_list_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 99
    new-instance v0, Ladb$a;

    invoke-direct {v0, p0, p2}, Ladb$a;-><init>(Ladb;Landroid/view/View;)V

    .line 100
    .local v0, "holder":Ladb$a;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    :goto_0
    iget-object v2, p0, Ladb;->f:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lacz$a;

    .line 105
    .local v1, "item":Lacz$a;
    iget-object v2, p0, Ladb;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1137
    if-eqz v1, :cond_0

    .line 1138
    iget-object v2, v0, Ladb$a;->b:Landroid/widget/TextView;

    iget-object v3, v1, Lacz$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    :cond_0
    iget-object v2, v0, Ladb$a;->a:Landroid/widget/ToggleButton;

    invoke-static {v1}, Lacn;->a(Lacz$a;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1141
    iget-object v2, v0, Ladb$a;->a:Landroid/widget/ToggleButton;

    new-instance v3, Ladb$a$1;

    invoke-direct {v3, v0, v1}, Ladb$a$1;-><init>(Ladb$a;Lacz$a;)V

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    return-object p2

    .line 102
    .end local v0    # "holder":Ladb$a;
    .end local v1    # "item":Lacz$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladb$a;

    .restart local v0    # "holder":Ladb$a;
    goto :goto_0
.end method
