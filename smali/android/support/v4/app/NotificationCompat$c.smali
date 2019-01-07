.class public final Landroid/support/v4/app/NotificationCompat$c;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/support/v4/app/NotificationCompat$Builder;Lcz;)Landroid/app/Notification;
    .locals 6
    .param p0, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p1, "builder"    # Lcz;

    .prologue
    .line 617
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$n;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$n;

    .line 618
    invoke-virtual {v4, p1}, Landroid/support/v4/app/NotificationCompat$n;->makeContentView(Lcz;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 620
    .local v2, "styleContentView":Landroid/widget/RemoteViews;
    :goto_0
    invoke-interface {p1}, Lcz;->b()Landroid/app/Notification;

    move-result-object v0

    .line 621
    .local v0, "n":Landroid/app/Notification;
    if-eqz v2, :cond_4

    .line 622
    iput-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 626
    :cond_0
    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_1

    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$n;

    if-eqz v4, :cond_1

    .line 627
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$n;

    invoke-virtual {v4, p1}, Landroid/support/v4/app/NotificationCompat$n;->makeBigContentView(Lcz;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 628
    .local v1, "styleBigContentView":Landroid/widget/RemoteViews;
    if-eqz v1, :cond_1

    .line 629
    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 632
    .end local v1    # "styleBigContentView":Landroid/widget/RemoteViews;
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$n;

    if-eqz v4, :cond_2

    .line 633
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$n;

    invoke-virtual {v4, p1}, Landroid/support/v4/app/NotificationCompat$n;->makeHeadsUpContentView(Lcz;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 634
    .local v3, "styleHeadsUpContentView":Landroid/widget/RemoteViews;
    if-eqz v3, :cond_2

    .line 635
    iput-object v3, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 638
    .end local v3    # "styleHeadsUpContentView":Landroid/widget/RemoteViews;
    :cond_2
    return-object v0

    .line 618
    .end local v0    # "n":Landroid/app/Notification;
    .end local v2    # "styleContentView":Landroid/widget/RemoteViews;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 623
    .restart local v0    # "n":Landroid/app/Notification;
    .restart local v2    # "styleContentView":Landroid/widget/RemoteViews;
    :cond_4
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_0

    .line 624
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v4, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_1
.end method
