.class final Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$2;
.super Ljava/lang/Object;
.source "NameCardEditActivity.java"

# interfaces
.implements Lftb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$2;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 160
    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v0

    const-string/jumbo v1, "contact_edit_bizcard_detail_e_entry"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lfvv;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$2;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "pages/editcard/editcard"

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$2;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;)Lftc;

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$2;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    invoke-static {v0}, Lftc;->b(Landroid/app/Activity;)V

    goto :goto_0
.end method
