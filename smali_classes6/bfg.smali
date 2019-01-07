.class public final Lbfg;
.super Ljava/lang/Object;
.source "DingWrapperObject.java"


# instance fields
.field public a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field public b:Lbfz;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lbfv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbfg;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Lazm;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 4
    .param p0, "model"    # Lazm;

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz p0, :cond_0

    .line 71
    iget-object v2, p0, Lazm;->m:Ljava/lang/Integer;

    .line 1033
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 71
    invoke-static {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    move-result-object v0

    .line 72
    .local v0, "identity":Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;
    sget-object v2, Lbfg$1;->a:[I

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 85
    .end local v0    # "identity":Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;
    :cond_0
    :goto_0
    return-object v1

    .line 74
    .restart local v0    # "identity":Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;
    :pswitch_0
    new-instance v1, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;

    .end local v1    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;-><init>(Lazm;)V

    .line 75
    .restart local v1    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    goto :goto_0

    .line 78
    :pswitch_1
    new-instance v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    .end local v1    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;-><init>(Lazm;)V

    .restart local v1    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
