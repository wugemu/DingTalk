.class public final Lblk;
.super Ljava/lang/Object;
.source "AdsPositionStyleModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public a:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public b:Ljava/lang/Boolean;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field

.field public c:Ljava/lang/Boolean;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x3
    .end annotation
.end field

.field public d:Ljava/lang/String;
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

.field public h:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x8
    .end annotation
.end field

.field public i:Ljava/lang/Boolean;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x9
    .end annotation
.end field

.field public j:Lblh;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xa
    .end annotation
.end field

.field public k:Lbll;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xb
    .end annotation
.end field

.field public l:Lbln;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xc
    .end annotation
.end field

.field public m:Lblm;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xd
    .end annotation
.end field

.field public n:Lblo;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xe
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
    .line 51
    packed-switch p1, :pswitch_data_0

    .line 97
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 53
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lblk;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 56
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lblk;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 59
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lblk;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 62
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lblk;->d:Ljava/lang/String;

    goto :goto_0

    .line 65
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lblk;->e:Ljava/lang/String;

    goto :goto_0

    .line 68
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lblk;->f:Ljava/lang/String;

    goto :goto_0

    .line 71
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lblk;->g:Ljava/lang/String;

    goto :goto_0

    .line 74
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_7
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lblk;->h:Ljava/lang/String;

    goto :goto_0

    .line 77
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_8
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lblk;->i:Ljava/lang/Boolean;

    goto :goto_0

    .line 80
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_9
    check-cast p2, Lblh;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lblk;->j:Lblh;

    goto :goto_0

    .line 83
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_a
    check-cast p2, Lbll;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lblk;->k:Lbll;

    goto :goto_0

    .line 86
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_b
    check-cast p2, Lbln;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lblk;->l:Lbln;

    goto :goto_0

    .line 89
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_c
    check-cast p2, Lblm;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lblk;->m:Lblm;

    goto :goto_0

    .line 92
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_d
    check-cast p2, Lblo;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lblk;->n:Lblo;

    goto :goto_0

    .line 51
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
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
