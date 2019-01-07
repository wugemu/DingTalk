.class final Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$1;
.super Ljava/lang/Object;
.source "AddressPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 109
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 112
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;

    const-string/jumbo v2, "https://h5.dingtalk.com/invoice/index.html?corpId=%s&dd_wx_tpl=https://h5.dingtalk.com/invoice/weex-orgaddress-bundle.js#/orgAddress/"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;

    .line 113
    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->a(Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 112
    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method
