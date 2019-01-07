.class final Lhrf$1;
.super Ljava/lang/Object;
.source "MultiTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhrf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/ActivityManager;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Landroid/app/ActivityManager$RunningTaskInfo;

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/app/ActivityManager;Landroid/app/Activity;Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;ZZLandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lhrf$1;->a:Landroid/app/ActivityManager;

    iput-object p2, p0, Lhrf$1;->b:Landroid/app/Activity;

    iput-object p3, p0, Lhrf$1;->c:Landroid/content/Context;

    iput-object p4, p0, Lhrf$1;->d:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-boolean p5, p0, Lhrf$1;->e:Z

    iput-boolean p6, p0, Lhrf$1;->f:Z

    iput-object p7, p0, Lhrf$1;->g:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v13, 0x10

    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v4, 0x0

    .line 161
    :try_start_0
    iget-object v2, p0, Lhrf$1;->a:Landroid/app/ActivityManager;

    iget-object v5, p0, Lhrf$1;->b:Landroid/app/Activity;

    iget-object v3, p0, Lhrf$1;->c:Landroid/content/Context;

    iget-object v6, p0, Lhrf$1;->d:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v7, p0, Lhrf$1;->e:Z

    iget-boolean v8, p0, Lhrf$1;->f:Z

    iget-object v9, p0, Lhrf$1;->g:Landroid/os/Bundle;

    .line 1212
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    iget-object v5, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_4

    .line 1214
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1215
    iget-object v2, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1216
    const/high16 v2, 0x30000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1217
    if-eqz v9, :cond_0

    .line 1218
    invoke-virtual {v5, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1220
    :cond_0
    const-string/jumbo v2, "MultiTaskManager"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "moveTaskToFrontImpl fromForeground="

    aput-object v10, v6, v9

    const/4 v9, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v6, v9

    invoke-static {v2, v6}, Lhmv;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1221
    if-eqz v8, :cond_3

    .line 1239
    const-string/jumbo v2, "MultiTaskManager"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "startActivityByAnim enter=====>"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v2, v6}, Lhmv;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1241
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1242
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1243
    const-string/jumbo v6, "mini_anim_action"

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1247
    :goto_0
    invoke-static {v5, v7, v2}, Lhom;->a(Landroid/content/Intent;ZI)Landroid/util/Pair;

    move-result-object v6

    .line 1249
    iget-object v2, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1250
    iget-object v2, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1251
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v13, :cond_2

    .line 1252
    invoke-static {v3, v7, v6}, Lce;->a(Landroid/content/Context;II)Lce;

    move-result-object v2

    .line 1253
    invoke-virtual {v2}, Lce;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v3, v5, v2}, Lcd;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 166
    :cond_1
    :goto_1
    return-void

    .line 1255
    :cond_2
    invoke-virtual {v3, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1257
    :try_start_1
    instance-of v2, v3, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 1258
    move-object v0, v3

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v2, v7, v6}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1260
    :catch_0
    move-exception v2

    .line 1261
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 162
    :catch_1
    move-exception v1

    .line 163
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 164
    const-string/jumbo v2, "MultiTaskManager"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "moveTaskToFront2"

    aput-object v5, v3, v4

    const-string/jumbo v4, "exception=>"

    aput-object v4, v3, v12

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {v2, v3}, Lhmv;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1224
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_3
    :try_start_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1226
    :cond_4
    if-eqz v2, :cond_1

    .line 1227
    const-string/jumbo v3, "MultiTaskManager"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "moveTaskToFrontImpl else"

    aput-object v8, v5, v7

    invoke-static {v3, v5}, Lhmv;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1228
    if-eqz v9, :cond_5

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v13, :cond_5

    .line 1229
    iget v3, v6, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v5, v9}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    goto :goto_1

    .line 1231
    :cond_5
    iget v3, v6, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v5}, Landroid/app/ActivityManager;->moveTaskToFront(II)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :cond_6
    move v2, v4

    goto/16 :goto_0
.end method
