.class public final Laqx;
.super Ljava/lang/Object;
.source "HolidayArrangementResultModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public a:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laqw;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Long;
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
    .line 24
    packed-switch p1, :pswitch_data_0

    .line 35
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 26
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Laqx;->a:Ljava/util/List;

    goto :goto_0

    .line 29
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Laqx;->b:Ljava/lang/Long;

    goto :goto_0

    .line 24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
