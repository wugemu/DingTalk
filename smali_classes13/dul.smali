.class public final Ldul;
.super Ljava/lang/Object;
.source "RecordModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public a:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reservationId"
    .end annotation

    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recordMediaIdModelList"
    .end annotation

    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lduj;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalCount"
    .end annotation

    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Long;Ljava/util/List;I)Ldul;
    .locals 2
    .param p0, "reservationId"    # Ljava/lang/Long;
    .param p2, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lduj;",
            ">;I)",
            "Ldul;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lduj;>;"
    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    if-gtz p2, :cond_1

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    .line 56
    :cond_1
    new-instance v0, Ldul;

    invoke-direct {v0}, Ldul;-><init>()V

    .line 57
    .local v0, "recordModel":Ldul;
    iput-object p0, v0, Ldul;->a:Ljava/lang/Long;

    .line 58
    iput-object p1, v0, Ldul;->b:Ljava/util/List;

    .line 59
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ldul;->c:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final decode(ILjava/lang/Object;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 35
    packed-switch p1, :pswitch_data_0

    .line 48
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 37
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldul;->a:Ljava/lang/Long;

    goto :goto_0

    .line 40
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldul;->b:Ljava/util/List;

    goto :goto_0

    .line 43
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldul;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
