.class public final Lglr;
.super Ljava/lang/Object;
.source "CSpaceAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lglr$j;,
        Lglr$c;,
        Lglr$i;,
        Lglr$b;,
        Lglr$h;,
        Lglr$e;,
        Lglr$g;,
        Lglr$a;,
        Lglr$d;,
        Lglr$k;,
        Lglr$f;
    }
.end annotation


# instance fields
.field private a:Lglr$a;

.field private b:Lglr$g;

.field private c:Lglr$e;

.field private d:Lglr$h;

.field private e:Lglr$b;

.field private f:Lglr$i;

.field private g:Lglr$c;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lglr;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 362
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "cspace_file_action_filelink_v2_enable_android"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(J)Z
    .locals 2
    .param p0, "orgId"    # J

    .prologue
    .line 417
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "msg_reaction_card"

    invoke-virtual {v0, v1, p0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method static a(JLcom/alibaba/alimei/cspace/model/DentryModel;Z)Z
    .locals 4
    .param p0, "orgId"    # J
    .param p2, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p3, "isPreview"    # Z

    .prologue
    .line 327
    invoke-static {p2}, Lglr;->w(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lglr;->v(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lglr;->r(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 1
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 244
    invoke-static {p0}, Lglr;->w(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lglr;->v(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z
    .locals 1
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p1, "orgId"    # J

    .prologue
    .line 268
    invoke-static {p0}, Lglr;->w(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lglr;->u(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lglr;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Z)Z
    .locals 1
    .param p0, "canReleaseEditLock"    # Z

    .prologue
    .line 340
    invoke-static {}, Lglr;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 370
    invoke-static {}, Lglr;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lglr;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 1
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 248
    invoke-static {p0}, Lglr;->w(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lglr;->v(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Lcom/alibaba/alimei/cspace/model/DentryModel;J)Z
    .locals 1
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p1, "orgId"    # J

    .prologue
    .line 272
    invoke-static {p0}, Lglr;->w(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lglr;->u(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lglr;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 377
    invoke-static {}, Lcms;->e()Z

    move-result v2

    if-nez v2, :cond_1

    .line 383
    :cond_0
    :goto_0
    return v0

    .line 380
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 383
    goto :goto_0
.end method

.method static c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 1
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 252
    invoke-static {p0}, Lglr;->w(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lglr;->v(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 387
    invoke-static {}, Lglr;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 388
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "cspace_hybrid_edit_enable_v4"

    invoke-virtual {v2, v3, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 389
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "cspace_online_edit_word_enable_v4"

    invoke-virtual {v2, v3, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 390
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "cspace_online_edit_excel_enable_v4"

    invoke-virtual {v2, v3, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 391
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "cspace_online_edit_ppt_enable_v4"

    invoke-virtual {v2, v3, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static d(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 1
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 256
    invoke-static {p0}, Lglr;->w(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lglr;->v(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 395
    invoke-static {}, Lglr;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 396
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "cspace_hybrid_edit_enable_v4"

    invoke-virtual {v2, v3, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "cspace_local_edit_enable_v4"

    invoke-virtual {v2, v3, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 1
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 260
    invoke-static {p0}, Lglr;->w(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lglr;->v(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1455
    invoke-static {p0}, Lgpr;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    .line 260
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 401
    invoke-static {}, Lglr;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 402
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_space_local_edit_write_enable"

    .line 6083
    invoke-virtual {v2, v3, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 402
    if-eqz v2, :cond_0

    .line 403
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "cspace_local_edit_write_enable_android_v3"

    invoke-virtual {v2, v3, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static f(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 1
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 264
    invoke-static {p0}, Lglr;->w(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2455
    invoke-static {p0}, Lgpr;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    .line 264
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g()Z
    .locals 2

    .prologue
    .line 407
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "cspace_upload_override_enable"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static g(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 1
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 276
    invoke-static {p0}, Lglr;->w(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lglr;->u(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 412
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "cspace_filelist_switch_enable_android"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_cspace_grid_file_list_enable"

    .line 7083
    invoke-virtual {v1, v2, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 413
    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static h(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 1
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 280
    invoke-static {p0}, Lglr;->w(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lglr;->v(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lgpr;->f(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static i(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 2
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v0, 0x0

    .line 287
    invoke-static {p0}, Lglr;->r(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lglr;->w(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lglr;->v(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    invoke-static {p0}, Lglr;->s(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lglr;->h(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 290
    :cond_0
    return v0
.end method

.method public static j(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 2
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v0, 0x0

    .line 294
    invoke-static {p0}, Lglr;->h(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    invoke-static {p0}, Lglr;->w(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lglr;->t(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lglr;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    invoke-static {p0}, Lglr;->v(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lgpr;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static k(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 2
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v0, 0x0

    .line 304
    invoke-static {p0}, Lglr;->i(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v0

    .line 309
    :cond_1
    invoke-static {p0}, Lglr;->r(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lglr;->w(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lglr;->t(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lglr;->v(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    invoke-static {p0}, Lglr;->s(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lgpr;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static l(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 1
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 332
    invoke-static {p0}, Lglr;->w(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lglr;->u(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static m(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 1
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 336
    invoke-static {p0}, Lglr;->w(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lglr;->u(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static n(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 1
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 344
    invoke-static {p0}, Lglr;->w(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lglr;->v(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lglr;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lglr;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static o(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 1
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 348
    invoke-static {p0}, Lglr;->w(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lglr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lglr;->u(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static p(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 3
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 352
    .line 5349
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isSoft()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 352
    :goto_0
    if-eqz v2, :cond_1

    invoke-static {}, Lglr;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5463
    invoke-static {p0}, Lgpv;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    .line 352
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 5349
    goto :goto_0

    :cond_1
    move v0, v1

    .line 352
    goto :goto_1
.end method

.method static q(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 2
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 426
    .line 427
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-static {p0, v0}, Lgpr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static r(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 1
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 459
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static s(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 5
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v2, 0x1

    .line 316
    invoke-static {p0}, Lglr;->r(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    .line 3366
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v4

    invoke-virtual {v4, v3}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v3

    .line 316
    if-eqz v3, :cond_2

    .line 317
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v4, "f_spcae_acl_file_logic_enable"

    .line 4083
    invoke-virtual {v3, v4, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 317
    if-eqz v3, :cond_2

    .line 318
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgqd;->c(Ljava/lang/String;)Z

    move-result v0

    .line 319
    .local v0, "isAdmin":Z
    invoke-static {p0}, Lglr;->q(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    .line 320
    .local v1, "isCreator":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 322
    .end local v0    # "isAdmin":Z
    .end local v1    # "isCreator":Z
    :cond_0
    :goto_0
    return v2

    .line 320
    .restart local v0    # "isAdmin":Z
    .restart local v1    # "isCreator":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 322
    .end local v0    # "isAdmin":Z
    .end local v1    # "isCreator":Z
    :cond_2
    invoke-static {p0}, Lglr;->q(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    goto :goto_0
.end method

.method private static t(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 1
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 422
    invoke-static {p0}, Lgpx;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static u(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 1
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 439
    invoke-static {p0}, Lglr;->r(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static v(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 1
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 443
    .line 7463
    invoke-static {p0}, Lgpv;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    .line 443
    if-eqz v0, :cond_0

    invoke-static {p0}, Lglr;->u(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static w(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 1
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 475
    .line 8353
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isSoft()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 475
    goto :goto_0
.end method


# virtual methods
.method public final a(Lglr$f;)Ljava/util/List;
    .locals 3
    .param p1, "param"    # Lglr$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lglr$f;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 162
    if-nez p1, :cond_0

    .line 163
    invoke-static {}, Lglp;->a()Ljava/util/List;

    move-result-object v1

    .line 189
    .end local p1    # "param":Lglr$f;
    :goto_0
    return-object v1

    .line 165
    .restart local p1    # "param":Lglr$f;
    :cond_0
    instance-of v1, p1, Lglr$k;

    if-eqz v1, :cond_e

    move-object v0, p1

    .line 166
    check-cast v0, Lglr$k;

    .line 167
    .local v0, "spaceParam":Lglr$k;
    instance-of v1, p1, Lglr$d;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lglr$d;

    iget-object v1, v1, Lglr$d;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v1}, Lgpx;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1193
    iget-object v1, p0, Lglr;->a:Lglr$a;

    if-nez v1, :cond_1

    .line 1194
    new-instance v1, Lglr$a;

    invoke-direct {v1, v2}, Lglr$a;-><init>(B)V

    iput-object v1, p0, Lglr;->a:Lglr$a;

    .line 1196
    :cond_1
    iget-object v1, p0, Lglr;->a:Lglr$a;

    .line 168
    check-cast p1, Lglq$a;

    .end local p1    # "param":Lglr$f;
    invoke-static {p1}, Lglr$a;->a(Lglq$a;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 170
    .restart local p1    # "param":Lglr$f;
    :cond_2
    instance-of v1, p1, Lglv$a;

    if-eqz v1, :cond_4

    iget v1, v0, Lglr$k;->f:I

    invoke-static {v1}, Lgqu;->b(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1200
    iget-object v1, p0, Lglr;->b:Lglr$g;

    if-nez v1, :cond_3

    .line 1201
    new-instance v1, Lglr$g;

    invoke-direct {v1, v2}, Lglr$g;-><init>(B)V

    iput-object v1, p0, Lglr;->b:Lglr$g;

    .line 1203
    :cond_3
    iget-object v1, p0, Lglr;->b:Lglr$g;

    .line 171
    check-cast p1, Lglv$a;

    .end local p1    # "param":Lglr$f;
    invoke-static {p1}, Lglr$g;->a(Lglv$a;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 173
    .restart local p1    # "param":Lglr$f;
    :cond_4
    instance-of v1, p1, Lglu$a;

    if-eqz v1, :cond_6

    iget v1, v0, Lglr$k;->f:I

    invoke-static {v1}, Lgqu;->g(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1207
    iget-object v1, p0, Lglr;->c:Lglr$e;

    if-nez v1, :cond_5

    .line 1208
    new-instance v1, Lglr$e;

    invoke-direct {v1, v2}, Lglr$e;-><init>(B)V

    iput-object v1, p0, Lglr;->c:Lglr$e;

    .line 1210
    :cond_5
    iget-object v1, p0, Lglr;->c:Lglr$e;

    .line 174
    check-cast p1, Lglu$a;

    .end local p1    # "param":Lglr$f;
    invoke-virtual {v1, p1}, Lglr$e;->a(Lglu$a;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 176
    .restart local p1    # "param":Lglr$f;
    :cond_6
    instance-of v1, p1, Lglw$c;

    if-eqz v1, :cond_8

    iget v1, v0, Lglr$k;->f:I

    invoke-static {v1}, Lgqu;->h(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1214
    iget-object v1, p0, Lglr;->d:Lglr$h;

    if-nez v1, :cond_7

    .line 1215
    new-instance v1, Lglr$h;

    invoke-direct {v1, v2}, Lglr$h;-><init>(B)V

    iput-object v1, p0, Lglr;->d:Lglr$h;

    .line 1217
    :cond_7
    iget-object v1, p0, Lglr;->d:Lglr$h;

    .line 177
    check-cast p1, Lglw$c;

    .end local p1    # "param":Lglr$f;
    invoke-virtual {v1, p1}, Lglr$h;->a(Lglw$c;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_0

    .line 179
    .restart local p1    # "param":Lglr$f;
    :cond_8
    instance-of v1, p1, Lgls$c;

    if-eqz v1, :cond_a

    iget v1, v0, Lglr$k;->f:I

    invoke-static {v1}, Lgqu;->d(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1221
    iget-object v1, p0, Lglr;->e:Lglr$b;

    if-nez v1, :cond_9

    .line 1222
    new-instance v1, Lglr$b;

    invoke-direct {v1, v2}, Lglr$b;-><init>(B)V

    iput-object v1, p0, Lglr;->e:Lglr$b;

    .line 1224
    :cond_9
    iget-object v1, p0, Lglr;->e:Lglr$b;

    .line 180
    check-cast p1, Lgls$c;

    .end local p1    # "param":Lglr$f;
    invoke-virtual {v1, p1}, Lglr$b;->a(Lgls$c;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_0

    .line 182
    .restart local p1    # "param":Lglr$f;
    :cond_a
    instance-of v1, p1, Lglx$a;

    if-eqz v1, :cond_c

    iget v1, v0, Lglr$k;->f:I

    invoke-static {v1}, Lgqu;->c(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1228
    iget-object v1, p0, Lglr;->f:Lglr$i;

    if-nez v1, :cond_b

    .line 1229
    new-instance v1, Lglr$i;

    invoke-direct {v1, v2}, Lglr$i;-><init>(B)V

    iput-object v1, p0, Lglr;->f:Lglr$i;

    .line 1231
    :cond_b
    iget-object v1, p0, Lglr;->f:Lglr$i;

    .line 183
    check-cast p1, Lglx$a;

    .end local p1    # "param":Lglr$f;
    invoke-virtual {v1, p1}, Lglr$i;->a(Lglx$a;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_0

    .line 185
    .restart local p1    # "param":Lglr$f;
    :cond_c
    instance-of v1, p1, Lglr$d;

    if-eqz v1, :cond_e

    .line 1235
    iget-object v1, p0, Lglr;->g:Lglr$c;

    if-nez v1, :cond_d

    .line 1236
    new-instance v1, Lglr$c;

    invoke-direct {v1, v2}, Lglr$c;-><init>(B)V

    iput-object v1, p0, Lglr;->g:Lglr$c;

    .line 1238
    :cond_d
    iget-object v1, p0, Lglr;->g:Lglr$c;

    .line 186
    check-cast p1, Lglr$d;

    .end local p1    # "param":Lglr$f;
    invoke-static {p1}, Lglr$c;->a(Lglr$d;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_0

    .line 189
    .end local v0    # "spaceParam":Lglr$k;
    .restart local p1    # "param":Lglr$f;
    :cond_e
    invoke-static {}, Lglp;->a()Ljava/util/List;

    move-result-object v1

    goto/16 :goto_0
.end method
