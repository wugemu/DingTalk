.class public final Lcev;
.super Ljava/lang/Object;
.source "OrgEmployeeExtensionModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public a:Lcew;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field

.field public c:Ljava/util/Date;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x3
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x4
    .end annotation
.end field

.field public e:Ljava/lang/Boolean;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x5
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcey;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x7
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcfc;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcfi;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x8
    .end annotation
.end field

.field public i:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x9
    .end annotation
.end field

.field public j:Ljava/lang/Boolean;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xa
    .end annotation
.end field

.field public k:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xb
    .end annotation
.end field

.field public l:Lces;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xc
    .end annotation
.end field

.field public m:Lcev;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xd
    .end annotation
.end field

.field public n:Lcer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xe
    .end annotation
.end field

.field public o:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xf
    .end annotation
.end field

.field public p:Lcdo;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x10
    .end annotation
.end field

.field public q:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x11
    .end annotation
.end field

.field public r:Ljava/lang/Boolean;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x12
    .end annotation
.end field

.field public s:Ljava/lang/Boolean;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x13
    .end annotation
.end field

.field public t:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x14
    .end annotation
.end field

.field public u:Ljava/lang/Boolean;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x15
    .end annotation
.end field

.field public v:Ljava/lang/Boolean;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x16
    .end annotation
.end field

.field public w:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x17
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
    .line 81
    packed-switch p1, :pswitch_data_0

    .line 154
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 83
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lcew;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcev;->a:Lcew;

    goto :goto_0

    .line 86
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcev;->b:Ljava/lang/String;

    goto :goto_0

    .line 89
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/util/Date;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcev;->c:Ljava/util/Date;

    goto :goto_0

    .line 92
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcev;->d:Ljava/lang/String;

    goto :goto_0

    .line 95
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcev;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 98
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcev;->f:Ljava/util/List;

    goto :goto_0

    .line 101
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcev;->g:Ljava/util/List;

    goto :goto_0

    .line 104
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_7
    check-cast p2, Lcfi;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcev;->h:Lcfi;

    goto :goto_0

    .line 107
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_8
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcev;->i:Ljava/lang/Long;

    goto :goto_0

    .line 110
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_9
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcev;->j:Ljava/lang/Boolean;

    goto :goto_0

    .line 113
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_a
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcev;->k:Ljava/lang/Integer;

    goto :goto_0

    .line 116
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_b
    check-cast p2, Lces;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcev;->l:Lces;

    goto :goto_0

    .line 119
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_c
    check-cast p2, Lcev;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcev;->m:Lcev;

    goto :goto_0

    .line 122
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_d
    check-cast p2, Lcer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcev;->n:Lcer;

    goto :goto_0

    .line 125
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_e
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcev;->o:Ljava/lang/String;

    goto :goto_0

    .line 128
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_f
    check-cast p2, Lcdo;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcev;->p:Lcdo;

    goto :goto_0

    .line 131
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_10
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcev;->q:Ljava/lang/String;

    goto :goto_0

    .line 134
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_11
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcev;->r:Ljava/lang/Boolean;

    goto :goto_0

    .line 137
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_12
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcev;->s:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 140
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_13
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcev;->t:Ljava/lang/String;

    goto/16 :goto_0

    .line 143
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_14
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcev;->u:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 146
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_15
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcev;->v:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 149
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_16
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcev;->w:Ljava/lang/String;

    goto/16 :goto_0

    .line 81
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
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method
