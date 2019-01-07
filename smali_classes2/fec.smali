.class public final Lfec;
.super Ljava/lang/Object;
.source "FriendCircleAttachmentModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public a:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Map;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lfeb;",
            ">;"
        }
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
    .line 23
    packed-switch p1, :pswitch_data_0

    .line 36
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 25
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lfec;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 28
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lfec;->b:Ljava/util/Map;

    goto :goto_0

    .line 31
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lfec;->c:Ljava/util/Map;

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
