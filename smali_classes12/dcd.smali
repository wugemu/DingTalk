.class public final Ldcd;
.super Ljava/lang/Object;
.source "BotModel.java"

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

.field public d:Ljava/lang/Boolean;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x4
    .end annotation
.end field

.field public e:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x5
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x6
    .end annotation
.end field

.field public g:Ldch;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x7
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x8
    .end annotation
.end field

.field public i:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x9
    .end annotation
.end field

.field public j:Ljava/util/Map;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xa
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

.field public k:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xb
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xc
    .end annotation
.end field

.field public m:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xd
    .end annotation
.end field

.field public n:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xe
    .end annotation
.end field

.field public o:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xf
    .end annotation
.end field

.field public p:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x10
    .end annotation
.end field

.field public q:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x11
    .end annotation
.end field

.field public r:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x12
    .end annotation
.end field

.field public s:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x13
    .end annotation
.end field

.field public t:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x14
    .end annotation
.end field

.field public u:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldcm;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x16
    .end annotation
.end field

.field public w:Ldcg;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x17
    .end annotation
.end field

.field public x:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x18
    .end annotation
.end field

.field public y:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x19
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(ILjava/lang/Object;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 70
    packed-switch p1, :pswitch_data_0

    .line 150
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 72
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->a:Ljava/lang/Long;

    goto :goto_0

    .line 75
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->b:Ljava/lang/String;

    goto :goto_0

    .line 78
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->c:Ljava/lang/String;

    goto :goto_0

    .line 81
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 84
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 87
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->f:Ljava/lang/String;

    goto :goto_0

    .line 90
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Ldch;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->g:Ldch;

    goto :goto_0

    .line 93
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_7
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->h:Ljava/lang/String;

    goto :goto_0

    .line 96
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_8
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->i:Ljava/lang/Long;

    goto :goto_0

    .line 99
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_9
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->j:Ljava/util/Map;

    goto :goto_0

    .line 102
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_a
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->k:Ljava/lang/Integer;

    goto :goto_0

    .line 105
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_b
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->l:Ljava/lang/String;

    goto :goto_0

    .line 108
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->m:Ljava/lang/Long;

    goto :goto_0

    .line 111
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_d
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->n:Ljava/lang/String;

    goto :goto_0

    .line 114
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->o:Ljava/lang/Long;

    goto :goto_0

    .line 117
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_f
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->p:Ljava/lang/String;

    goto :goto_0

    .line 120
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_10
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->q:Ljava/lang/Integer;

    goto :goto_0

    .line 123
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_11
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->r:Ljava/lang/String;

    goto :goto_0

    .line 126
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_12
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->s:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 129
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_13
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->t:Ljava/lang/String;

    goto/16 :goto_0

    .line 132
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_14
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->u:Ljava/util/List;

    goto/16 :goto_0

    .line 135
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_15
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->v:Ljava/lang/String;

    goto/16 :goto_0

    .line 138
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_16
    check-cast p2, Ldcg;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->w:Ldcg;

    goto/16 :goto_0

    .line 141
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_17
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->x:Ljava/lang/String;

    goto/16 :goto_0

    .line 144
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_18
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldcd;->y:Ljava/lang/String;

    goto/16 :goto_0

    .line 70
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
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method
