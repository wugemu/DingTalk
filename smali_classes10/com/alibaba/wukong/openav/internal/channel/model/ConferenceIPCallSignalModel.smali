.class public final Lcom/alibaba/wukong/openav/internal/channel/model/ConferenceIPCallSignalModel;
.super Ljava/lang/Object;
.source "ConferenceIPCallSignalModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public messageContent:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(ILjava/lang/Object;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 30
    packed-switch p1, :pswitch_data_0

    .line 37
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 32
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/openav/internal/channel/model/ConferenceIPCallSignalModel;->messageContent:Ljava/lang/String;

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
