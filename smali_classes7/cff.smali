.class public final Lcff;
.super Ljava/lang/Object;
.source "OrgRelationModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public a:Ljava/lang/Boolean;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public b:Ljava/lang/Boolean;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(ILjava/lang/Object;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 16
    packed-switch p1, :pswitch_data_0

    .line 26
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 18
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    .line 1022
    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcff;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 21
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/Boolean;

    .line 2022
    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcff;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 16
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
