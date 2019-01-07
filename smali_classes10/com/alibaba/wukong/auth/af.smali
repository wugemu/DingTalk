.class public final Lcom/alibaba/wukong/auth/af;
.super Ljava/lang/Object;
.source "SyncPushModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public av:Lcom/alibaba/wukong/auth/ag;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public aw:Lcom/alibaba/wukong/auth/ad;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field

.field public ax:Lcom/alibaba/wukong/auth/ac;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(ILjava/lang/Object;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 22
    packed-switch p1, :pswitch_data_0

    .line 35
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 24
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lcom/alibaba/wukong/auth/ag;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/auth/af;->av:Lcom/alibaba/wukong/auth/ag;

    goto :goto_0

    .line 27
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Lcom/alibaba/wukong/auth/ad;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/auth/af;->aw:Lcom/alibaba/wukong/auth/ad;

    goto :goto_0

    .line 30
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Lcom/alibaba/wukong/auth/ac;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/auth/af;->ax:Lcom/alibaba/wukong/auth/ac;

    goto :goto_0

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
