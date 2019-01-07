.class public Lbzm;
.super Ljava/lang/Object;
.source "NecessaryPermissionsManager.java"


# static fields
.field private static final c:[Ljava/lang/String;

.field private static volatile d:Lbzm;

.field private static e:Landroid/content/Context;


# instance fields
.field public final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lbzl;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 37
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v3

    sput-object v0, Lbzm;->c:[Ljava/lang/String;

    .line 48
    :goto_0
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v4

    sput-object v0, Lbzm;->c:[Ljava/lang/String;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    sput-object p1, Lbzm;->e:Landroid/content/Context;

    .line 58
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbzm;->b:Z

    .line 65
    :goto_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbzm;->a:Ljava/util/HashSet;

    .line 66
    return-void

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lbzm;->e:Landroid/content/Context;

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lbzm;->a()Z

    move-result v0

    iput-boolean v0, p0, Lbzm;->b:Z

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Lbzm;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    sget-object v0, Lbzm;->d:Lbzm;

    if-nez v0, :cond_1

    .line 70
    const-class v1, Lbzm;

    monitor-enter v1

    .line 71
    :try_start_0
    sget-object v0, Lbzm;->d:Lbzm;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lbzm;

    invoke-direct {v0, p0}, Lbzm;-><init>(Landroid/content/Context;)V

    sput-object v0, Lbzm;->d:Lbzm;

    .line 74
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_1
    sget-object v0, Lbzm;->d:Lbzm;

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lbzm;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lbzm;

    .prologue
    .line 25
    iget-object v0, p0, Lbzm;->a:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic a(Lbzm;Landroid/app/Activity;)V
    .locals 5
    .param p0, "x0"    # Lbzm;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 25
    .line 3164
    invoke-static {p1}, Lbzz;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3169
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v3

    invoke-static {p1, v0}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3171
    sget v0, Lbyz$a;->dt_permission_request_message_write_sd:I

    .line 3176
    :goto_0
    if-gtz v0, :cond_2

    .line 3177
    iput-boolean v3, p0, Lbzm;->b:Z

    .line 3218
    :cond_0
    :goto_1
    return-void

    .line 3172
    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3173
    sget v0, Lbyz$a;->dt_permission_request_message_read_phone_state:I

    goto :goto_0

    .line 3180
    :cond_2
    const-string/jumbo v2, "NecessaryPermissionsManager, showDeniedDialog"

    .line 4012
    const-string/jumbo v3, "permission"

    invoke-static {v3, v4, v2}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3182
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lbyz$a;->dt_permission_request_title:I

    .line 3183
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 3184
    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lbyz$a;->dt_common_cancel:I

    new-instance v3, Lbzm$4;

    invoke-direct {v3, p0, p1}, Lbzm$4;-><init>(Lbzm;Landroid/app/Activity;)V

    .line 3185
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lbyz$a;->dt_common_go_setting:I

    new-instance v3, Lbzm$3;

    invoke-direct {v3, p0, p1}, Lbzm$3;-><init>(Lbzm;Landroid/app/Activity;)V

    .line 3194
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lbzm$2;

    invoke-direct {v2, p0}, Lbzm$2;-><init>(Lbzm;)V

    .line 3204
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 3211
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 3212
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 3213
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3215
    :try_start_0
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3216
    :catch_0
    move-exception v0

    .line 3217
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "NecessaryPermissionsManager, showDeniedDialog failed, error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5012
    const-string/jumbo v1, "permission"

    invoke-static {v1, v4, v0}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lbzm;Z)Z
    .locals 0
    .param p0, "x0"    # Lbzm;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lbzm;->b:Z

    return p1
.end method

.method static synthetic b(Lbzm;)V
    .locals 3
    .param p0, "x0"    # Lbzm;

    .prologue
    .line 5223
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5226
    :goto_0
    return-void

    .line 5224
    :catch_0
    move-exception v0

    .line 5225
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "NecessaryPermissionsManager, killProcess failed, error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6012
    const-string/jumbo v1, "permission"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lbzm;->c:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbzm;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 161
    :goto_0
    monitor-exit p0

    return-void

    .line 118
    :cond_0
    :try_start_1
    invoke-static {p1}, Lbzv;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    const-string/jumbo v0, "NecessaryPermissionsManager disabled"

    .line 3012
    const-string/jumbo v1, "permission"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbzm;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 123
    :cond_1
    const/16 v0, 0x3f1

    :try_start_2
    sget-object v1, Lbzm;->c:[Ljava/lang/String;

    new-instance v2, Lbzm$1;

    invoke-direct {v2, p0, p1}, Lbzm$1;-><init>(Lbzm;Landroid/app/Activity;)V

    invoke-static {p1, v0, v1, v2}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final a(Lbzl;)V
    .locals 2
    .param p1, "listener"    # Lbzl;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 83
    iget-object v1, p0, Lbzm;->a:Ljava/util/HashSet;

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v0, p0, Lbzm;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized a()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 99
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lbzm;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 110
    :goto_0
    monitor-exit p0

    return v0

    .line 102
    :cond_0
    :try_start_1
    sget-object v1, Lbzm;->e:Landroid/content/Context;

    invoke-static {v1}, Lbzv;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    const-string/jumbo v1, "NecessaryPermissionsManager disabled"

    .line 1012
    const-string/jumbo v2, "permission"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbzm;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 108
    :cond_1
    :try_start_2
    sget-object v0, Lbzm;->e:Landroid/content/Context;

    sget-object v1, Lbzm;->c:[Ljava/lang/String;

    invoke-static {v0, v1}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lbzm;->b:Z

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NecessaryPermissionsManager.check="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lbzm;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2012
    const-string/jumbo v1, "permission"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-boolean v0, p0, Lbzm;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
