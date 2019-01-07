.class public Lcom/alibaba/android/teleconf/impls/TelPhoneContactInterfaceImpl;
.super Lcom/alibaba/dingtalk/telebase/TelPhoneContactInterface;
.source "TelPhoneContactInterfaceImpl.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/alibaba/android/teleconf/impls/TelPhoneContactInterfaceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/impls/TelPhoneContactInterfaceImpl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/dingtalk/telebase/TelPhoneContactInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactObject"    # Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x2

    .line 238
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;->mUserName:Ljava/lang/String;

    .line 240
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, "insertIntent":Landroid/content/Intent;
    const-string/jumbo v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    iget-object v1, p2, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;->mUserName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 246
    const-string/jumbo v1, "name"

    iget-object v2, p2, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    :cond_2
    iget-object v1, p2, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 249
    const-string/jumbo v1, "phone"

    iget-object v2, p2, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string/jumbo v1, "phone_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    :cond_3
    iget-object v1, p2, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;->mCompany:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 254
    const-string/jumbo v1, "company"

    iget-object v2, p2, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;->mCompany:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    :cond_4
    iget-object v1, p2, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;->mEmail:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 257
    const-string/jumbo v1, "email"

    iget-object v2, p2, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string/jumbo v1, "email_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    :cond_5
    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_6

    .line 262
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 264
    :cond_6
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Lgwt;)Z
    .locals 12
    .param p1, "contactObject"    # Lgwt;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v1, 0x0

    .line 152
    if-eqz p1, :cond_0

    iget-object v0, p1, Lgwt;->a:Ljava/lang/String;

    .line 153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lgwt;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lgwt;->b:Ljava/util/List;

    .line 155
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v11

    .line 177
    :goto_0
    return v0

    .line 158
    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "Add contact "

    aput-object v2, v0, v11

    iget-object v2, p1, Lgwt;->a:Ljava/lang/String;

    aput-object v2, v0, v10

    const/4 v2, 0x2

    const-string/jumbo v3, " with numbers: "

    aput-object v3, v0, v2

    const/4 v2, 0x3

    iget-object v3, p1, Lgwt;->b:Ljava/util/List;

    .line 159
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 158
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 160
    .local v7, "traceLog":Ljava/lang/String;
    const-string/jumbo v0, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/impls/TelPhoneContactInterfaceImpl;->a:Ljava/lang/String;

    invoke-static {v0, v2, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p1, Lgwt;->a:Ljava/lang/String;

    iget-object v2, p1, Lgwt;->b:Ljava/util/List;

    iget-object v3, p1, Lgwt;->c:Ljava/lang/String;

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-static/range {v0 .. v6}, Leyt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 169
    .local v8, "rawContactId":J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_2

    move v0, v10

    .line 175
    goto :goto_0

    :cond_2
    move v0, v11

    .line 177
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "contactName"    # Ljava/lang/String;
    .param p2, "photoData"    # [B
    .param p3, "numberType"    # Ljava/lang/String;
    .param p5, "email"    # Ljava/lang/String;
    .param p6, "website"    # Ljava/lang/String;
    .param p7, "remark"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 115
    .local p4, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    .line 117
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    .line 120
    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Add contact "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " with numbers: "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 121
    .local v7, "traceLog":Ljava/lang/String;
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/impls/TelPhoneContactInterfaceImpl;->a:Ljava/lang/String;

    invoke-static {v0, v1, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p4

    move-object v4, p5

    invoke-static/range {v0 .. v6}, Leyt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 123
    .local v8, "rawContactId":J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    array-length v0, p2

    if-lez v0, :cond_2

    .line 124
    invoke-static {v8, v9, p2}, Leyt;->a(J[B)Z

    .line 125
    const/4 v0, 0x1

    goto :goto_0

    .line 127
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 47
    return-void
.end method

.method public onApplicationCreate()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 51
    invoke-super {p0}, Lcom/alibaba/dingtalk/telebase/TelPhoneContactInterface;->onApplicationCreate()V

    .line 53
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v1

    .line 2248
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    .line 2249
    if-eqz v0, :cond_0

    .line 2252
    iget-object v2, v1, Lewl;->l:Lifn;

    if-nez v2, :cond_3

    .line 2253
    new-instance v2, Lewl$13;

    invoke-direct {v2, v1}, Lewl$13;-><init>(Lewl;)V

    iput-object v2, v1, Lewl;->l:Lifn;

    .line 2279
    :goto_0
    iget-object v1, v1, Lewl;->l:Lifn;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Lifn;)V

    .line 54
    :cond_0
    invoke-static {}, Leww;->a()Leww;

    move-result-object v0

    .line 3148
    invoke-static {}, Leyb;->a()Leyb;

    move-result-object v1

    new-instance v2, Leww$1;

    invoke-direct {v2, v0}, Leww$1;-><init>(Leww;)V

    .line 4058
    const-class v0, Lcom/alibaba/android/teleconf/sdk/idl/service/CloudContactIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/CloudContactIService;

    .line 4059
    if-eqz v0, :cond_1

    .line 4060
    new-instance v3, Leyb$1;

    invoke-direct {v3, v1, v2}, Leyb$1;-><init>(Leyb;Leyo$d;)V

    invoke-interface {v0, v3}, Lcom/alibaba/android/teleconf/sdk/idl/service/CloudContactIService;->queryContacts(Liyv;)V

    .line 55
    :cond_1
    invoke-static {}, Leww;->a()Leww;

    move-result-object v1

    .line 4342
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    .line 4343
    if-eqz v0, :cond_2

    .line 4346
    const-string/jumbo v2, "dt_cloud_contact"

    const-string/jumbo v3, "user_contact_info"

    new-instance v4, Leww$3;

    invoke-direct {v4, v1}, Leww$3;-><init>(Leww;)V

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 4371
    iget-object v2, v1, Leww;->a:Lifn;

    if-nez v2, :cond_2

    .line 4372
    new-instance v2, Leww$4;

    invoke-direct {v2, v1}, Leww$4;-><init>(Leww;)V

    iput-object v2, v1, Leww;->a:Lifn;

    .line 4393
    iget-object v1, v1, Leww;->a:Lifn;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Lifn;)V

    .line 56
    :cond_2
    return-void

    .line 2277
    :cond_3
    iget-object v2, v1, Lewl;->l:Lifn;

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/settings/CloudSettingService;->b(Lifn;)V

    goto :goto_0
.end method
