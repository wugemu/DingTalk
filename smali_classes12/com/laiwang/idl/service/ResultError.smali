.class public final Lcom/laiwang/idl/service/ResultError;
.super Ljava/lang/Object;
.source "ResultError.java"

# interfaces
.implements Liyn;


# instance fields
.field public code:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public fromLocal:Ljava/lang/Boolean;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x3
    .end annotation
.end field

.field public reason:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/laiwang/idl/service/ResultError;->code:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/laiwang/idl/service/ResultError;->reason:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/laiwang/idl/service/ResultError;->fromLocal:Ljava/lang/Boolean;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/laiwang/idl/service/ResultError;->code:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/laiwang/idl/service/ResultError;->reason:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/laiwang/idl/service/ResultError;->fromLocal:Ljava/lang/Boolean;

    .line 19
    iput-object p1, p0, Lcom/laiwang/idl/service/ResultError;->code:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/laiwang/idl/service/ResultError;->reason:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "fromLocal"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/laiwang/idl/service/ResultError;->code:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/laiwang/idl/service/ResultError;->reason:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/laiwang/idl/service/ResultError;->fromLocal:Ljava/lang/Boolean;

    .line 24
    iput-object p1, p0, Lcom/laiwang/idl/service/ResultError;->code:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/laiwang/idl/service/ResultError;->reason:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/laiwang/idl/service/ResultError;->fromLocal:Ljava/lang/Boolean;

    .line 27
    return-void
.end method


# virtual methods
.method public final decode(ILjava/lang/Object;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 30
    packed-switch p1, :pswitch_data_0

    .line 43
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 32
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/laiwang/idl/service/ResultError;->code:Ljava/lang/String;

    goto :goto_0

    .line 35
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/laiwang/idl/service/ResultError;->reason:Ljava/lang/String;

    goto :goto_0

    .line 38
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/laiwang/idl/service/ResultError;->fromLocal:Ljava/lang/Boolean;

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
