.class public final Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;
.super Ljava/lang/Object;
.source "MiniAppPermissionHintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;
    }
.end annotation


# static fields
.field public static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;


# instance fields
.field private f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1079
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1080
    sput-object v0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "device.geolocation.get"

    sget-object v2, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;->LOCATION:Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2070
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2072
    sput-object v0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->b:Ljava/util/HashSet;

    const-string/jumbo v1, "device.geolocation.get"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3062
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->c:Ljava/util/HashSet;

    .line 3066
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->d:Ljava/util/HashSet;

    .line 51
    return-void
.end method

.method public static declared-synchronized a()Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;
    .locals 2

    .prologue
    .line 43
    const-class v1, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->e:Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;-><init>()V

    sput-object v0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->e:Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;

    .line 46
    :cond_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->e:Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 8
    .param p1, "miniAppId"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 181
    .line 4208
    :try_start_0
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v4

    .line 4209
    if-nez v4, :cond_2

    .line 181
    :cond_0
    :goto_0
    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 182
    .local v0, "hintView":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    if-nez v0, :cond_3

    .line 205
    .end local v0    # "hintView":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    :cond_1
    :goto_1
    return-void

    .line 4212
    :cond_2
    invoke-interface {v4}, Liop;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v4

    .line 4213
    if-eqz v4, :cond_0

    .line 4216
    invoke-interface {v4}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getContentView()Landroid/view/View;

    move-result-object v4

    .line 4217
    if-eqz v4, :cond_0

    .line 4220
    sget v5, Lhdn$h;->title_bar_hint:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 185
    .restart local v0    # "hintView":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    :cond_3
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 186
    .local v1, "permissionTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;>;"
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 187
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

    .line 189
    .local v2, "showPermission":Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4

    .line 190
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setAlpha(F)V

    .line 191
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 192
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 195
    :cond_4
    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;->getHintIconResId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 202
    .end local v0    # "hintView":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .end local v1    # "permissionTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;>;"
    .end local v2    # "showPermission":Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;
    :catch_0
    move-exception v3

    .line 203
    .local v3, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 197
    .end local v3    # "throwable":Ljava/lang/Throwable;
    .restart local v0    # "hintView":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .restart local v1    # "permissionTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;>;"
    :cond_5
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 198
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 199
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;)V
    .locals 6
    .param p1, "miniAppId"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p3, "type"    # Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 123
    monitor-enter p0

    .line 3140
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p3, :cond_1

    .line 124
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :goto_1
    monitor-exit p0

    return-void

    .line 3143
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3144
    if-nez v1, :cond_2

    .line 3145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3146
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3147
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3157
    :goto_2
    const-string/jumbo v2, "MiniAppPHM"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "add app permission, appId ="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ", permission type ="

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "permission stack ="

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "throwable":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 123
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    move v3, v2

    .line 3150
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    .line 3151
    invoke-virtual {p3}, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;->getPriority()I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;->getPriority()I

    move-result v2

    if-ge v4, v2, :cond_3

    .line 3150
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 3155
    :cond_3
    invoke-virtual {v1, v3, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public final declared-synchronized b(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;)V
    .locals 6
    .param p1, "miniAppId"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p3, "type"    # Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 132
    monitor-enter p0

    .line 3162
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p3, :cond_1

    .line 133
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :goto_1
    monitor-exit p0

    return-void

    .line 3165
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3166
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 3169
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3170
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p3, :cond_3

    .line 3171
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3175
    :cond_2
    const-string/jumbo v2, "MiniAppPHM"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "remove app permission, appId ="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ", permission type ="

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "permission stack ="

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object v1, v3, v4

    .line 4098
    const-string/jumbo v1, "mini_api"

    invoke-static {v1, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "throwable":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 132
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 3169
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method
