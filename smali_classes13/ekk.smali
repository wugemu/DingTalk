.class public final Lekk;
.super Lhak;
.source "ImageFormatConvertHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lekk$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhal;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lekk$a;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->COMPLETED:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    invoke-direct {p0, v0}, Lhak;-><init>(Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lekk;->b:Ljava/util/List;

    .line 45
    sget-object v0, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->CANCEL:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    invoke-virtual {p0, v0}, Lekk;->a(Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;)V

    .line 46
    sget-object v0, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->FAIL:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    invoke-virtual {p0, v0}, Lekk;->a(Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;)V

    .line 47
    return-void
.end method

.method private a(Z)V
    .locals 2
    .param p1, "isCancel"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 131
    iget-object v0, p0, Lekk;->c:Lekk$a;

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 135
    :cond_0
    if-nez p1, :cond_1

    .line 136
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lekk$3;

    invoke-direct {v1, p0}, Lekk$3;-><init>(Lekk;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 145
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lekk$4;

    invoke-direct {v1, p0}, Lekk$4;-><init>(Lekk;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lhaj;->a()Lhaj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhaj;->a(Lhak;)V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lekk;->c:Lekk$a;

    .line 159
    return-void
.end method

.method public final a(Lhai;)V
    .locals 6
    .param p1, "convertEvent"    # Lhai;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    iget-object v2, p0, Lekk;->a:Ljava/util/List;

    if-nez v2, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    if-eqz p1, :cond_0

    .line 6026
    iget-object v2, p1, Lhai;->a:Lhal;

    .line 91
    if-eqz v2, :cond_0

    .line 7026
    iget-object v0, p1, Lhai;->a:Lhal;

    .line 7034
    .local v0, "convertedObject":Lhal;
    iget-object v1, p1, Lhai;->b:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    .line 98
    .local v1, "eventType":Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lekk;->a:Ljava/util/List;

    .line 8027
    iget-object v3, v0, Lhal;->a:Ljava/lang/String;

    .line 98
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    sget-object v2, Lekk$5;->a:[I

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 104
    :pswitch_0
    iget-object v2, p0, Lekk;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v2, p0, Lekk;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lekk;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 107
    invoke-direct {p0, v4}, Lekk;->a(Z)V

    goto :goto_0

    .line 111
    :pswitch_1
    invoke-direct {p0, v5}, Lekk;->a(Z)V

    goto :goto_0

    .line 115
    :pswitch_2
    iput-boolean v5, p0, Lekk;->e:Z

    .line 9027
    iget-object v2, v0, Lhal;->a:Ljava/lang/String;

    .line 9047
    iput-object v2, v0, Lhal;->d:Ljava/lang/String;

    .line 118
    iget-object v2, p0, Lekk;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v2, p0, Lekk;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lekk;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 121
    invoke-direct {p0, v4}, Lekk;->a(Z)V

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Ljava/util/List;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 8
    .param p2, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 54
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    :cond_0
    iget-object v1, p0, Lekk;->c:Lekk$a;

    if-eqz v1, :cond_1

    .line 56
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lekk$1;

    invoke-direct {v2, p0}, Lekk$1;-><init>(Lekk;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 83
    :cond_1
    return-void

    .line 66
    :cond_2
    iget-object v1, p0, Lekk;->c:Lekk$a;

    if-eqz v1, :cond_3

    .line 67
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lekk$2;

    invoke-direct {v2, p0}, Lekk$2;-><init>(Lekk;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 75
    :cond_3
    invoke-static {}, Lhaj;->a()Lhaj;

    move-result-object v1

    invoke-virtual {v1, p0}, Lhaj;->a(Lhak;)V

    .line 76
    invoke-static {}, Lhaj;->a()Lhaj;

    move-result-object v1

    .line 2058
    if-eqz p0, :cond_4

    .line 2062
    iget-object v2, v1, Lhaj;->b:Ljava/util/Vector;

    monitor-enter v2

    .line 2063
    :try_start_0
    iget-object v1, v1, Lhaj;->b:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2064
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_4
    iput-object p1, p0, Lekk;->a:Ljava/util/List;

    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lham;->a()Lham;

    move-result-object v3

    .line 2070
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2074
    invoke-static {v0, p2}, Lham;->a(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object v4

    .line 2076
    sget-object v1, Lham;->b:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhal;

    .line 2077
    if-eqz v1, :cond_6

    .line 2078
    sget-object v3, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->COMPLETED:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    invoke-static {v1, v3}, Lham;->a(Lhal;Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;)V

    goto :goto_0

    .line 2064
    .end local v0    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2082
    .restart local v0    # "url":Ljava/lang/String;
    :cond_6
    new-instance v1, Lhal;

    invoke-direct {v1}, Lhal;-><init>()V

    .line 3031
    iput-object v0, v1, Lhal;->a:Ljava/lang/String;

    .line 2084
    invoke-static {v0}, Lhcs;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3039
    iput-object v5, v1, Lhal;->c:Ljava/lang/String;

    .line 3128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3129
    const/4 v0, 0x0

    .line 4063
    .end local v0    # "url":Ljava/lang/String;
    :cond_7
    :goto_1
    iput-object v0, v1, Lhal;->b:Ljava/lang/String;

    .line 5055
    iput-object p2, v1, Lhal;->e:Landroid/graphics/Bitmap$CompressFormat;

    .line 5079
    iput-object v4, v1, Lhal;->f:Ljava/lang/String;

    .line 2089
    iget-object v4, v3, Lham;->e:Ljava/lang/Object;

    monitor-enter v4

    .line 2090
    :try_start_2
    sget-object v5, Lham;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2091
    monitor-exit v4

    goto :goto_0

    .line 2095
    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 3135
    .restart local v0    # "url":Ljava/lang/String;
    :cond_8
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 3136
    if-ltz v5, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_9

    .line 3137
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3142
    .end local v0    # "url":Ljava/lang/String;
    :cond_9
    const-string/jumbo v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 3143
    if-ltz v5, :cond_7

    .line 3144
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2093
    :cond_a
    :try_start_3
    sget-object v5, Lham;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 2095
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2097
    iput-boolean v7, v3, Lham;->d:Z

    .line 2099
    iget-boolean v1, v3, Lham;->c:Z

    if-nez v1, :cond_5

    sget-object v1, Lham;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2100
    const-string/jumbo v1, "converter"

    const/4 v4, 0x1

    sget-object v5, Lcom/alibaba/doraemon/Priority;->HIGH:Lcom/alibaba/doraemon/Priority;

    invoke-static {v1, v4, v5}, Lhcn;->a(Ljava/lang/String;ILcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    iget-object v3, v3, Lham;->f:Ljava/lang/Runnable;

    invoke-interface {v1, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
