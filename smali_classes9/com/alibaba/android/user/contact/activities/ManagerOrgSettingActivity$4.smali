.class final Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;
.super Ljava/lang/Object;
.source "ManagerOrgSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 338
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "newName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 340
    :cond_0
    sget v2, Lezg$l;->add_org_hint:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 392
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->g(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setContent(Ljava/lang/String;)V

    .line 344
    new-instance v0, Lcfi;

    invoke-direct {v0}, Lcfi;-><init>()V

    .line 345
    .local v0, "model":Lcfi;
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->e(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcfi;->a:Ljava/lang/Long;

    .line 346
    iput-object v1, v0, Lcfi;->b:Ljava/lang/String;

    .line 347
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v3

    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;-><init>(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;Ljava/lang/String;)V

    const-class v5, Lcma;

    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-interface {v2, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    invoke-interface {v3, v0, v2}, Lezt;->a(Lcfi;Lcma;)V

    goto :goto_0
.end method
