.class final Lekg$4$1;
.super Ljava/lang/Object;
.source "MessageNotificationManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lekg$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/NotificationCompat$Builder;

.field final synthetic b:Lekg$4;


# direct methods
.method constructor <init>(Lekg$4;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 0
    .param p1, "this$1"    # Lekg$4;

    .prologue
    .line 1229
    iput-object p1, p0, Lekg$4$1;->b:Lekg$4;

    iput-object p2, p0, Lekg$4$1;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1229
    check-cast p1, Ljava/lang/String;

    .line 2232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2233
    iget-object v0, p0, Lekg$4$1;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2235
    :cond_0
    iget-object v0, p0, Lekg$4$1;->b:Lekg$4;

    iget-object v0, v0, Lekg$4;->f:Lekg;

    iget-object v1, p0, Lekg$4$1;->b:Lekg$4;

    iget v1, v1, Lekg$4;->d:I

    iget-object v2, p0, Lekg$4$1;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    iget-object v3, p0, Lekg$4$1;->b:Lekg$4;

    iget v3, v3, Lekg$4;->e:I

    invoke-virtual {v0, v1, v2, v3}, Lekg;->a(ILandroid/app/Notification;I)V

    .line 1229
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1245
    iget-object v0, p0, Lekg$4$1;->b:Lekg$4;

    iget-object v0, v0, Lekg$4;->f:Lekg;

    iget-object v1, p0, Lekg$4$1;->b:Lekg$4;

    iget v1, v1, Lekg$4;->d:I

    iget-object v2, p0, Lekg$4$1;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    iget-object v3, p0, Lekg$4$1;->b:Lekg$4;

    iget v3, v3, Lekg$4;->e:I

    invoke-virtual {v0, v1, v2, v3}, Lekg;->a(ILandroid/app/Notification;I)V

    .line 1246
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1241
    return-void
.end method
