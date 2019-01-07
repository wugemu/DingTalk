.class public Lcom/alibaba/android/user/external/list/EditExternalActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "EditExternalActivity.java"

# interfaces
.implements Lcom/alibaba/android/user/external/ExternalEditContract$c;


# instance fields
.field private final a:I

.field private b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/OrgExtFieldObject;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/EditText;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/EditText;

.field private j:D

.field private k:D

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/view/ViewGroup;

.field private o:J

.field private p:Lfnr;

.field private q:Lcom/alibaba/android/user/external/ExternalEditContract$b;

.field private r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

.field private s:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->a:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/EditExternalActivity;D)D
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/EditExternalActivity;
    .param p1, "x1"    # D

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->j:D

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/EditExternalActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/EditExternalActivity;

    .prologue
    const-wide/16 v4, 0x0

    .line 46
    .line 3230
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3231
    const-string/jumbo v1, "return_location_image"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3232
    new-instance v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;-><init>()V

    .line 3233
    sget v2, Lezg$g;->msg_select_location_mark:I

    iput v2, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->redId:I

    .line 3234
    const/4 v2, 0x0

    iput v2, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorX:F

    .line 3235
    const v2, -0x414ccccd    # -0.35f

    iput v2, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorY:F

    .line 3236
    const-string/jumbo v2, "location_center_marker"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3237
    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->j:D

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->k:D

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 3238
    const-string/jumbo v1, "EXTRA_LONGITUDE"

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->j:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 3239
    const-string/jumbo v1, "EXTRA_LATITUDE"

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->k:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 3241
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToLocationPage(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/EditExternalActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/EditExternalActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3
    .param p1, "editable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 197
    if-eqz p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 227
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/user/external/list/EditExternalActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/EditExternalActivity$3;-><init>(Lcom/alibaba/android/user/external/list/EditExternalActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/list/EditExternalActivity;D)D
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/EditExternalActivity;
    .param p1, "x1"    # D

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->k:D

    return-wide p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/list/EditExternalActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/EditExternalActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/external/list/EditExternalActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/EditExternalActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method private g()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 245
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->n:Landroid/view/ViewGroup;

    if-eqz v6, :cond_6

    .line 246
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->n:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 248
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->c:Ljava/util/List;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 249
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->n:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 250
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 251
    .local v1, "l":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_6

    .line 252
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->c:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .line 253
    .local v3, "orgExtFieldObject":Lcom/alibaba/android/user/model/OrgExtFieldObject;
    sget v6, Lezg$j;->activity_manage_external_custom_fd:I

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 254
    .local v5, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    iget-object v6, v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 255
    sget v6, Lezg$h;->fd_key:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 256
    .local v4, "tvName":Landroid/widget/TextView;
    iget-boolean v6, v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v6, :cond_3

    .line 257
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "<font color=\"#ff4141\">*</font>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :goto_1
    iget-object v6, v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 262
    sget v6, Lezg$h;->fd_value:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iget-boolean v7, v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v7, :cond_4

    sget v7, Lezg$l;->input_required:I

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(I)V

    .line 264
    .end local v4    # "tvName":Landroid/widget/TextView;
    :cond_0
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 265
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    .line 266
    .local v2, "o":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    if-eqz v3, :cond_1

    iget-object v7, v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    iget-object v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 267
    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 268
    sget v6, Lezg$h;->fd_value:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iget-object v7, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 274
    .end local v2    # "o":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->n:Landroid/view/ViewGroup;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 259
    .restart local v4    # "tvName":Landroid/widget/TextView;
    :cond_3
    iget-object v6, v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 262
    :cond_4
    sget v7, Lezg$l;->input_optional:I

    goto :goto_2

    .line 277
    .end local v0    # "i":I
    .end local v1    # "l":I
    .end local v3    # "orgExtFieldObject":Lcom/alibaba/android/user/model/OrgExtFieldObject;
    .end local v4    # "tvName":Landroid/widget/TextView;
    .end local v5    # "v":Landroid/view/View;
    :cond_5
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->n:Landroid/view/ViewGroup;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 280
    :cond_6
    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method public final a(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 413
    return-void
.end method

.method public final a(Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;)V
    .locals 0
    .param p1, "contactFieldsObject"    # Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    .prologue
    .line 403
    return-void
.end method

.method public final a(Lcom/alibaba/android/user/model/OrgExtFieldObject;)V
    .locals 0
    .param p1, "fieldObject"    # Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .prologue
    .line 418
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 443
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method public final b(Lcom/alibaba/android/user/model/OrgExtFieldObject;)V
    .locals 0
    .param p1, "fieldObject"    # Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .prologue
    .line 423
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    sget v0, Lezg$j;->activity_edit_external:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->setContentView(I)V

    .line 1082
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "employee_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1083
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_id"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->o:J

    .line 1084
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_ext_contact_fields_object"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    .line 1085
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->extFields:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->c:Ljava/util/List;

    .line 1089
    :cond_0
    new-instance v0, Lfno;

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->o:J

    invoke-direct {v0, p0, v2, v3, p0}, Lfno;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;JLcom/alibaba/android/user/external/ExternalEditContract$c;)V

    .line 1090
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->q:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    check-cast v0, Lfno;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    .line 2053
    iput-object v1, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    .line 2095
    sget v0, Lezg$h;->name_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2096
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<font color=\"#ff4141\">*</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2097
    sget v0, Lezg$h;->mobile_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2098
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<font color=\"#ff4141\">*</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2101
    sget v0, Lezg$h;->name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->d:Landroid/widget/EditText;

    .line 2102
    sget v0, Lezg$h;->mobile:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 2103
    sget v0, Lezg$h;->comp_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->f:Landroid/widget/EditText;

    .line 2104
    sget v0, Lezg$h;->post_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->g:Landroid/widget/EditText;

    .line 2105
    sget v0, Lezg$h;->address_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->h:Landroid/widget/TextView;

    .line 2106
    sget v0, Lezg$h;->address:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->i:Landroid/widget/EditText;

    .line 2107
    sget v0, Lezg$h;->mail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->l:Landroid/widget/EditText;

    .line 2108
    sget v0, Lezg$h;->notes:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->m:Landroid/widget/EditText;

    .line 2110
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    if-eqz v0, :cond_5

    .line 2111
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->companyField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->companyField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v0, :cond_1

    .line 2112
    sget v0, Lezg$h;->name_company:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v1, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->companyField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v1, v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    invoke-static {v1}, Lfls;->c(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2113
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->companyField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v0, :cond_10

    sget v0, Lezg$l;->input_required:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 2115
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->titleField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->titleField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v0, :cond_2

    .line 2116
    sget v0, Lezg$h;->name_position:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v1, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->titleField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v1, v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    invoke-static {v1}, Lfls;->c(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2117
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->g:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->titleField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v0, :cond_11

    sget v0, Lezg$l;->input_required:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 2119
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->workstationField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->workstationField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v0, :cond_3

    .line 2120
    sget v0, Lezg$h;->name_address:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v1, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->workstationField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v1, v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    invoke-static {v1}, Lfls;->c(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2121
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->i:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->workstationField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v0, :cond_12

    sget v0, Lezg$l;->input_required:I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 2123
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->mailField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->mailField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v0, :cond_4

    .line 2124
    sget v0, Lezg$h;->name_email:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v1, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->mailField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v1, v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    invoke-static {v1}, Lfls;->c(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2125
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->l:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->mailField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v0, :cond_13

    sget v0, Lezg$l;->input_required:I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 2127
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->remarkField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->remarkField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v0, :cond_5

    .line 2128
    sget v0, Lezg$h;->name_remarks:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v1, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->remarkField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v1, v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    invoke-static {v1}, Lfls;->c(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2129
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->m:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->r:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->remarkField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v0, :cond_14

    sget v0, Lezg$l;->input_required:I

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 2133
    :cond_5
    sget v0, Lezg$h;->address_select_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2134
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2135
    new-instance v1, Lcom/alibaba/android/user/external/list/EditExternalActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/EditExternalActivity$1;-><init>(Lcom/alibaba/android/user/external/list/EditExternalActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2143
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v0, :cond_d

    .line 2144
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2145
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2147
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2148
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2149
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 2150
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setClearAble(Z)V

    .line 2151
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setSelected(Z)V

    .line 2152
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v1, Lcom/alibaba/android/user/external/list/EditExternalActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/EditExternalActivity$2;-><init>(Lcom/alibaba/android/user/external/list/EditExternalActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2163
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->companyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2164
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->companyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2166
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2167
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2169
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgWorkAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2170
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgWorkAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2171
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgWorkAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2173
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-static {v0}, Lfnn;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)[D

    move-result-object v0

    .line 2174
    if-eqz v0, :cond_b

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 2175
    aget-wide v2, v0, v4

    iput-wide v2, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->j:D

    .line 2176
    aget-wide v0, v0, v5

    iput-wide v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->k:D

    .line 2177
    invoke-direct {p0, v4}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->a(Z)V

    .line 2179
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgEmail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2180
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2182
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->remark:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2183
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->remark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2188
    :cond_d
    sget v0, Lezg$h;->custom_field_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->n:Landroid/view/ViewGroup;

    .line 2189
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->g()V

    .line 2190
    iget-wide v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->o:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_e

    .line 2191
    new-instance v1, Lfnr;

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->f:Landroid/widget/EditText;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-direct {v1, v0, p0}, Lfnr;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    iput-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->p:Lfnr;

    .line 2192
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->p:Lfnr;

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->o:J

    invoke-virtual {v0, v2, v3}, Lfnr;->a(J)V

    .line 2285
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->s:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_f

    .line 2286
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2287
    const-string/jumbo v1, "com.workapp.action.poi_info"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2288
    new-instance v1, Lcom/alibaba/android/user/external/list/EditExternalActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/EditExternalActivity$4;-><init>(Lcom/alibaba/android/user/external/list/EditExternalActivity;)V

    iput-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->s:Landroid/content/BroadcastReceiver;

    .line 2319
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 79
    :cond_f
    return-void

    .line 2113
    :cond_10
    sget v0, Lezg$l;->input_optional:I

    goto/16 :goto_0

    .line 2117
    :cond_11
    sget v0, Lezg$l;->input_optional:I

    goto/16 :goto_1

    .line 2121
    :cond_12
    sget v0, Lezg$l;->input_optional:I

    goto/16 :goto_2

    .line 2125
    :cond_13
    sget v0, Lezg$l;->input_optional:I

    goto/16 :goto_3

    .line 2129
    :cond_14
    sget v0, Lezg$l;->input_optional:I

    goto/16 :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 338
    const/4 v1, 0x1

    sget v2, Lezg$l;->save:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 339
    .local v0, "item":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 340
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 332
    .line 2324
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->s:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2325
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->s:Landroid/content/BroadcastReceiver;

    .line 333
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 334
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 345
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 2352
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    .line 2353
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    .line 2354
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->companyName:Ljava/lang/String;

    .line 2355
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgTitle:Ljava/lang/String;

    .line 2356
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgWorkAddress:Ljava/lang/String;

    .line 2357
    iget-wide v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->j:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_3

    iget-wide v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->k:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_3

    .line 2358
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v4, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->j:D

    iget-wide v6, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->k:D

    invoke-static {v0, v4, v5, v6, v7}, Lfnn;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;DD)V

    .line 2362
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgEmail:Ljava/lang/String;

    .line 2363
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->remark:Ljava/lang/String;

    .line 2364
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->n:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->n:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 2365
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2366
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    .line 2368
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->n:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v4, v3

    .line 2369
    :goto_1
    if-ge v4, v5, :cond_4

    .line 2370
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->n:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2371
    sget v0, Lezg$h;->fd_key:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2372
    sget v6, Lezg$h;->fd_value:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2375
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    .line 2376
    if-eqz v1, :cond_1

    iget-object v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemName:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2377
    iput-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    move v1, v2

    .line 2383
    :goto_2
    if-nez v1, :cond_2

    .line 2384
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;-><init>()V

    .line 2385
    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemName:Ljava/lang/String;

    .line 2386
    iput-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    .line 2387
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2369
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 2360
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-static {v0}, Lfnn;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)V

    goto/16 :goto_0

    .line 2392
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->q:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->q:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/user/external/ExternalEditContract$b;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2393
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2394
    const-string/jumbo v1, "employee_info"

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2395
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->setResult(ILandroid/content/Intent;)V

    .line 2396
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->finish()V

    .line 348
    :cond_5
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_6
    move v1, v3

    goto :goto_2
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Lcom/alibaba/android/user/external/ExternalEditContract$b;

    .line 2427
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity;->q:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    .line 46
    return-void
.end method
