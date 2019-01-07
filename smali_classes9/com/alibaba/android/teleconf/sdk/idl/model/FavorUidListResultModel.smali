.class public final Lcom/alibaba/android/teleconf/sdk/idl/model/FavorUidListResultModel;
.super Ljava/lang/Object;
.source "FavorUidListResultModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public result:Lcom/alibaba/android/teleconf/sdk/idl/model/FavorResultModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public uidList:Lcom/alibaba/android/teleconf/sdk/idl/model/FavorUidListModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(ILjava/lang/Object;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 21
    packed-switch p1, :pswitch_data_0

    .line 31
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 23
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lcom/alibaba/android/teleconf/sdk/idl/model/FavorResultModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/FavorUidListResultModel;->result:Lcom/alibaba/android/teleconf/sdk/idl/model/FavorResultModel;

    goto :goto_0

    .line 26
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Lcom/alibaba/android/teleconf/sdk/idl/model/FavorUidListModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/FavorUidListResultModel;->uidList:Lcom/alibaba/android/teleconf/sdk/idl/model/FavorUidListModel;

    goto :goto_0

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
