.class public final Lbpp;
.super Ljava/lang/Object;
.source "SNPostModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public a:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public b:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field

.field public c:Lbps;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x3
    .end annotation
.end field

.field public d:Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x4
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbpk;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x6
    .end annotation
.end field

.field public g:Lbpr;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x7
    .end annotation
.end field

.field public h:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x8
    .end annotation
.end field

.field public i:Lbps;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x9
    .end annotation
.end field

.field public j:Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xa
    .end annotation
.end field

.field public k:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbps;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(ILjava/lang/Object;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 44
    packed-switch p1, :pswitch_data_0

    .line 81
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 46
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lbpp;->a:Ljava/lang/Long;

    goto :goto_0

    .line 49
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lbpp;->b:Ljava/lang/Long;

    goto :goto_0

    .line 52
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Lbps;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lbpp;->c:Lbps;

    goto :goto_0

    .line 55
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lbpp;->d:Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;

    goto :goto_0

    .line 58
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lbpp;->e:Ljava/util/List;

    goto :goto_0

    .line 61
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lbpp;->f:Ljava/lang/Integer;

    goto :goto_0

    .line 64
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Lbpr;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lbpp;->g:Lbpr;

    goto :goto_0

    .line 67
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_7
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lbpp;->h:Ljava/lang/Long;

    goto :goto_0

    .line 70
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_8
    check-cast p2, Lbps;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lbpp;->i:Lbps;

    goto :goto_0

    .line 73
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_9
    check-cast p2, Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lbpp;->j:Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;

    goto :goto_0

    .line 76
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_a
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lbpp;->k:Ljava/util/List;

    goto :goto_0

    .line 44
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
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
