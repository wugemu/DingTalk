.class public final Ldci;
.super Ljava/lang/Object;
.source "CreateBotModel.java"

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

.field public d:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x4
    .end annotation
.end field

.field public e:Ljava/util/Map;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x5
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;)Ldci;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;

    .prologue
    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    .line 53
    :cond_0
    new-instance v0, Ldci;

    invoke-direct {v0}, Ldci;-><init>()V

    .line 54
    .local v0, "model":Ldci;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;->mTemplateId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ldci;->a:Ljava/lang/Long;

    .line 55
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;->mName:Ljava/lang/String;

    iput-object v1, v0, Ldci;->b:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;->mIcon:Ljava/lang/String;

    iput-object v1, v0, Ldci;->c:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;->mCid:Ljava/lang/String;

    iput-object v1, v0, Ldci;->d:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;->mExtension:Ljava/util/Map;

    iput-object v1, v0, Ldci;->e:Ljava/util/Map;

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

    .line 47
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 30
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldci;->a:Ljava/lang/Long;

    goto :goto_0

    .line 33
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldci;->b:Ljava/lang/String;

    goto :goto_0

    .line 36
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldci;->c:Ljava/lang/String;

    goto :goto_0

    .line 39
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldci;->d:Ljava/lang/String;

    goto :goto_0

    .line 42
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldci;->e:Ljava/util/Map;

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
