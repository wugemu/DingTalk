.class final Landroid/support/v4/media/MediaBrowserServiceCompat$g;
.super Landroid/os/Handler;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/MediaBrowserServiceCompat;

.field private final b:Landroid/support/v4/media/MediaBrowserServiceCompat$d;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .locals 2

    .prologue
    .line 475
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 473
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$d;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    .line 476
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 543
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 544
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 548
    :goto_0
    return-void

    .line 546
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 480
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 481
    .local v6, "data":Landroid/os/Bundle;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 526
    const-string/jumbo v0, "MBServiceCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unhandled message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n  Service version: 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n  Client version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 483
    :pswitch_0
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    const-string/jumbo v2, "data_package_name"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "data_calling_uid"

    .line 484
    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v2, "data_root_hints"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    new-instance v2, Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v2, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat$f;-><init>(Landroid/os/Messenger;)V

    .line 1717
    iget-object v7, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    .line 2241
    if-eqz v3, :cond_1

    .line 2244
    invoke-virtual {v7}, Landroid/support/v4/media/MediaBrowserServiceCompat;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 2245
    invoke-virtual {v7, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 2246
    array-length v9, v8

    move v7, v0

    .line 2247
    :goto_1
    if-ge v7, v9, :cond_1

    .line 2248
    aget-object v10, v8, v7

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2249
    const/4 v0, 0x1

    .line 1717
    :cond_1
    if-nez v0, :cond_3

    .line 1718
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Package/uid mismatch: uid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2247
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1722
    :cond_3
    iget-object v0, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v7, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$d;Landroid/support/v4/media/MediaBrowserServiceCompat$e;Ljava/lang/String;Landroid/os/Bundle;I)V

    invoke-virtual {v7, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 488
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v1, v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$f;-><init>(Landroid/os/Messenger;)V

    .line 2766
    iget-object v2, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    new-instance v3, Landroid/support/v4/media/MediaBrowserServiceCompat$d$2;

    invoke-direct {v3, v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$d$2;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$d;Landroid/support/v4/media/MediaBrowserServiceCompat$e;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 491
    :pswitch_2
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    const-string/jumbo v0, "data_media_item_id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "data_callback_token"

    .line 492
    invoke-static {v6, v0}, Lci;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    const-string/jumbo v0, "data_options"

    .line 493
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    new-instance v2, Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v2, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$f;-><init>(Landroid/os/Messenger;)V

    .line 2782
    iget-object v0, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v7, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$3;

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$d$3;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$d;Landroid/support/v4/media/MediaBrowserServiceCompat$e;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v7, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 497
    :pswitch_3
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    const-string/jumbo v1, "data_media_item_id"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "data_callback_token"

    .line 498
    invoke-static {v6, v2}, Lci;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$f;-><init>(Landroid/os/Messenger;)V

    .line 2802
    iget-object v4, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    new-instance v5, Landroid/support/v4/media/MediaBrowserServiceCompat$d$4;

    invoke-direct {v5, v0, v3, v1, v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$d$4;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$d;Landroid/support/v4/media/MediaBrowserServiceCompat$e;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 502
    :pswitch_4
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    const-string/jumbo v0, "data_media_item_id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "data_result_receiver"

    .line 503
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/v4/os/ResultReceiver;

    new-instance v3, Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$f;-><init>(Landroid/os/Messenger;)V

    .line 2824
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    .line 2828
    iget-object v4, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    new-instance v5, Landroid/support/v4/media/MediaBrowserServiceCompat$d$5;

    invoke-direct {v5, v1, v3, v2, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$d$5;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$d;Landroid/support/v4/media/MediaBrowserServiceCompat$e;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 507
    :pswitch_5
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v1, v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$f;-><init>(Landroid/os/Messenger;)V

    const-string/jumbo v2, "data_root_hints"

    .line 508
    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 2845
    iget-object v3, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    new-instance v4, Landroid/support/v4/media/MediaBrowserServiceCompat$d$6;

    invoke-direct {v4, v0, v1, v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$d$6;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$d;Landroid/support/v4/media/MediaBrowserServiceCompat$e;Landroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 511
    :pswitch_6
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v1, v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$f;-><init>(Landroid/os/Messenger;)V

    .line 2862
    iget-object v2, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    new-instance v3, Landroid/support/v4/media/MediaBrowserServiceCompat$d$7;

    invoke-direct {v3, v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$d$7;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$d;Landroid/support/v4/media/MediaBrowserServiceCompat$e;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 514
    :pswitch_7
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    const-string/jumbo v0, "data_search_query"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "data_search_extras"

    .line 515
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v0, "data_result_receiver"

    .line 516
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/support/v4/os/ResultReceiver;

    new-instance v2, Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v2, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$f;-><init>(Landroid/os/Messenger;)V

    .line 2873
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v5, :cond_0

    .line 2877
    iget-object v0, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v7, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$8;

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$d$8;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$d;Landroid/support/v4/media/MediaBrowserServiceCompat$e;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v7, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 520
    :pswitch_8
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    const-string/jumbo v0, "data_custom_action"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "data_custom_action_extras"

    .line 521
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v0, "data_result_receiver"

    .line 522
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/support/v4/os/ResultReceiver;

    new-instance v2, Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v2, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$f;-><init>(Landroid/os/Messenger;)V

    .line 2894
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v5, :cond_0

    .line 2898
    iget-object v0, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v7, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$9;

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$d$9;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$d;Landroid/support/v4/media/MediaBrowserServiceCompat$e;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v7, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 481
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public final sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "uptimeMillis"    # J

    .prologue
    .line 536
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 537
    .local v0, "data":Landroid/os/Bundle;
    const-class v1, Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 538
    const-string/jumbo v1, "data_calling_uid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 539
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v1

    return v1
.end method
