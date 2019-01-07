.class final Laun$4;
.super Ljava/lang/Object;
.source "CalendarDrawerContainer.java"

# interfaces
.implements Laur;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laun;


# direct methods
.method constructor <init>(Laun;)V
    .locals 0
    .param p1, "this$0"    # Laun;

    .prologue
    .line 360
    iput-object p1, p0, Laun$4;->a:Laun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lauy;)V
    .locals 9
    .param p1, "headerSetting"    # Lauy;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 363
    if-nez p1, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    iget-object v0, p1, Lauy;->e:Lcom/alibaba/android/calendar/setting/object/FolderType;

    .line 367
    .local v0, "folderType":Lcom/alibaba/android/calendar/setting/object/FolderType;
    sget-object v1, Laun$27;->a:[I

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/setting/object/FolderType;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 369
    :pswitch_1
    invoke-static {}, Latf;->a()Latf;

    move-result-object v4

    .line 2039
    iget-wide v6, p1, Lauy;->c:J

    .line 2056
    iget-boolean v1, p1, Lauy;->a:Z

    .line 369
    if-nez v1, :cond_2

    move v1, v2

    .line 2251
    :goto_1
    iget-object v5, v4, Latf;->a:Latf$b;

    new-instance v8, Latf$2;

    invoke-direct {v8, v4, v6, v7, v1}, Latf$2;-><init>(Latf;JZ)V

    invoke-virtual {v5, v8}, Latf$b;->execute(Ljava/lang/Runnable;)V

    .line 370
    iget-object v1, p0, Laun$4;->a:Laun;

    .line 3077
    iget-object v1, v1, Laun;->r:Laut;

    .line 370
    invoke-virtual {v1, p1}, Laut;->a(Lauy;)V

    .line 371
    iget-object v1, p0, Laun$4;->a:Laun;

    .line 4506
    if-eqz p1, :cond_0

    .line 4509
    iget-object v4, v1, Laun;->u:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 4510
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 4513
    iget-object v5, v1, Laun;->u:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lauy;

    if-eqz v5, :cond_0

    .line 4516
    iget-object v1, v1, Laun;->u:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lauy;

    .line 5056
    iget-boolean v4, p1, Lauy;->a:Z

    .line 4516
    if-nez v4, :cond_3

    .line 5064
    :goto_2
    iput-boolean v2, v1, Lauy;->a:Z

    goto :goto_0

    :cond_2
    move v1, v3

    .line 369
    goto :goto_1

    :cond_3
    move v2, v3

    .line 4516
    goto :goto_2

    .line 375
    :pswitch_2
    iget-object v1, p0, Laun$4;->a:Laun;

    .line 5077
    iget-object v1, v1, Laun;->r:Laut;

    .line 375
    invoke-virtual {v1, p1}, Laut;->a(Lauy;)V

    .line 376
    iget-object v1, p0, Laun$4;->a:Laun;

    .line 6460
    if-eqz p1, :cond_0

    .line 6463
    iget-object v1, v1, Laun;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lauz;

    .line 6464
    instance-of v4, v1, Lauy;

    if-eqz v4, :cond_4

    .line 6465
    check-cast v1, Lauy;

    .line 7056
    iget-boolean v4, p1, Lauy;->a:Z

    .line 6466
    if-nez v4, :cond_5

    move v4, v2

    .line 7064
    :goto_4
    iput-boolean v4, v1, Lauy;->a:Z

    goto :goto_3

    :cond_5
    move v4, v3

    .line 6466
    goto :goto_4

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
