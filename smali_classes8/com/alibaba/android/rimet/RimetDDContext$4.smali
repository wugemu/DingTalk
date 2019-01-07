.class final Lcom/alibaba/android/rimet/RimetDDContext$4;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->showNumberMenu(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/CharSequence;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

.field final synthetic e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic f:Lcom/alibaba/android/rimet/RimetDDContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext;[Ljava/lang/CharSequence;Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 1718
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->f:Lcom/alibaba/android/rimet/RimetDDContext;

    iput-object p2, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->a:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->d:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iput-object p6, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->a:[Ljava/lang/CharSequence;

    aget-object v0, v0, p2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1722
    .local v7, "item":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->b:Landroid/content/Context;

    const v1, 0x7f091769

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1723
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1742
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v0, :cond_1

    .line 1743
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 1745
    :cond_1
    return-void

    .line 1724
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->b:Landroid/content/Context;

    const v1, 0x7f091aa4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1725
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->d:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    goto :goto_0

    .line 1726
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->b:Landroid/content/Context;

    const v1, 0x7f090281

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1728
    new-instance v6, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;

    invoke-direct {v6}, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;-><init>()V

    .line 1729
    .local v6, "contact":Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->c:Ljava/lang/String;

    iput-object v0, v6, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;->mPhoneNumber:Ljava/lang/String;

    .line 1730
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelPhoneContactInterface;->a()Lcom/alibaba/dingtalk/telebase/TelPhoneContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/dingtalk/telebase/TelPhoneContactInterface;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;)V

    goto :goto_0

    .line 1731
    .end local v6    # "contact":Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->b:Landroid/content/Context;

    const v1, 0x7f09024c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1733
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->b:Landroid/content/Context;

    const v3, 0x7f09035a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcnz;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Z

    goto :goto_0

    .line 1734
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->b:Landroid/content/Context;

    const v1, 0x7f091767

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1736
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1737
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->b:Landroid/content/Context;

    const v1, 0x7f0906f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1738
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;-><init>()V

    .line 1739
    .local v4, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->c:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    .line 1740
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$4;->b:Landroid/content/Context;

    const-wide/16 v2, 0x0

    const-string/jumbo v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;JLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
