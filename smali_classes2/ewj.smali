.class public final Lewj;
.super Ljava/lang/Object;
.source "TeleConfMenuManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lewj$a;,
        Lewj$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field public c:Lewj$b;

.field public d:Z

.field e:Lcom/alibaba/android/teleconf/widget/MenuDialog;

.field public f:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lewj;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 61
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lewj;->a:Ljava/lang/ref/WeakReference;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lewj$b;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "l"    # Lewj$b;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lewj;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lewj;->a:Ljava/lang/ref/WeakReference;

    .line 66
    iput-object p2, p0, Lewj;->c:Lewj$b;

    .line 67
    return-void
.end method

.method public static a(Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    .locals 3
    .param p0, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 200
    new-instance v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    sget v1, Leuj$l;->icon_workphone:I

    sget v2, Leuj$l;->dt_conference_bizcall_name:I

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;-><init>(II)V

    .line 201
    .local v0, "menu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_bizcall_employee_free:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1085
    iput-object v1, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->e:Ljava/lang/String;

    .line 1125
    iput-object p0, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 203
    return-object v0
.end method

.method public static a(Landroid/content/DialogInterface$OnClickListener;ZZ)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    .locals 4
    .param p0, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p1, "beWithNote"    # Z
    .param p2, "beConf"    # Z

    .prologue
    .line 241
    if-eqz p2, :cond_1

    .line 242
    invoke-static {}, Lewp;->e()I

    move-result v1

    .line 246
    .local v1, "resId":I
    :goto_0
    new-instance v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    sget v2, Leuj$l;->icon_voipphone:I

    invoke-direct {v0, v2, v1}, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;-><init>(II)V

    .line 5125
    .local v0, "menu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    iput-object p0, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 248
    if-eqz p1, :cond_0

    .line 249
    if-eqz p2, :cond_2

    .line 250
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Leuj$l;->dt_conference_recommend:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6085
    iput-object v2, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->e:Ljava/lang/String;

    .line 255
    :cond_0
    :goto_1
    return-object v0

    .line 244
    .end local v0    # "menu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    .end local v1    # "resId":I
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Lewp;->a(Z)I

    move-result v1

    .restart local v1    # "resId":I
    goto :goto_0

    .line 252
    .restart local v0    # "menu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Leuj$l;->dt_conference_free:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7085
    iput-object v2, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->e:Ljava/lang/String;

    goto :goto_1
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    .locals 4
    .param p0, "toUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p1, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "withExtraAction"    # Z
    .param p3, "extraActionName"    # Ljava/lang/String;
    .param p4, "onExtraClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 222
    new-instance v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    sget v2, Leuj$l;->icon_mobilephone:I

    sget v3, Leuj$l;->dt_conference_single_normalcall:I

    invoke-direct {v0, v2, v3}, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;-><init>(II)V

    .line 2125
    .local v0, "menu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    iput-object p1, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 224
    if-eqz p0, :cond_0

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDingSimCard:Z

    if-eqz v2, :cond_0

    .line 225
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 226
    .local v1, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDingSimCard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Leuj$l;->dt_conference_call_each_other_free:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3085
    iput-object v2, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->e:Ljava/lang/String;

    .line 3149
    .end local v1    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_0
    iput-boolean p2, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->l:Z

    .line 231
    if-eqz p2, :cond_1

    .line 3157
    iput-object p3, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->k:Ljava/lang/String;

    .line 233
    const/4 v2, 0x0

    .line 3165
    iput-boolean v2, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->m:Z

    .line 4133
    iput-object p4, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 236
    :cond_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    :cond_0
    const/4 v0, 0x0

    .line 328
    :goto_0
    return-object v0

    .line 326
    :cond_1
    new-instance v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    invoke-direct {v0, p1, p0}, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .local v0, "menu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    sget-object v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;->MENU_TYPE_LIST:Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

    .line 10137
    iput-object v1, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->j:Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

    goto :goto_0
.end method

.method public static b(Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    .locals 3
    .param p0, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 276
    new-instance v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    sget v1, Leuj$l;->icon_eapp_more:I

    sget v2, Leuj$l;->dt_tele_more_call_method:I

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;-><init>(II)V

    .line 7125
    .local v0, "menu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    iput-object p0, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 278
    return-object v0
.end method

.method public static c(Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    .locals 3
    .param p0, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 285
    new-instance v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    sget v1, Leuj$l;->icon_videomeeting:I

    const/4 v2, 0x1

    invoke-static {v2}, Lewp;->b(Z)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;-><init>(II)V

    .line 8125
    .local v0, "menu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    iput-object p0, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 287
    return-object v0
.end method

.method public static d(Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    .locals 3
    .param p0, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 301
    new-instance v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    sget v1, Leuj$l;->icon_workphone:I

    sget v2, Leuj$l;->dt_conference_start_btntitle_voipconf:I

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;-><init>(II)V

    .line 9125
    .local v0, "menu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    iput-object p0, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 303
    return-object v0
.end method

.method public static e(Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    .locals 3
    .param p0, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 307
    new-instance v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    sget v1, Leuj$l;->icon_videomeeting:I

    sget v2, Leuj$l;->dt_conference_start_btntitle_videoconf:I

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;-><init>(II)V

    .line 10125
    .local v0, "menu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    iput-object p0, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 309
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/DialogInterface$OnClickListener;Z)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    .locals 4
    .param p1, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "beWithNote"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 259
    const/4 v2, 0x0

    .line 260
    .local v2, "withNote":Z
    if-eqz p2, :cond_0

    .line 262
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 263
    .local v1, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDingSimCard()Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    const/4 v2, 0x1

    .line 267
    .end local v1    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_0
    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lewj;->a(Landroid/content/DialogInterface$OnClickListener;ZZ)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v0

    .line 268
    .local v0, "menu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    return-object v0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    .locals 2
    .param p1, "toUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 207
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v1, v1}, Lewj;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lewj;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lewj;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 169
    :cond_0
    iget-object v0, p0, Lewj;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lewj;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->dismiss()V

    .line 172
    :cond_1
    iget-object v0, p0, Lewj;->f:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lewj;->f:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->dismiss()V

    .line 175
    :cond_2
    iput-object v1, p0, Lewj;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 176
    iput-object v1, p0, Lewj;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    .line 177
    iput-object v1, p0, Lewj;->f:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    .line 178
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Z)V
    .locals 9
    .param p1, "toUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p3, "isResetOnDismiss"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p2, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    const/4 v8, 0x1

    .line 424
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lewj;->a:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v4, p0, Lewj;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 428
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 431
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 432
    .local v3, "toUserName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    if-eq v4, v8, :cond_3

    :cond_2
    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iget-object v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 433
    invoke-static {v4, v5}, Leyv;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 434
    :cond_3
    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->workMobile:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 435
    .local v1, "mobile":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Leyv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 437
    .end local v1    # "mobile":Ljava/lang/String;
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 438
    const-string/jumbo v3, ""

    .line 440
    :cond_5
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Leuj$l;->dt_conf_callselect_btn_make_call:I

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string/jumbo v5, " "

    aput-object v5, v4, v8

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p0, v2, p2, p3}, Lewj;->a(Ljava/lang/String;Ljava/util/List;Z)V

    goto :goto_0

    .line 434
    .end local v2    # "title":Ljava/lang/String;
    :cond_6
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->workMobile:Ljava/lang/String;

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p4, "isResetOnDismiss"    # Z
    .param p5, "isSelectable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 341
    .local p3, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lewj;->a:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v2, p0, Lewj;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 345
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    iget-boolean v2, p0, Lewj;->d:Z

    if-eqz v2, :cond_2

    .line 349
    const/4 v2, 0x0

    iput-object v2, p0, Lewj;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    .line 351
    :cond_2
    iget-object v2, p0, Lewj;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    if-nez v2, :cond_3

    .line 352
    iget-object v2, p0, Lewj;->c:Lewj$b;

    if-eqz v2, :cond_9

    .line 353
    new-instance v2, Lcom/alibaba/android/teleconf/widget/MenuDialog;

    iget-object v3, p0, Lewj;->c:Lewj$b;

    invoke-direct {v2, v0, v3}, Lcom/alibaba/android/teleconf/widget/MenuDialog;-><init>(Landroid/content/Context;Lewj$b;)V

    iput-object v2, p0, Lewj;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    .line 358
    :cond_3
    :goto_1
    iget-object v2, p0, Lewj;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    new-instance v3, Lewj$2;

    invoke-direct {v3, p0}, Lewj$2;-><init>(Lewj;)V

    .line 10329
    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 367
    if-eqz p4, :cond_4

    .line 368
    iget-object v2, p0, Lewj;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    new-instance v3, Lewj$3;

    invoke-direct {v3, p0}, Lewj$3;-><init>(Lewj;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 375
    :cond_4
    if-eqz p5, :cond_5

    .line 376
    iget-object v2, p0, Lewj;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    .line 10338
    iput-boolean p5, v2, Lcom/alibaba/android/teleconf/widget/MenuDialog;->f:Z

    .line 379
    :cond_5
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    .line 380
    .local v1, "menu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    if-eqz v1, :cond_6

    .line 11081
    iget-object v3, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->e:Ljava/lang/String;

    .line 381
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 11141
    iget-object v3, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->j:Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

    .line 382
    sget-object v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;->MENU_TYPE_DEFAULT:Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

    if-ne v3, v4, :cond_6

    .line 383
    const/4 v2, 0x1

    .line 12093
    iput-boolean v2, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->f:Z

    .line 387
    .end local v1    # "menu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 388
    iget-object v2, p0, Lewj;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-virtual {v2, p3}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->a(Ljava/util/List;)Lcom/alibaba/android/teleconf/widget/MenuDialog;

    .line 393
    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 394
    iget-object v2, p0, Lewj;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    .line 12297
    iput-object p2, v2, Lcom/alibaba/android/teleconf/widget/MenuDialog;->c:Ljava/lang/String;

    .line 397
    :cond_8
    iget-object v2, p0, Lewj;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 398
    iget-object v2, p0, Lewj;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->show()V

    goto/16 :goto_0

    .line 355
    :cond_9
    new-instance v2, Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-direct {v2, v0}, Lcom/alibaba/android/teleconf/widget/MenuDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lewj;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    goto :goto_1

    .line 390
    :cond_a
    iget-object v2, p0, Lewj;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    .line 12293
    iput-object p1, v2, Lcom/alibaba/android/teleconf/widget/MenuDialog;->b:Ljava/lang/String;

    .line 390
    invoke-virtual {v2, p3}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->a(Ljava/util/List;)Lcom/alibaba/android/teleconf/widget/MenuDialog;

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p2, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    const/4 v4, 0x1

    .line 445
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lewj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 446
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p3, "quickStartSource"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;",
            ">;",
            "Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 332
    .local p2, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    if-eqz p3, :cond_0

    .line 333
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 334
    .local v0, "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    invoke-virtual {p3}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->valueOf()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "phone_calllist_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 337
    .end local v0    # "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lewj;->a(Ljava/lang/String;Ljava/util/List;Z)V

    .line 338
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p3, "isResetOnDismiss"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 407
    .local p2, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lewj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 408
    return-void
.end method
