.class public Lend;
.super Ljava/lang/Object;
.source "AssureAreaDbManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcmj;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lfu$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfu$b",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "AssureAreaDbManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 52
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lend;->a:Landroid/os/Handler;

    .line 53
    new-instance v1, Lfu$b;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lfu$b;-><init>(I)V

    iput-object v1, p0, Lend;->b:Lfu$b;

    .line 54
    return-void
.end method

.method public static b()Lend;
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcmk;->a()Lcmk;

    move-result-object v0

    const-class v1, Lend;

    invoke-virtual {v0, v1}, Lcmk;->a(Ljava/lang/Class;)Lcmj;

    move-result-object v0

    check-cast v0, Lend;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 171
    iget-object v0, p0, Lend;->a:Landroid/os/Handler;

    const/4 v1, -0x1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 172
    return-void
.end method

.method public final a(Lcom/alibaba/android/search/assure/model/AssureModel;)V
    .locals 3
    .param p1, "assureModel"    # Lcom/alibaba/android/search/assure/model/AssureModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v1, p0, Lend;->a:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 87
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 88
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 3
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/search/assure/model/AssureModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    .local p1, "assureModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lend;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 77
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 78
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 103
    .local v0, "data":Landroid/os/Bundle;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 126
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1183
    iget-object v1, p0, Lend;->b:Lfu$b;

    invoke-virtual {v1, v0}, Lfu$b;->a(Ljava/lang/Object;)Z

    .line 130
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 105
    :pswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    .line 106
    iget-object v1, p0, Lend;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    goto :goto_0

    .line 108
    :cond_2
    iget-object v1, p0, Lend;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 1134
    :pswitch_1
    if-eqz v0, :cond_4

    .line 1135
    const-string/jumbo v1, "AssureModel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/assure/model/AssureModel;

    .line 1136
    if-eqz v1, :cond_3

    .line 1137
    invoke-static {}, Lenq;->a()Lenq;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lenq;->a(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1139
    :cond_3
    const-string/jumbo v1, "assureModel is null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1142
    :cond_4
    const-string/jumbo v1, "data = null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1148
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 1149
    invoke-static {v1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1150
    invoke-static {}, Lenq;->a()Lenq;

    move-result-object v2

    invoke-virtual {v2, v1}, Lenq;->a(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1152
    :cond_5
    const-string/jumbo v1, "assureModels is empty"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1157
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1158
    instance-of v2, v1, Lcom/alibaba/android/search/assure/model/AssureModel;

    if-eqz v2, :cond_0

    .line 1162
    check-cast v1, Lcom/alibaba/android/search/assure/model/AssureModel;

    .line 1163
    invoke-static {}, Lenq;->a()Lenq;

    move-result-object v2

    invoke-virtual {v2, v1}, Lenq;->a(Lcom/alibaba/android/search/assure/model/AssureModel;)V

    goto/16 :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
