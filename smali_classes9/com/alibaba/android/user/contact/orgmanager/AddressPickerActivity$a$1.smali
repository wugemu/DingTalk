.class final Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a$1;
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
    .line 226
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a$1;->b:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 232
    return-void
.end method
