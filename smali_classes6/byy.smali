.class public final Lbyy;
.super Ljava/lang/Object;
.source "PermissionCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "callback"    # Lbzc;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    .line 1051
    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    invoke-static {p2}, Lbzb;->a([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1055
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Params permissions is incorrect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1058
    :cond_2
    instance-of v0, p3, Lbzd;

    if-eqz v0, :cond_3

    move-object v0, p3

    .line 1059
    check-cast v0, Lbzd;

    invoke-virtual {v0, p0, p1, p2}, Lbzd;->init(Landroid/app/Activity;I[Ljava/lang/String;)V

    .line 1061
    :cond_3
    invoke-static {p0, p2}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1063
    invoke-interface {p3}, Lbzc;->grant()V

    goto :goto_0

    .line 1065
    :cond_4
    invoke-static {}, Lbzj;->a()Lbzj;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Lbzj;->a(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1069
    invoke-static {p0, p2}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1070
    invoke-interface {p3}, Lbzc;->showRation()V

    .line 1071
    sget-object v0, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->showRation:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, p2, v0}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 1073
    :cond_5
    invoke-static {p0, p1, p2, p3}, Lbzb;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;[Ljava/lang/String;Lbyx;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "request"    # Lbyx;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 142
    .line 5034
    invoke-static {p0}, Lbzz;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5056
    invoke-static {}, Lbzz;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5057
    invoke-static {p0, p1, p2}, Lbzx;->a(Landroid/app/Activity;[Ljava/lang/String;Lbyx;)V

    :cond_0
    :goto_0
    return-void

    .line 5059
    :cond_1
    new-instance v0, Lbzx$2;

    invoke-direct {v0, p0, p1, p2}, Lbzx$2;-><init>(Landroid/app/Activity;[Ljava/lang/String;Lbyx;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;Lbzc;)V
    .locals 3
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "callback"    # Lbzc;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    .line 1022
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    .line 1042
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    invoke-static {p2}, Lbzb;->a([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1027
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Params permissions is incorrect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1030
    :cond_2
    instance-of v0, p3, Lbzd;

    if-eqz v0, :cond_3

    move-object v0, p3

    .line 1031
    check-cast v0, Lbzd;

    invoke-virtual {v0, p0, p1, p2}, Lbzd;->init(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;)V

    .line 1033
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1035
    invoke-interface {p3}, Lbzc;->grant()V

    goto :goto_0

    .line 1037
    :cond_4
    invoke-static {}, Lbzj;->a()Lbzj;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Lbzj;->a(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1041
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1042
    invoke-interface {p3}, Lbzc;->showRation()V

    goto :goto_0

    .line 1044
    :cond_5
    invoke-static {p0, p1, p2, p3}, Lbzb;->a(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;Lbzc;)V

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lbyx;)V
    .locals 2
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "request"    # Lbyx;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 134
    .line 4027
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbzz;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4043
    :cond_0
    :goto_0
    return-void

    .line 4042
    :cond_1
    invoke-static {}, Lbzz;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4043
    invoke-static {p0, p1, p2}, Lbzx;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lbyx;)V

    goto :goto_0

    .line 4045
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lbzx$1;

    invoke-direct {v1, p0, p1, p2}, Lbzx$1;-><init>(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lbyx;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static varargs a(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 109
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v2, p1

    if-gtz v2, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 114
    .local v0, "permission":Ljava/lang/String;
    sget-object v4, Lbzg;->a:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 115
    invoke-static {p0, v0}, Lcd;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 116
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 112
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 5195
    invoke-static {p0, v0}, Lbzp;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 187
    return v0
.end method

.method public static varargs a(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 65
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v3, p1

    if-gtz v3, :cond_1

    :cond_0
    move v1, v2

    .line 76
    :goto_0
    return v1

    .line 68
    :cond_1
    array-length v4, p1

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v0, p1, v3

    .line 69
    .local v0, "permission":Ljava/lang/String;
    invoke-static {v0}, Lbzy;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    invoke-static {p0, v0}, Lbzy;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Has not permission="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2012
    const-string/jumbo v3, "permission"

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 75
    .end local v0    # "permission":Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->hasSelfPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, p1, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    move v1, v2

    .line 76
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;[I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    const/4 v0, 0x0

    .line 83
    .line 2126
    invoke-static {p0}, Lbzz;->a(Landroid/content/Context;)I

    move-result v1

    .line 83
    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    .line 84
    invoke-static {p0, p1}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3099
    :cond_0
    :goto_0
    return v0

    .line 3094
    :cond_1
    if-eqz p2, :cond_0

    array-length v1, p2

    if-eqz v1, :cond_0

    .line 3097
    array-length v2, p2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget v3, p2, v1

    .line 3098
    if-nez v3, :cond_0

    .line 3097
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3102
    :cond_2
    const/4 v0, 0x1

    .line 87
    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 163
    invoke-static {p0, p1}, Lbzw;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-static {p0, p1}, Lbzu;->a(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0
.end method
