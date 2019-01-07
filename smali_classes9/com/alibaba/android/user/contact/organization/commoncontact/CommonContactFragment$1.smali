.class final Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$1;
.super Ljava/lang/Object;
.source "CommonContactFragment.java"

# interfaces
.implements Lfft$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$1;->a:Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$1;->a:Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->a(Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;)V

    .line 124
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Z
    .locals 4
    .param p1, "orgObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 133
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$1;->a:Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->b(Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$1;->a:Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->b(Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$1;->a:Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->a(Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$1;->a:Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->a(Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;)V

    .line 129
    return-void
.end method
