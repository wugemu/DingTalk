.class public final Ldun;
.super Ljava/lang/Object;
.source "ResumeAuthModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public a:Ljava/lang/String;
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

.field public e:Ljava/lang/Boolean;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x5
    .end annotation
.end field

.field public f:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x6
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

.method public static a(Lcom/alibaba/android/dingtalkim/base/model/ResumeAuthDo;)Ldun;
    .locals 2
    .param p0, "authDo"    # Lcom/alibaba/android/dingtalkim/base/model/ResumeAuthDo;

    .prologue
    .line 53
    if-nez p0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    .line 56
    :cond_0
    new-instance v0, Ldun;

    invoke-direct {v0}, Ldun;-><init>()V

    .line 57
    .local v0, "model":Ldun;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/ResumeAuthDo;->corpId:Ljava/lang/String;

    iput-object v1, v0, Ldun;->a:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/ResumeAuthDo;->resumeId:Ljava/lang/String;

    iput-object v1, v0, Ldun;->b:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/ResumeAuthDo;->jobId:Ljava/lang/String;

    iput-object v1, v0, Ldun;->c:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/ResumeAuthDo;->encRecruitUid:Ljava/lang/String;

    iput-object v1, v0, Ldun;->d:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final decode(ILjava/lang/Object;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 28
    packed-switch p1, :pswitch_data_0

    .line 50
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 30
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldun;->a:Ljava/lang/String;

    goto :goto_0

    .line 33
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldun;->b:Ljava/lang/String;

    goto :goto_0

    .line 36
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldun;->c:Ljava/lang/String;

    goto :goto_0

    .line 39
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldun;->d:Ljava/lang/String;

    goto :goto_0

    .line 42
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldun;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 45
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldun;->f:Ljava/lang/Long;

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
