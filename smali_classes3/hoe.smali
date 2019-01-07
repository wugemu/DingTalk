.class public final Lhoe;
.super Ljava/lang/Object;
.source "MyMiniAppModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public a:Ljava/lang/Integer;
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

.field public f:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x6
    .end annotation
.end field

.field public g:Z
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x7
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
    .locals 1
    .param p1, "i"    # I
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 59
    packed-switch p1, :pswitch_data_0

    .line 83
    .end local p2    # "o":Ljava/lang/Object;
    :goto_0
    return-void

    .line 61
    .restart local p2    # "o":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "o":Ljava/lang/Object;
    iput-object p2, p0, Lhoe;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 64
    .restart local p2    # "o":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "o":Ljava/lang/Object;
    iput-object p2, p0, Lhoe;->b:Ljava/lang/String;

    goto :goto_0

    .line 67
    .restart local p2    # "o":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "o":Ljava/lang/Object;
    iput-object p2, p0, Lhoe;->c:Ljava/lang/String;

    goto :goto_0

    .line 70
    .restart local p2    # "o":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    .end local p2    # "o":Ljava/lang/Object;
    iput-object p2, p0, Lhoe;->d:Ljava/lang/String;

    goto :goto_0

    .line 73
    .restart local p2    # "o":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/String;

    .end local p2    # "o":Ljava/lang/Object;
    iput-object p2, p0, Lhoe;->e:Ljava/lang/String;

    goto :goto_0

    .restart local p2    # "o":Ljava/lang/Object;
    :pswitch_5
    move-object v0, p2

    .line 76
    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lhoe;->f:Ljava/lang/Long;

    .line 78
    :pswitch_6
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lhoe;->g:Z

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 87
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "MyMiniAppModel{"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "bizType="

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lhoe;->a:Ljava/lang/Integer;

    .line 89
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, ", miniAppId="

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lhoe;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, ", name="

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lhoe;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, ", logo="

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lhoe;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, ", desc="

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lhoe;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, ", showTime="

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lhoe;->f:Ljava/lang/Long;

    .line 99
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, ", stick="

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-boolean v2, p0, Lhoe;->g:Z

    .line 101
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "}"

    aput-object v2, v0, v1

    .line 87
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
