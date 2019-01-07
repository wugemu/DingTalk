.class public final Lbuq;
.super Ljava/lang/Object;
.source "EnterRoomRspModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public a:Lbvl;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public b:Lbvm;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(ILjava/lang/Object;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 15
    packed-switch p1, :pswitch_data_0

    .line 25
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 17
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lbvl;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lbuq;->a:Lbvl;

    goto :goto_0

    .line 20
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Lbvm;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lbuq;->b:Lbvm;

    goto :goto_0

    .line 15
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
