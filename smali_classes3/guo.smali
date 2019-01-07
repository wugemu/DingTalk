.class public final Lguo;
.super Ljava/lang/Object;
.source "SchoolRecruitPageModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public a:Lgum;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public b:Lgun;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xc
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
    .line 21
    sparse-switch p1, :sswitch_data_0

    .line 34
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 23
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_0
    check-cast p2, Lgum;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lguo;->a:Lgum;

    goto :goto_0

    .line 26
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_1
    check-cast p2, Lgun;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lguo;->b:Lgun;

    goto :goto_0

    .line 29
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lguo;->c:Ljava/lang/String;

    goto :goto_0

    .line 21
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xc -> :sswitch_2
    .end sparse-switch
.end method
