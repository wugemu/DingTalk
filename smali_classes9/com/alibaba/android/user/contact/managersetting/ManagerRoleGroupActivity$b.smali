.class public final Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;
.super Lcqr;
.source "ManagerRoleGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcqr",
        "<",
        "Lcom/alibaba/android/user/model/OrgManagerRoleObject;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcqr;-><init>(Landroid/app/Activity;)V

    .line 247
    iput-object p1, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;->d:Landroid/content/Context;

    .line 248
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return-object v0
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
    .line 257
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    .line 258
    .local v1, "object":Lcom/alibaba/android/user/model/OrgManagerRoleObject;
    if-nez v1, :cond_0

    .line 259
    const/4 v2, 0x0

    .line 279
    :goto_0
    return-object v2

    .line 262
    :cond_0
    if-nez p2, :cond_1

    .line 263
    new-instance p2, Lcom/alibaba/android/user/widget/GroupLabelView;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;->d:Landroid/content/Context;

    invoke-direct {p2, v2}, Lcom/alibaba/android/user/widget/GroupLabelView;-><init>(Landroid/content/Context;)V

    .line 264
    .restart local p2    # "convertView":Landroid/view/View;
    new-instance v0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$a;

    invoke-direct {v0}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$a;-><init>()V

    .local v0, "holder":Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$a;
    move-object v2, p2

    .line 265
    check-cast v2, Lcom/alibaba/android/user/widget/GroupLabelView;

    iput-object v2, v0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$a;->a:Lcom/alibaba/android/user/widget/GroupLabelView;

    .line 266
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 271
    :goto_1
    iget-object v2, v0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$a;->a:Lcom/alibaba/android/user/widget/GroupLabelView;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;->b:Landroid/app/Activity;

    invoke-static {v3, v1}, Lfhu;->d(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgManagerRoleObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/widget/GroupLabelView;->setGrantResource(Ljava/lang/String;)V

    .line 272
    iget-object v2, v0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$a;->a:Lcom/alibaba/android/user/widget/GroupLabelView;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;->b:Landroid/app/Activity;

    invoke-static {v3, v1}, Lfhu;->a(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgManagerRoleObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/widget/GroupLabelView;->setRoles(Ljava/lang/String;)V

    .line 274
    iget-object v2, v1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    iget v2, v2, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 275
    iget-object v2, v0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$a;->a:Lcom/alibaba/android/user/widget/GroupLabelView;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;->b:Landroid/app/Activity;

    invoke-static {v3, v1}, Lfhu;->c(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgManagerRoleObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/widget/GroupLabelView;->setScope(Ljava/lang/String;)V

    .line 279
    :goto_2
    iget-object v2, v0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$a;->a:Lcom/alibaba/android/user/widget/GroupLabelView;

    goto :goto_0

    .line 268
    .end local v0    # "holder":Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$a;

    .restart local v0    # "holder":Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$a;
    goto :goto_1

    .line 277
    :cond_2
    iget-object v2, v0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$a;->a:Lcom/alibaba/android/user/widget/GroupLabelView;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;->b:Landroid/app/Activity;

    invoke-static {v3, v1}, Lfhu;->b(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgManagerRoleObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/widget/GroupLabelView;->setScope(Ljava/lang/String;)V

    goto :goto_2
.end method
