.class public abstract Lbzd;
.super Ljava/lang/Object;
.source "PermissionCallbackAdapter.java"

# interfaces
.implements Lbzc;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mFragment:Landroid/support/v4/app/Fragment;

.field protected mPermissions:[Ljava/lang/String;

.field protected mRequestCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;I[Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    iput-object p1, p0, Lbzd;->mActivity:Landroid/app/Activity;

    .line 34
    iput p2, p0, Lbzd;->mRequestCode:I

    .line 35
    iput-object p3, p0, Lbzd;->mPermissions:[Ljava/lang/String;

    .line 36
    return-void
.end method

.method public init(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    iput-object p1, p0, Lbzd;->mFragment:Landroid/support/v4/app/Fragment;

    .line 27
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lbzd;->mActivity:Landroid/app/Activity;

    .line 28
    iput p2, p0, Lbzd;->mRequestCode:I

    .line 29
    iput-object p3, p0, Lbzd;->mPermissions:[Ljava/lang/String;

    .line 30
    return-void
.end method

.method public onDenied()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 77
    iget-object v0, p0, Lbzd;->mFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lbzd;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lbzd;->mPermissions:[Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    .line 79
    iget-object v0, p0, Lbzd;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lbzd;->mPermissions:[Ljava/lang/String;

    .line 1149
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    .line 1151
    invoke-static {v0, v1}, Lbzw;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 1153
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lbzu;->a(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lbzd;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lbzd;->mPermissions:[Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    .line 82
    iget-object v0, p0, Lbzd;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lbzd;->mPermissions:[Ljava/lang/String;

    invoke-static {v0, v1}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNeverAsk()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 88
    iget-object v0, p0, Lbzd;->mFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lbzd;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lbzd;->mPermissions:[Ljava/lang/String;

    .line 1173
    invoke-static {v0, v1}, Lbzw;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lbzd;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lbzd;->mPermissions:[Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onNeverAsk:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lbzd;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lbzd;->mPermissions:[Ljava/lang/String;

    .line 1180
    invoke-static {v0, v1}, Lbzw;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lbzd;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lbzd;->mPermissions:[Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onNeverAsk:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method public showRation()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 40
    iget-object v0, p0, Lbzd;->mFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lbzd;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lbzd;->mPermissions:[Ljava/lang/String;

    new-instance v2, Lbzd$1;

    invoke-direct {v2, p0}, Lbzd$1;-><init>(Lbzd;)V

    invoke-static {v0, v1, v2}, Lbyy;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lbyx;)V

    .line 73
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lbzd;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lbzd;->mPermissions:[Ljava/lang/String;

    new-instance v2, Lbzd$2;

    invoke-direct {v2, p0}, Lbzd$2;-><init>(Lbzd;)V

    invoke-static {v0, v1, v2}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;Lbyx;)V

    goto :goto_0
.end method
