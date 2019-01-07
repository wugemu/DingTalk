.class final Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$5;
.super Ljava/lang/Object;
.source "CommonContactFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;
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
    .line 234
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$5;->a:Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 238
    const-string/jumbo v0, "contact_device_button_click"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$5;->a:Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->c(Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1315
    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$5;->a:Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;

    const-string/jumbo v1, "VideoDeviceFragment"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$5;->a:Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;

    sget v3, Lezg$l;->dt_contact_pick_smart_meeting:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->a(Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method
