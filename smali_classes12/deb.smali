.class public final Ldeb;
.super Ljava/lang/Object;
.source "DraftFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(I)Lded;
    .locals 2
    .param p0, "draftType"    # I

    .prologue
    .line 11
    const-class v1, Ldeb;

    monitor-enter v1

    packed-switch p0, :pswitch_data_0

    .line 17
    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    .line 13
    :pswitch_0
    :try_start_0
    new-instance v0, Ldee;

    invoke-direct {v0}, Ldee;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 15
    :pswitch_1
    :try_start_1
    new-instance v0, Ldef;

    invoke-direct {v0}, Ldef;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
