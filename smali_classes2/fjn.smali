.class public final Lfjn;
.super Ljava/lang/Object;
.source "LocalContactFragmentPermissionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfjn$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    sput-object v0, Lfjn;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static a(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;)V
    .locals 3
    .param p0, "target"    # Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lfjn;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->k()V

    .line 31
    :goto_0
    return-void

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lfjn;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    sget-object v0, Lfjn;->a:[Ljava/lang/String;

    new-instance v1, Lfjn$a;

    invoke-direct {v1, p0, v2}, Lfjn$a;-><init>(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;B)V

    invoke-static {p0, v0, v1}, Lbyy;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lbyx;)V

    .line 25
    sget-object v0, Lfjn;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->showRation:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 27
    :cond_1
    sget-object v0, Lfjn;->a:[Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->requestPermissions([Ljava/lang/String;I)V

    .line 28
    sget-object v0, Lfjn;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;I[I)V
    .locals 7
    .param p0, "target"    # Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;
    .param p1, "requestCode"    # I
    .param p2, "grantResults"    # [I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    packed-switch p1, :pswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 37
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lfjn;->a:[Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->k()V

    .line 39
    sget-object v0, Lfjn;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->grant:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lfjn;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1203
    const-string/jumbo v0, "general_open_mobilecontact_click"

    const-string/jumbo v1, "access=%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1315
    invoke-static {v6, v0, v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1204
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_user_contact_permission"

    invoke-virtual {v0, v1, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1205
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->m()V

    .line 43
    :goto_1
    sget-object v0, Lfjn;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onNeverAsk:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 1207
    :cond_1
    const-string/jumbo v0, "general_open_mobilecontact_click"

    const-string/jumbo v1, "access=%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 2315
    invoke-static {v6, v0, v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1208
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    aput-object v2, v1, v4

    .line 3180
    invoke-static {v0, v1}, Lbzw;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->l()V

    .line 46
    sget-object v0, Lfjn;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lfjn;->a:[Ljava/lang/String;

    return-object v0
.end method
