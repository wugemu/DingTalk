.class public final Lda;
.super Ljava/lang/Object;
.source "NotificationCompatApi20.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x14
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lda$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static a(Lde$a;)Landroid/app/Notification$Action;
    .locals 8
    .param p0, "actionCompat"    # Lde$a;

    .prologue
    .line 187
    new-instance v0, Landroid/app/Notification$Action$Builder;

    .line 188
    invoke-virtual {p0}, Lde$a;->a()I

    move-result v5

    invoke-virtual {p0}, Lde$a;->b()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0}, Lde$a;->c()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-direct {v0, v5, v6, v7}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 190
    .local v0, "actionBuilder":Landroid/app/Notification$Action$Builder;
    invoke-virtual {p0}, Lde$a;->d()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 191
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lde$a;->d()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 195
    .local v1, "actionExtras":Landroid/os/Bundle;
    :goto_0
    const-string/jumbo v5, "android.support.allowGeneratedReplies"

    .line 196
    invoke-virtual {p0}, Lde$a;->e()Z

    move-result v6

    .line 195
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 197
    invoke-virtual {v0, v1}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 198
    invoke-virtual {p0}, Lde$a;->g()[Ldk$a;

    move-result-object v3

    .line 199
    .local v3, "remoteInputCompats":[Ldk$a;
    if-eqz v3, :cond_1

    .line 200
    invoke-static {v3}, Ldj;->a([Ldk$a;)[Landroid/app/RemoteInput;

    move-result-object v4

    .line 201
    .local v4, "remoteInputs":[Landroid/app/RemoteInput;
    array-length v6, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v2, v4, v5

    .line 202
    .local v2, "remoteInput":Landroid/app/RemoteInput;
    invoke-virtual {v0, v2}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 201
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 193
    .end local v1    # "actionExtras":Landroid/os/Bundle;
    .end local v2    # "remoteInput":Landroid/app/RemoteInput;
    .end local v3    # "remoteInputCompats":[Ldk$a;
    .end local v4    # "remoteInputs":[Landroid/app/RemoteInput;
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .restart local v1    # "actionExtras":Landroid/os/Bundle;
    goto :goto_0

    .line 205
    .restart local v3    # "remoteInputCompats":[Ldk$a;
    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    return-object v5
.end method

.method public static a(Landroid/app/Notification$Builder;Lde$a;)V
    .locals 6
    .param p0, "b"    # Landroid/app/Notification$Builder;
    .param p1, "action"    # Lde$a;

    .prologue
    .line 148
    new-instance v0, Landroid/app/Notification$Action$Builder;

    .line 149
    invoke-virtual {p1}, Lde$a;->a()I

    move-result v3

    invoke-virtual {p1}, Lde$a;->b()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1}, Lde$a;->c()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 150
    .local v0, "actionBuilder":Landroid/app/Notification$Action$Builder;
    invoke-virtual {p1}, Lde$a;->g()[Ldk$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 152
    invoke-virtual {p1}, Lde$a;->g()[Ldk$a;

    move-result-object v3

    .line 151
    invoke-static {v3}, Ldj;->a([Ldk$a;)[Landroid/app/RemoteInput;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    .line 153
    .local v2, "remoteInput":Landroid/app/RemoteInput;
    invoke-virtual {v0, v2}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    .end local v2    # "remoteInput":Landroid/app/RemoteInput;
    :cond_0
    invoke-virtual {p1}, Lde$a;->d()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 158
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p1}, Lde$a;->d()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 162
    .local v1, "actionExtras":Landroid/os/Bundle;
    :goto_1
    const-string/jumbo v3, "android.support.allowGeneratedReplies"

    .line 163
    invoke-virtual {p1}, Lde$a;->e()Z

    move-result v4

    .line 162
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    invoke-virtual {v0, v1}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 165
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 166
    return-void

    .line 160
    .end local v1    # "actionExtras":Landroid/os/Bundle;
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .restart local v1    # "actionExtras":Landroid/os/Bundle;
    goto :goto_1
.end method
