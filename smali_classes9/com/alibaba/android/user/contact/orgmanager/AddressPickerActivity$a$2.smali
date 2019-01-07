.class final Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a$2;
.super Ljava/lang/Object;
.source "AddressPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;

.field final synthetic b:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a$2;->b:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a$2;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 237
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a$2;->b:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;->a:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a$a;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a$2;->b:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;->a:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a$a;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a$2;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;

    invoke-interface {v0, v1}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a$a;->a(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;)V

    .line 240
    :cond_0
    return-void
.end method
