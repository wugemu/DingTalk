.class final Lbbp$86;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->a(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Ljava/lang/Integer;

.field final synthetic d:Lcma;

.field final synthetic e:Lbbp;


# direct methods
.method constructor <init>(Lbbp;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 785
    iput-object p1, p0, Lbbp$86;->e:Lbbp;

    iput-object p2, p0, Lbbp$86;->a:Ljava/util/List;

    iput-object p3, p0, Lbbp$86;->b:Ljava/lang/Integer;

    iput-object p4, p0, Lbbp$86;->c:Ljava/lang/Integer;

    iput-object p5, p0, Lbbp$86;->d:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 788
    iget-object v0, p0, Lbbp$86;->e:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v1

    iget-object v4, p0, Lbbp$86;->a:Ljava/util/List;

    iget-object v2, p0, Lbbp$86;->b:Ljava/lang/Integer;

    iget-object v3, p0, Lbbp$86;->c:Ljava/lang/Integer;

    iget-object v5, p0, Lbbp$86;->d:Lcma;

    .line 2606
    iget-object v8, v1, Lbbo;->h:Lbbk;

    new-instance v0, Lbbo$5;

    invoke-direct/range {v0 .. v5}, Lbbo$5;-><init>(Lbbo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcma;)V

    .line 3645
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3675
    :goto_0
    return-void

    :pswitch_0
    move v1, v6

    .line 3677
    :goto_1
    new-instance v3, Lbbk$32;

    invoke-direct {v3, v8, v0}, Lbbk$32;-><init>(Lbbk;Lcma;)V

    .line 3693
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v5, "[DataSourceRemote] changeDingOperationStatus."

    aput-object v5, v0, v6

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 3694
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 3695
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v5, Lbbk$34;

    invoke-direct {v5, v8, v3}, Lbbk$34;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v4, v2, v1, v5}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->changeDingStatusInBatch(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0

    :pswitch_1
    move v1, v7

    .line 3651
    goto :goto_1

    .line 3653
    :pswitch_2
    const/4 v1, 0x2

    .line 3654
    goto :goto_1

    .line 3656
    :pswitch_3
    const/4 v1, 0x4

    .line 3657
    goto :goto_1

    .line 3660
    :pswitch_4
    const/4 v1, 0x3

    .line 3661
    goto :goto_1

    .line 3663
    :pswitch_5
    const/4 v1, 0x5

    .line 3664
    goto :goto_1

    .line 3666
    :pswitch_6
    const/4 v1, 0x6

    .line 3667
    goto :goto_1

    .line 3669
    :pswitch_7
    const/4 v1, 0x7

    .line 3670
    goto :goto_1

    .line 3672
    :pswitch_8
    const/16 v1, 0x8

    .line 3673
    goto :goto_1

    .line 3645
    :pswitch_data_0
    .packed-switch 0x0
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
