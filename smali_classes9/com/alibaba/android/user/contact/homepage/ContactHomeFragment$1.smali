.class final Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$1;
.super Ljava/lang/Object;
.source "ContactHomeFragment.java"

# interfaces
.implements Lfft$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$1;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$1;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->a(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 147
    invoke-static {}, Lfxi;->a()Lfxi;

    move-result-object v0

    invoke-virtual {v0}, Lfxi;->b()V

    .line 148
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$1;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->a(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$1;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$1;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->b(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 151
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Z
    .locals 1
    .param p1, "orgEmployeeExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$1;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->a(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$1;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$1;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->b(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 158
    :cond_0
    return-void
.end method
