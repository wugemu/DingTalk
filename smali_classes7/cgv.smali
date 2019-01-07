.class public final Lcgv;
.super Ljava/lang/Object;
.source "CardProfileModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public a:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x3
    .end annotation
.end field

.field public d:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x4
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x5
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x6
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x7
    .end annotation
.end field

.field public h:Lcha;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x8
    .end annotation
.end field

.field public i:Lchd;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x9
    .end annotation
.end field

.field public j:Lcgq;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xa
    .end annotation
.end field

.field public k:Lcgp;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xb
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xc
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
    .line 50
    packed-switch p1, :pswitch_data_0

    .line 90
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 52
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcgv;->a:Ljava/lang/Long;

    goto :goto_0

    .line 55
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcgv;->b:Ljava/lang/String;

    goto :goto_0

    .line 58
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcgv;->c:Ljava/lang/String;

    goto :goto_0

    .line 61
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcgv;->d:Ljava/lang/Long;

    goto :goto_0

    .line 64
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcgv;->e:Ljava/lang/String;

    goto :goto_0

    .line 67
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcgv;->f:Ljava/lang/String;

    goto :goto_0

    .line 70
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcgv;->g:Ljava/lang/String;

    goto :goto_0

    .line 73
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_7
    check-cast p2, Lcha;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcgv;->h:Lcha;

    goto :goto_0

    .line 76
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_8
    check-cast p2, Lchd;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcgv;->i:Lchd;

    goto :goto_0

    .line 79
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_9
    check-cast p2, Lcgq;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcgv;->j:Lcgq;

    goto :goto_0

    .line 82
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_a
    check-cast p2, Lcgp;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcgv;->k:Lcgp;

    goto :goto_0

    .line 85
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_b
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcgv;->l:Ljava/lang/String;

    goto :goto_0

    .line 50
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
        :pswitch_b
    .end packed-switch
.end method
