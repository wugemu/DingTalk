.class public final Lcom/alibaba/wukong/idl/im/models/VerifyModel;
.super Ljava/lang/Object;
.source "VerifyModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public code:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public origin:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(ILjava/lang/Object;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 20
    packed-switch p1, :pswitch_data_0

    .line 30
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 22
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/VerifyModel;->code:Ljava/lang/String;

    goto :goto_0

    .line 25
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/VerifyModel;->origin:Ljava/lang/Integer;

    goto :goto_0

    .line 20
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method