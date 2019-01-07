.class public final Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;
.super Ljava/lang/Object;
.source "BindAndSettingModel.java"

# interfaces
.implements Liyn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;
    }
.end annotation


# instance fields
.field public a:Lbrz;
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

.field public e:Ljava/lang/Integer;
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
            "Ljava/lang/Long;",
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/Boolean;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x8
    .end annotation
.end field

.field public i:Ljava/lang/Boolean;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x9
    .end annotation
.end field

.field public j:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xa
    .end annotation
.end field

.field public k:Ljava/lang/Boolean;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xb
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    .line 60
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->k:Ljava/lang/Boolean;

    .line 59
    return-void
.end method


# virtual methods
.method public final decode(ILjava/lang/Object;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 63
    packed-switch p1, :pswitch_data_0

    .line 100
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 65
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lbrz;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->a:Lbrz;

    goto :goto_0

    .line 68
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->b:Ljava/lang/String;

    goto :goto_0

    .line 71
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->c:Ljava/lang/String;

    goto :goto_0

    .line 74
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->d:Ljava/lang/String;

    goto :goto_0

    .line 77
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 80
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->f:Ljava/util/List;

    goto :goto_0

    .line 83
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->g:Ljava/util/List;

    goto :goto_0

    .line 86
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_7
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->h:Ljava/lang/Boolean;

    goto :goto_0

    .line 89
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_8
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->i:Ljava/lang/Boolean;

    goto :goto_0

    .line 92
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_9
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->j:Ljava/lang/String;

    goto :goto_0

    .line 95
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->k:Ljava/lang/Boolean;

    goto :goto_0

    .line 63
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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
