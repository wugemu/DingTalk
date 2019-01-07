.class final Landroid/support/v4/app/NotificationCompat$a$1;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Lde$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Ldk$a;[Ldk$a;Z)Lde$a;
    .locals 8
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "actionIntent"    # Landroid/app/PendingIntent;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "remoteInputs"    # [Ldk$a;
    .param p6, "dataOnlyRemoteInputs"    # [Ldk$a;
    .param p7, "allowGeneratedReplies"    # Z

    .prologue
    .line 3604
    new-instance v0, Landroid/support/v4/app/NotificationCompat$a;

    check-cast p5, [Ldi;

    .end local p5    # "remoteInputs":[Ldk$a;
    move-object v5, p5

    check-cast v5, [Ldi;

    check-cast p6, [Ldi;

    .end local p6    # "dataOnlyRemoteInputs":[Ldk$a;
    move-object v6, p6

    check-cast v6, [Ldi;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, p7

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/app/NotificationCompat$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Ldi;[Ldi;Z)V

    return-object v0
.end method
