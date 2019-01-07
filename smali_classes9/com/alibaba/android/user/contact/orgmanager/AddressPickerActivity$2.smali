.class final Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$2;
.super Ljava/lang/Object;
.source "AddressPickerActivity.java"

# interfaces
.implements Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$2;->a:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;)V
    .locals 4
    .param p1, "data"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 129
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;->orgEcAddressObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$2;->a:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;

    iget-object v1, p1, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;->orgEcAddressObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->addressId:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->a(Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;J)J

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$2;->a:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->b(Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;)Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;->orgEcAddressObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->addressId:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;->a(J)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$2;->a:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->finish()V

    .line 134
    :cond_0
    return-void
.end method
