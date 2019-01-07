.class public final Ldgg;
.super Ljava/lang/Object;
.source "ChatThemePresenter.java"

# interfaces
.implements Ldgf$a;


# instance fields
.field a:Ldgf$b;

.field b:Ldge;

.field private c:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

.field private d:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

.field private e:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;


# direct methods
.method public constructor <init>(Ldgf$b;)V
    .locals 1
    .param p1, "view"    # Ldgf$b;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Ldgg;->a:Ldgf$b;

    .line 48
    iget-object v0, p0, Ldgg;->a:Ldgf$b;

    invoke-interface {v0, p0}, Ldgf$b;->setPresenter(Lcjd;)V

    .line 49
    return-void
.end method

.method private static a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 13
    .param p0, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 315
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-nez v8, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-object v6

    .line 318
    :cond_1
    const/4 v4, 0x0

    .line 320
    .local v4, "results":Ljava/util/ArrayList;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "com.workapp.choose.pictire.from.album.results"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    .line 321
    .local v5, "serializable":Ljava/io/Serializable;
    instance-of v8, v5, Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    .line 322
    move-object v0, v5

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v5    # "serializable":Ljava/io/Serializable;
    :cond_2
    :goto_1
    const/4 v6, 0x0

    .line 329
    .local v6, "url":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 330
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 331
    .local v2, "object":Ljava/lang/Object;
    instance-of v8, v2, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    if-eqz v8, :cond_0

    move-object v3, v2

    .line 332
    check-cast v3, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 334
    .local v3, "result":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    iget-object v6, v3, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 335
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 336
    iget-object v6, v3, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    goto :goto_0

    .line 324
    .end local v2    # "object":Ljava/lang/Object;
    .end local v3    # "result":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    .end local v6    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "im"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const-string/jumbo v10, "ChatThemePresenter.getUrlFromAlbum error="

    aput-object v10, v9, v12

    const/4 v10, 0x1

    .line 326
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 325
    invoke-static {v8, v6, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 340
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "url":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "choose_picture_ids"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 342
    .local v7, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 343
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "url":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "url":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    iget-object v1, p0, Ldgg;->a:Ldgf$b;

    invoke-interface {v1}, Ldgf$b;->b()V

    .line 70
    new-instance v1, Ldgg$1;

    invoke-direct {v1, p0}, Ldgg$1;-><init>(Ldgg;)V

    const-class v2, Lcma;

    iget-object v3, p0, Ldgg;->a:Ldgf$b;

    .line 99
    invoke-interface {v3}, Ldgf$b;->e()Landroid/app/Activity;

    move-result-object v3

    .line 70
    invoke-static {v1, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 100
    .local v0, "listener":Lcma;
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v1

    invoke-virtual {v1}, Ldyn;->h()Ldfs;

    move-result-object v1

    iget-object v2, p0, Ldgg;->a:Ldgf$b;

    invoke-interface {v2}, Ldgf$b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ldfs;->a(Ljava/lang/String;Lcma;)V

    .line 101
    return-void
.end method

.method public final a(I)V
    .locals 4
    .param p1, "requestCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "album_single"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    const-string/jumbo v1, "allow_check_origin_origin_picture"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    const-string/jumbo v1, "album_need_crop"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    const-string/jumbo v1, "is_start_for_result"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    const-string/jumbo v1, "send_origin_picture"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v2, p0, Ldgg;->a:Ldgf$b;

    invoke-interface {v2}, Ldgf$b;->e()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, p1, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;ILandroid/os/Bundle;)V

    .line 112
    return-void
.end method

.method public final a(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    invoke-static {p2}, Ldgg;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 1189
    :cond_0
    iget-object v1, p0, Ldgg;->a:Ldgf$b;

    invoke-interface {v1}, Ldgf$b;->b()V

    .line 1190
    new-instance v1, Ldgg$2;

    invoke-direct {v1, p0, p1, v0}, Ldgg$2;-><init>(Ldgg;ILjava/lang/String;)V

    .line 1224
    const-class v2, Lifv;

    iget-object v3, p0, Ldgg;->a:Ldgf$b;

    invoke-interface {v3}, Ldgf$b;->e()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lifv;

    .line 1225
    invoke-static {}, Lify;->a()Lify;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lify;->a(Ljava/lang/String;Lifv;)V

    goto :goto_0
.end method

.method public final b()Ldge;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Ldgg;->b:Ldge;

    return-object v0
.end method

.method public final c()Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    iget-object v0, p0, Ldgg;->c:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Ldgg;->c:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    .line 151
    :goto_0
    return-object v0

    .line 141
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;-><init>()V

    iput-object v0, p0, Ldgg;->c:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    .line 142
    iget-object v0, p0, Ldgg;->c:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v1, p0, Ldgg;->a:Ldgf$b;

    invoke-interface {v1}, Ldgf$b;->e()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lctk$i;->dt_im_chat_background_default:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeName:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Ldgg;->c:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    const/4 v1, 0x2

    iput v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->type:I

    .line 144
    iget-object v0, p0, Ldgg;->c:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    const-wide/16 v2, 0x1

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeId:J

    .line 145
    iget-object v0, p0, Ldgg;->c:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->version:I

    .line 146
    invoke-static {}, Lcms;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcms;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    :cond_1
    iget-object v0, p0, Ldgg;->c:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    const-string/jumbo v1, "@lALPBbCc1eJR5PrNAZDNAZA"

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeThumb:Ljava/lang/String;

    .line 151
    :goto_1
    iget-object v0, p0, Ldgg;->c:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    goto :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Ldgg;->c:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    const-string/jumbo v1, "@lALPBbCc1eJRhBfNAZDNAZA"

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeThumb:Ljava/lang/String;

    goto :goto_1
.end method

.method public final d()Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 157
    iget-object v0, p0, Ldgg;->b:Ldge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldgg;->b:Ldge;

    iget-object v0, v0, Ldge;->b:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Ldgg;->b:Ldge;

    iget-object v0, v0, Ldge;->b:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v1, p0, Ldgg;->a:Ldgf$b;

    invoke-interface {v1}, Ldgf$b;->e()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lctk$i;->dt_im_chat_background_custom:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeName:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Ldgg;->b:Ldge;

    iget-object v0, v0, Ldge;->b:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    .line 167
    :goto_0
    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Ldgg;->d:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    if-nez v0, :cond_1

    .line 162
    new-instance v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;-><init>()V

    iput-object v0, p0, Ldgg;->d:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    .line 163
    iget-object v0, p0, Ldgg;->d:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    const/4 v1, 0x2

    iput v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->type:I

    .line 166
    :cond_1
    iget-object v0, p0, Ldgg;->d:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v1, p0, Ldgg;->a:Ldgf$b;

    invoke-interface {v1}, Ldgf$b;->e()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lctk$i;->dt_im_chat_background_custom:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeName:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Ldgg;->d:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    goto :goto_0
.end method

.method public final e()Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    iget-object v0, p0, Ldgg;->b:Ldge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldgg;->b:Ldge;

    iget-object v0, v0, Ldge;->a:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Ldgg;->b:Ldge;

    iget-object v0, v0, Ldge;->a:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v1, p0, Ldgg;->a:Ldgf$b;

    invoke-interface {v1}, Ldgf$b;->e()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lctk$i;->dt_im_chat_group_background:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeName:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Ldgg;->b:Ldge;

    iget-object v0, v0, Ldge;->a:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    .line 183
    :goto_0
    return-object v0

    .line 177
    :cond_0
    iget-object v0, p0, Ldgg;->e:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;-><init>()V

    iput-object v0, p0, Ldgg;->e:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    .line 179
    iget-object v0, p0, Ldgg;->e:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->type:I

    .line 182
    :cond_1
    iget-object v0, p0, Ldgg;->e:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v1, p0, Ldgg;->a:Ldgf$b;

    invoke-interface {v1}, Ldgf$b;->e()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lctk$i;->dt_im_chat_group_background:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeName:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Ldgg;->e:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method
