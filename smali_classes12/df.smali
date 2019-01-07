.class public final Ldf;
.super Ljava/lang/Object;
.source "NotificationCompatJellybean.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/lang/reflect/Field;

.field private static c:Z

.field private static final d:Ljava/lang/Object;

.field private static e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/reflect/Field;

.field private static g:Ljava/lang/reflect/Field;

.field private static h:Ljava/lang/reflect/Field;

.field private static i:Ljava/lang/reflect/Field;

.field private static j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldf;->a:Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldf;->d:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static a(Landroid/app/Notification$Builder;Lde$a;)Landroid/os/Bundle;
    .locals 4
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "action"    # Lde$a;

    .prologue
    .line 277
    invoke-virtual {p1}, Lde$a;->a()I

    move-result v1

    invoke-virtual {p1}, Lde$a;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Lde$a;->c()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 278
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Lde$a;->d()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 279
    .local v0, "actionExtras":Landroid/os/Bundle;
    invoke-virtual {p1}, Lde$a;->g()[Ldk$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 280
    const-string/jumbo v1, "android.support.remoteInputs"

    .line 281
    invoke-virtual {p1}, Lde$a;->g()[Ldk$a;

    move-result-object v2

    invoke-static {v2}, Ldl;->a([Ldk$a;)[Landroid/os/Bundle;

    move-result-object v2

    .line 280
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 283
    :cond_0
    invoke-virtual {p1}, Lde$a;->f()[Ldk$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 284
    const-string/jumbo v1, "android.support.dataRemoteInputs"

    .line 285
    invoke-virtual {p1}, Lde$a;->f()[Ldk$a;

    move-result-object v2

    invoke-static {v2}, Ldl;->a([Ldk$a;)[Landroid/os/Bundle;

    move-result-object v2

    .line 284
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 287
    :cond_1
    const-string/jumbo v1, "android.support.allowGeneratedReplies"

    .line 288
    invoke-virtual {p1}, Lde$a;->e()Z

    move-result v2

    .line 287
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 289
    return-object v0
.end method

.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 7
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    const/4 v3, 0x0

    .line 223
    sget-object v4, Ldf;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 224
    :try_start_0
    sget-boolean v5, Ldf;->c:Z

    if-eqz v5, :cond_0

    .line 225
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 250
    :goto_0
    return-object v1

    .line 228
    :cond_0
    :try_start_1
    sget-object v5, Ldf;->b:Ljava/lang/reflect/Field;

    if-nez v5, :cond_2

    .line 229
    const-class v5, Landroid/app/Notification;

    const-string/jumbo v6, "extras"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 230
    .local v2, "extrasField":Ljava/lang/reflect/Field;
    const-class v5, Landroid/os/Bundle;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 231
    const-string/jumbo v5, "NotificationCompat"

    const-string/jumbo v6, "Notification.extras field is not of type Bundle"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v5, 0x1

    sput-boolean v5, Ldf;->c:Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v3

    goto :goto_0

    .line 235
    :cond_1
    const/4 v5, 0x1

    :try_start_3
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 236
    sput-object v2, Ldf;->b:Ljava/lang/reflect/Field;

    .line 238
    .end local v2    # "extrasField":Ljava/lang/reflect/Field;
    :cond_2
    sget-object v5, Ldf;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 239
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_3

    .line 240
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "extras":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 241
    .restart local v1    # "extras":Landroid/os/Bundle;
    sget-object v5, Ldf;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v5, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    :cond_3
    :try_start_4
    monitor-exit v4

    goto :goto_0

    .line 251
    .end local v1    # "extras":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_5
    const-string/jumbo v5, "NotificationCompat"

    const-string/jumbo v6, "Unable to access notification extras"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    const/4 v5, 0x1

    sput-boolean v5, Ldf;->c:Z

    .line 250
    monitor-exit v4

    move-object v1, v3

    goto :goto_0

    .line 246
    :catch_1
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v5, "NotificationCompat"

    const-string/jumbo v6, "Unable to access notification extras"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public static a(Ljava/util/List;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "actionExtrasList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .line 206
    .local v1, "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 207
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 208
    .local v0, "actionExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 209
    if-nez v1, :cond_0

    .line 210
    new-instance v1, Landroid/util/SparseArray;

    .end local v1    # "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 212
    .restart local v1    # "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    :cond_0
    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 206
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    .end local v0    # "actionExtras":Landroid/os/Bundle;
    :cond_2
    return-object v1
.end method

.method public static a(Landroid/app/Notification;ILde$a$a;Ldk$a$a;)Lde$a;
    .locals 12
    .param p0, "notif"    # Landroid/app/Notification;
    .param p1, "actionIndex"    # I
    .param p2, "factory"    # Lde$a$a;
    .param p3, "remoteInputFactory"    # Ldk$a$a;

    .prologue
    .line 302
    sget-object v11, Ldf;->d:Ljava/lang/Object;

    monitor-enter v11

    .line 304
    :try_start_0
    invoke-static {p0}, Ldf;->c(Landroid/app/Notification;)[Ljava/lang/Object;

    move-result-object v8

    .line 305
    .local v8, "actionObjects":[Ljava/lang/Object;
    if-eqz v8, :cond_1

    .line 306
    aget-object v7, v8, p1

    .line 307
    .local v7, "actionObject":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 308
    .local v5, "actionExtras":Landroid/os/Bundle;
    invoke-static {p0}, Ldf;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v10

    .line 309
    .local v10, "extras":Landroid/os/Bundle;
    if-eqz v10, :cond_0

    .line 310
    const-string/jumbo v0, "android.support.actionExtras"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v6

    .line 312
    .local v6, "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    if-eqz v6, :cond_0

    .line 313
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "actionExtras":Landroid/os/Bundle;
    check-cast v5, Landroid/os/Bundle;

    .line 316
    .end local v6    # "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    .restart local v5    # "actionExtras":Landroid/os/Bundle;
    :cond_0
    sget-object v0, Ldf;->g:Ljava/lang/reflect/Field;

    .line 317
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    sget-object v0, Ldf;->h:Ljava/lang/reflect/Field;

    .line 318
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    sget-object v0, Ldf;->i:Ljava/lang/reflect/Field;

    .line 319
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    move-object v0, p2

    move-object v1, p3

    .line 316
    invoke-static/range {v0 .. v5}, Ldf;->a(Lde$a$a;Ldk$a$a;ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Lde$a;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    monitor-exit v11

    .line 327
    .end local v5    # "actionExtras":Landroid/os/Bundle;
    .end local v7    # "actionObject":Ljava/lang/Object;
    .end local v8    # "actionObjects":[Ljava/lang/Object;
    .end local v10    # "extras":Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 322
    :catch_0
    move-exception v9

    .line 323
    .local v9, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v0, "NotificationCompat"

    const-string/jumbo v1, "Unable to access notification actions"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    const/4 v0, 0x1

    sput-boolean v0, Ldf;->j:Z

    .line 326
    .end local v9    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    monitor-exit v11

    .line 327
    const/4 v0, 0x0

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Lde$a$a;Ldk$a$a;ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Lde$a;
    .locals 8
    .param p0, "factory"    # Lde$a$a;
    .param p1, "remoteInputFactory"    # Ldk$a$a;
    .param p2, "icon"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "actionIntent"    # Landroid/app/PendingIntent;
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 258
    const/4 v5, 0x0

    .line 259
    .local v5, "remoteInputs":[Ldk$a;
    const/4 v6, 0x0

    .line 260
    .local v6, "dataOnlyRemoteInputs":[Ldk$a;
    const/4 v7, 0x0

    .line 261
    .local v7, "allowGeneratedReplies":Z
    if-eqz p5, :cond_0

    .line 262
    const-string/jumbo v0, "android.support.remoteInputs"

    .line 263
    invoke-static {p5, v0}, Lcj;->a(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v0

    .line 262
    invoke-static {v0, p1}, Ldl;->a([Landroid/os/Bundle;Ldk$a$a;)[Ldk$a;

    move-result-object v5

    .line 266
    const-string/jumbo v0, "android.support.dataRemoteInputs"

    .line 267
    invoke-static {p5, v0}, Lcj;->a(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v0

    .line 266
    invoke-static {v0, p1}, Ldl;->a([Landroid/os/Bundle;Ldk$a$a;)[Ldk$a;

    move-result-object v6

    .line 269
    const-string/jumbo v0, "android.support.allowGeneratedReplies"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    :cond_0
    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 271
    invoke-interface/range {v0 .. v7}, Lde$a$a;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Ldk$a;[Ldk$a;Z)Lde$a;

    move-result-object v0

    return-object v0
.end method

.method public static a([Lde$a;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "actions"    # [Lde$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lde$a;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    if-nez p0, :cond_1

    .line 409
    const/4 v1, 0x0

    .line 415
    :cond_0
    return-object v1

    .line 411
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 412
    .local v1, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    array-length v4, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p0, v3

    .line 1419
    .local v0, "action":Lde$a;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1420
    const-string/jumbo v2, "icon"

    invoke-virtual {v0}, Lde$a;->a()I

    move-result v6

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1421
    const-string/jumbo v2, "title"

    invoke-virtual {v0}, Lde$a;->b()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1422
    const-string/jumbo v2, "actionIntent"

    invoke-virtual {v0}, Lde$a;->c()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1424
    invoke-virtual {v0}, Lde$a;->d()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1425
    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {v0}, Lde$a;->d()Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1429
    :goto_1
    const-string/jumbo v6, "android.support.allowGeneratedReplies"

    .line 1430
    invoke-virtual {v0}, Lde$a;->e()Z

    move-result v7

    .line 1429
    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1431
    const-string/jumbo v6, "extras"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1432
    const-string/jumbo v2, "remoteInputs"

    .line 1433
    invoke-virtual {v0}, Lde$a;->g()[Ldk$a;

    move-result-object v6

    .line 1432
    invoke-static {v6}, Ldl;->a([Ldk$a;)[Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 413
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 1427
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_1
.end method

.method public static a(Lcz;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "b"    # Lcz;
    .param p1, "bigContentTitle"    # Ljava/lang/CharSequence;
    .param p2, "useSummary"    # Z
    .param p3, "summaryText"    # Ljava/lang/CharSequence;
    .param p4, "bigText"    # Ljava/lang/CharSequence;

    .prologue
    .line 167
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-interface {p0}, Lcz;->a()Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 168
    invoke-virtual {v1, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    .line 169
    invoke-virtual {v1, p4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    .line 170
    .local v0, "style":Landroid/app/Notification$BigTextStyle;
    if-eqz p2, :cond_0

    .line 171
    invoke-virtual {v0, p3}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 173
    :cond_0
    return-void
.end method

.method private static a()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 347
    sget-boolean v3, Ldf;->j:Z

    if-eqz v3, :cond_1

    .line 366
    :cond_0
    :goto_0
    return v1

    .line 351
    :cond_1
    :try_start_0
    sget-object v3, Ldf;->f:Ljava/lang/reflect/Field;

    if-nez v3, :cond_2

    .line 352
    const-string/jumbo v3, "android.app.Notification$Action"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 353
    sput-object v3, Ldf;->e:Ljava/lang/Class;

    const-string/jumbo v4, "icon"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Ldf;->g:Ljava/lang/reflect/Field;

    .line 354
    sget-object v3, Ldf;->e:Ljava/lang/Class;

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Ldf;->h:Ljava/lang/reflect/Field;

    .line 355
    sget-object v3, Ldf;->e:Ljava/lang/Class;

    const-string/jumbo v4, "actionIntent"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Ldf;->i:Ljava/lang/reflect/Field;

    .line 356
    const-class v3, Landroid/app/Notification;

    const-string/jumbo v4, "actions"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 357
    sput-object v3, Ldf;->f:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 366
    :cond_2
    :goto_1
    sget-boolean v3, Ldf;->j:Z

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v3, "NotificationCompat"

    const-string/jumbo v4, "Unable to access notification actions"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    sput-boolean v2, Ldf;->j:Z

    goto :goto_1

    .line 362
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v3, "NotificationCompat"

    const-string/jumbo v4, "Unable to access notification actions"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    sput-boolean v2, Ldf;->j:Z

    goto :goto_1
.end method

.method public static b(Landroid/app/Notification;)I
    .locals 3
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 293
    sget-object v2, Ldf;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 294
    :try_start_0
    invoke-static {p0}, Ldf;->c(Landroid/app/Notification;)[Ljava/lang/Object;

    move-result-object v0

    .line 295
    .local v0, "actionObjects":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 296
    .end local v0    # "actionObjects":[Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static c(Landroid/app/Notification;)[Ljava/lang/Object;
    .locals 5
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    const/4 v2, 0x0

    .line 331
    sget-object v3, Ldf;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 332
    :try_start_0
    invoke-static {}, Ldf;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 340
    :goto_0
    return-object v1

    .line 336
    :cond_0
    :try_start_1
    sget-object v1, Ldf;->f:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    goto :goto_0

    .line 342
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_3
    const-string/jumbo v1, "NotificationCompat"

    const-string/jumbo v4, "Unable to access notification actions"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    const/4 v1, 0x1

    sput-boolean v1, Ldf;->j:Z

    .line 340
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v2

    goto :goto_0
.end method
