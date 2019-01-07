.class final Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$6;
.super Ljava/lang/Object;
.source "OrgInviteFuc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/model/OrgInviteObject;

.field final synthetic c:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;Ljava/lang/String;Lcom/alibaba/android/user/model/OrgInviteObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$6;->c:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$6;->b:Lcom/alibaba/android/user/model/OrgInviteObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$6;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$6;->b:Lcom/alibaba/android/user/model/OrgInviteObject;

    invoke-virtual {v2}, Lcom/alibaba/android/user/model/OrgInviteObject;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
