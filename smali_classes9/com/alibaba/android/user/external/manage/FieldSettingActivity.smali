.class public Lcom/alibaba/android/user/external/manage/FieldSettingActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "FieldSettingActivity.java"

# interfaces
.implements Lcom/alibaba/android/user/external/ExternalEditContract$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;,
        Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:J

.field private c:Landroid/widget/ListView;

.field private d:Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;

.field private e:Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;

.field private f:Lcom/alibaba/android/user/external/ExternalEditContract$b;

.field private g:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 354
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->b:J

    return-wide v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;I)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/FieldSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    .line 2165
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2166
    sget v1, Lezg$l;->dt_external_contact_delete_field_confirm:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$2;-><init>(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;I)V

    .line 2167
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->cancel:I

    const/4 v2, 0x0

    .line 2179
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 53
    return-void
.end method

.method private static a(Ljava/util/List;Lcom/alibaba/android/user/model/OrgExtFieldObject;)Z
    .locals 6
    .param p1, "newValue"    # Lcom/alibaba/android/user/model/OrgExtFieldObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/OrgExtFieldObject;",
            ">;",
            "Lcom/alibaba/android/user/model/OrgExtFieldObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/model/OrgExtFieldObject;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 203
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .line 204
    .local v1, "oldValue":Lcom/alibaba/android/user/model/OrgExtFieldObject;
    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;->id:J

    iget-wide v4, p1, Lcom/alibaba/android/user/model/OrgExtFieldObject;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 205
    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 206
    const/4 v2, 0x1

    .line 210
    .end local v1    # "oldValue":Lcom/alibaba/android/user/model/OrgExtFieldObject;
    :goto_1
    return v2

    .line 202
    .restart local v1    # "oldValue":Lcom/alibaba/android/user/model/OrgExtFieldObject;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "oldValue":Lcom/alibaba/android/user/model/OrgExtFieldObject;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;)Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->g:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;)Lcom/alibaba/android/user/external/ExternalEditContract$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->f:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->dismissLoadingDialog()V

    .line 256
    return-void
.end method

.method public final a(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 220
    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->g:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->g:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    iget-object v2, v2, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->customFields:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 221
    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->g:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    iget-object v2, v2, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->customFields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 222
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/user/model/OrgExtFieldObject;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .line 224
    .local v1, "object":Lcom/alibaba/android/user/model/OrgExtFieldObject;
    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 225
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 226
    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->e:Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;

    invoke-virtual {v2}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;->notifyDataSetChanged()V

    .line 231
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/user/model/OrgExtFieldObject;>;"
    .end local v1    # "object":Lcom/alibaba/android/user/model/OrgExtFieldObject;
    :cond_1
    return-void
.end method

.method public final a(Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;)V
    .locals 1
    .param p1, "data"    # Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->g:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->d:Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;->notifyDataSetChanged()V

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->e:Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/user/model/OrgExtFieldObject;)V
    .locals 0
    .param p1, "fieldObject"    # Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .prologue
    .line 236
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->showLoadingDialog()V

    .line 251
    return-void
.end method

.method public final b(Lcom/alibaba/android/user/model/OrgExtFieldObject;)V
    .locals 0
    .param p1, "fieldObject"    # Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .prologue
    .line 241
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 265
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 184
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    if-eqz p3, :cond_0

    .line 185
    const-string/jumbo v1, "intent_key_org_ext_field_object"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .line 186
    .local v0, "orgExtFieldObject":Lcom/alibaba/android/user/model/OrgExtFieldObject;
    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->g:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    iget-object v1, v1, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->defaultFields:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->a(Ljava/util/List;Lcom/alibaba/android/user/model/OrgExtFieldObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->d:Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;

    invoke-virtual {v1}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;->notifyDataSetChanged()V

    .line 198
    .end local v0    # "orgExtFieldObject":Lcom/alibaba/android/user/model/OrgExtFieldObject;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/UserBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 199
    return-void

    .line 189
    .restart local v0    # "orgExtFieldObject":Lcom/alibaba/android/user/model/OrgExtFieldObject;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->g:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    iget-object v1, v1, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->customFields:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->a(Ljava/util/List;Lcom/alibaba/android/user/model/OrgExtFieldObject;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->e:Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;

    invoke-virtual {v1}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;->notifyDataSetChanged()V

    goto :goto_0

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->g:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    iget-object v1, v1, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->customFields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->e:Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;

    invoke-virtual {v1}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x41500000    # 13.0f

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v4, 0x40e00000    # 7.0f

    const/4 v5, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    sget v0, Lezg$j;->activity_field_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->setContentView(I)V

    .line 1087
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->b:J

    .line 1088
    new-instance v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    invoke-direct {v0}, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->g:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    .line 1089
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->g:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->defaultFields:Ljava/util/List;

    .line 1090
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->g:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->customFields:Ljava/util/List;

    .line 1091
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->g:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    iget-object v0, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->defaultFields:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;

    sget v2, Lezg$l;->user_profile_name:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/user/model/OrgExtFieldObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1092
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->g:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    iget-object v0, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->defaultFields:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;

    sget v2, Lezg$l;->user_profile_mobile:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/user/model/OrgExtFieldObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1093
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->g:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    iget-object v0, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->defaultFields:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;

    sget v2, Lezg$l;->dt_external_contact_fields_company:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/user/model/OrgExtFieldObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->g:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    iget-object v0, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->defaultFields:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;

    sget v2, Lezg$l;->dt_external_contact_fields_position:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/user/model/OrgExtFieldObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->g:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    iget-object v0, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->defaultFields:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;

    sget v2, Lezg$l;->dt_external_contact_fields_address:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/user/model/OrgExtFieldObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->g:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    iget-object v0, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->defaultFields:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;

    sget v2, Lezg$l;->dt_external_contact_fields_mail:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/user/model/OrgExtFieldObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1097
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->g:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    iget-object v0, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->defaultFields:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;

    sget v2, Lezg$l;->dt_external_contact_fields_remark:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/user/model/OrgExtFieldObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-wide v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->finish()V

    .line 83
    :goto_0
    return-void

    .line 1102
    :cond_0
    sget v0, Lezg$l;->dt_external_contact_property_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1105
    sget v0, Lezg$h;->list_default_field:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->c:Landroid/widget/ListView;

    .line 1106
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1107
    sget v1, Lezg$l;->dt_external_contact_default_info:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1108
    invoke-virtual {v0, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1109
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->uidic_global_color_6_2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1110
    invoke-static {p0, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v5, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1111
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1112
    new-instance v0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;-><init>(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->d:Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;

    .line 1113
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->d:Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1114
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1117
    sget v0, Lezg$h;->list_customize_field:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1118
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1119
    sget v2, Lezg$l;->dt_external_contact_custom_info:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1120
    invoke-virtual {v1, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1121
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$e;->uidic_global_color_6_2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1122
    invoke-static {p0, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1123
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1132
    new-instance v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;-><init>(Landroid/content/Context;)V

    .line 1133
    sget v2, Lezg$g;->icon_green_add:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 1134
    sget-object v2, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->SIZE_XXS:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setLeftImageSize(Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;)V

    .line 1135
    sget v2, Lezg$l;->dt_external_contact_add_property:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setTitle(Ljava/lang/String;)V

    .line 1136
    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->C2:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(II)V

    .line 1137
    sget-object v2, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v1, v5, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 1138
    sget-object v2, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v1, v5, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 1140
    new-instance v2, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$1;-><init>(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1124
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1125
    new-instance v1, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;-><init>(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;)V

    iput-object v1, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->e:Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;

    .line 1126
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->e:Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1127
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 81
    new-instance v0, Lfno;

    iget-wide v2, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->b:J

    invoke-direct {v0, p0, v2, v3, p0}, Lfno;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;JLcom/alibaba/android/user/external/ExternalEditContract$c;)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->f:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    invoke-interface {v0}, Lcom/alibaba/android/user/external/ExternalEditContract$b;->a()V

    goto/16 :goto_0
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Lcom/alibaba/android/user/external/ExternalEditContract$b;

    .line 1245
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->f:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    .line 53
    return-void
.end method
