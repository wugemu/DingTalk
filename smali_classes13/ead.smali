.class public final Lead;
.super Ldzl;
.source "RecruitmentHrHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ldzl;-><init>()V

    return-void
.end method

.method private static a(Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;)Ljava/lang/String;
    .locals 8
    .param p0, "orgMicroAPPObject"    # Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .prologue
    const/4 v1, 0x0

    .line 173
    if-eqz p0, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-object v1

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 177
    .local v0, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v0, :cond_2

    iget-wide v4, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    const-wide/16 v6, -0x2f

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    iget-wide v4, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    const-wide/16 v6, -0x30

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 178
    :cond_3
    iget-object v1, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->corpId:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lead;Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lead;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .prologue
    .line 34
    invoke-static {p1}, Lead;->a(Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lead;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .param p0, "x0"    # Lead;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 34
    .line 1153
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1154
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1156
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1157
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1158
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 1159
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 1160
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1161
    iget-object v1, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 1162
    if-eqz v1, :cond_3

    iget-wide v6, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    const-wide/16 v8, -0x2f

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    iget-wide v6, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    const-wide/16 v8, -0x30

    cmp-long v1, v6, v8

    if-nez v1, :cond_3

    .line 1163
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v0, v2

    .line 34
    goto :goto_0
.end method

.method static synthetic a(Lead;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lead;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lead;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .param p1, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v2

    sget v3, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e:I

    if-ne v2, v3, :cond_1

    .line 143
    const-string/jumbo v2, "https://pre-recruiment.dingtalk.com/recruiment/mobile/index/?showmenu=false&dd_progress=false&dd_share=false"

    const-string/jumbo v3, "corpId"

    invoke-static {v2, v3, p1}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "url":Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v2

    iget-object v3, p0, Lead;->c:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 145
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "url":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "https://recruiment.dingtalk.com/recruiment/mobile/index?showmenu=false&dd_progress=false&dd_share=false&_wml_code=mt_2018072610101%7C%7C0%7C%7C%7C%7C%7C%7C&_wml_path=pages/company-main/index.js&dd_version=4.5.4.1&fromWeex=juhehuihua"

    const-string/jumbo v3, "corpId"

    invoke-static {v2, v3, p1}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "url":Ljava/lang/String;
    goto :goto_1
.end method

.method static synthetic b(Lead;Ljava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lead;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 34
    .line 2105
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2106
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lead;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2107
    sget v1, Lctk$i;->dt_im_campus_no_permission_to_recruit:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2108
    sget v1, Lctk$i;->dt_common_i_know:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2109
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 2115
    :goto_0
    return-void

    .line 2112
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 2113
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    invoke-static {v0}, Lead;->a(Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;)Ljava/lang/String;

    move-result-object v0

    .line 2114
    invoke-direct {p0, v0}, Lead;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2116
    :cond_2
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lead;->c:Landroid/app/Activity;

    invoke-direct {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2117
    sget v1, Lctk$i;->dt_im_campus_hr_select_enter_org_tips:I

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2118
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    move v1, v0

    .line 2119
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 2120
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2121
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgName:Ljava/lang/String;

    aput-object v0, v3, v1

    .line 2119
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2124
    :cond_4
    new-instance v0, Lead$2;

    invoke-direct {v0, p0, p1}, Lead$2;-><init>(Lead;Ljava/util/List;)V

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2133
    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lctk$g;->im_layout_session_recruitment:I

    return v0
.end method

.method final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 51
    iget-object v2, p0, Lead;->a:Landroid/view/View;

    sget v3, Lctk$f;->tv_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lead;->f:Landroid/widget/TextView;

    .line 52
    iget-object v2, p0, Lead;->f:Landroid/widget/TextView;

    sget v3, Lctk$i;->dt_im_recruitment_hr_publish_job:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 53
    new-instance v0, Lecw;

    iget-object v2, p0, Lead;->c:Landroid/app/Activity;

    sget v3, Lctk$i;->icon_new_recruit_fill:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lctk$c;->im_recruitment_tips_color:I

    .line 54
    invoke-static {v3}, Leda;->b(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 55
    .local v0, "dtIconFontDrawable":Lecw;
    iget-object v2, p0, Lead;->c:Landroid/app/Activity;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 56
    .local v1, "size":I
    invoke-virtual {v0, v5, v5, v1, v1}, Lecw;->setBounds(IIII)V

    .line 57
    iget-object v2, p0, Lead;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 58
    iget-object v2, p0, Lead;->a:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public final d()Lcom/alibaba/android/dingtalkim/session/header/Header;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/alibaba/android/dingtalkim/session/header/Header;->CAMPUS_HR:Lcom/alibaba/android/dingtalkim/session/header/Header;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    new-instance v0, Lead$1;

    invoke-direct {v0, p0}, Lead$1;-><init>(Lead;)V

    .line 101
    .local v0, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Lcma;)V

    .line 102
    return-void
.end method
