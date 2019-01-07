.class public final Lhbp;
.super Ljava/lang/Object;
.source "PickerFragmentPermissionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhbp$a;,
        Lhbp$b;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    sput-object v0, Lhbp;->a:[Ljava/lang/String;

    .line 18
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.CAMERA"

    aput-object v1, v0, v2

    sput-object v0, Lhbp;->b:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)V
    .locals 3
    .param p0, "target"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lhbp;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a()V

    .line 35
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lhbp;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    sget-object v0, Lhbp;->a:[Ljava/lang/String;

    new-instance v1, Lhbp$b;

    invoke-direct {v1, p0, v2}, Lhbp$b;-><init>(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;B)V

    invoke-static {p0, v0, v1}, Lbyy;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lbyx;)V

    .line 29
    sget-object v0, Lhbp;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->showRation:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lhbp;->a:[Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->requestPermissions([Ljava/lang/String;I)V

    .line 32
    sget-object v0, Lhbp;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;I[I)V
    .locals 2
    .param p0, "target"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    .param p1, "requestCode"    # I
    .param p2, "grantResults"    # [I

    .prologue
    .line 53
    packed-switch p1, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 55
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lhbp;->a:[Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a()V

    .line 57
    sget-object v0, Lhbp;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->grant:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lhbp;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lhbp;->a:[Ljava/lang/String;

    .line 1180
    invoke-static {v0, v1}, Lbzw;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 61
    sget-object v0, Lhbp;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onNeverAsk:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lhbp;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 64
    sget-object v0, Lhbp;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 69
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lhbp;->b:[Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->b()V

    .line 71
    sget-object v0, Lhbp;->b:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->grant:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lhbp;->b:[Ljava/lang/String;

    invoke-static {v0, v1}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lhbp;->b:[Ljava/lang/String;

    .line 2180
    invoke-static {v0, v1}, Lbzw;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 75
    sget-object v0, Lhbp;->b:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onNeverAsk:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto/16 :goto_0

    .line 77
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lhbp;->b:[Ljava/lang/String;

    invoke-static {v0, v1}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 78
    sget-object v0, Lhbp;->b:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto/16 :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lhbp;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public static b(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)V
    .locals 3
    .param p0, "target"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lhbp;->b:[Ljava/lang/String;

    invoke-static {v0, v1}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->b()V

    .line 49
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lhbp;->b:[Ljava/lang/String;

    invoke-static {v0, v1}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    sget-object v0, Lhbp;->b:[Ljava/lang/String;

    new-instance v1, Lhbp$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lhbp$a;-><init>(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;B)V

    invoke-static {p0, v0, v1}, Lbyy;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lbyx;)V

    .line 43
    sget-object v0, Lhbp;->b:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->showRation:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 45
    :cond_1
    sget-object v0, Lhbp;->b:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->requestPermissions([Ljava/lang/String;I)V

    .line 46
    sget-object v0, Lhbp;->b:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lhbp;->b:[Ljava/lang/String;

    return-object v0
.end method
