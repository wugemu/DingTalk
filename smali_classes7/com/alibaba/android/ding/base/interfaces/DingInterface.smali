.class public abstract Lcom/alibaba/android/ding/base/interfaces/DingInterface;
.super Lckb;
.source "DingInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;,
        Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lckb;-><init>()V

    .line 442
    return-void
.end method

.method public static a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(I)Lblf;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 347
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)Lcom/alibaba/android/ding/base/objects/DingTabFragment;
    .locals 1
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "originList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/util/List;II)Ljava/util/List;
    .locals 1
    .param p2, "offset"    # I
    .param p3, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "senderIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p1, "dingId"    # Ljava/lang/String;
    .param p2, "commentId"    # Ljava/lang/String;
    .param p3, "authCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    .local p4, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(JLcma;)V
    .locals 0
    .param p1, "receiverUid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Laze;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p3, "listener":Lcma;, "Lcma<Laze;>;"
    return-void
.end method

.method public a(JLjava/util/List;ILcma;)V
    .locals 0
    .param p1, "dingId"    # J
    .param p4, "remindType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;I",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public a(JLjava/util/List;J)V
    .locals 0
    .param p1, "dingId"    # J
    .param p4, "createAt"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 318
    return-void
.end method

.method public a(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "filterType"    # I

    .prologue
    .line 475
    return-void
.end method

.method public a(Landroid/app/Activity;IIZLjava/util/ArrayList;Ljava/lang/String;J)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "remindModeIndex"    # I
    .param p3, "remindType"    # I
    .param p4, "showRemindType"    # Z
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "timeStamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "IIZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p5, "remindTypeResIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;IJ)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "repeatFrequencyOrdinal"    # I
    .param p3, "timeStamp"    # J

    .prologue
    .line 325
    return-void
.end method

.method public a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;JJZLcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dingId"    # J
    .param p4, "uniqueId"    # Ljava/lang/String;
    .param p5, "recurrenceId"    # Ljava/lang/String;
    .param p6, "startTimeMillis"    # J
    .param p8, "endTimeMillis"    # J
    .param p10, "notice"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJZ",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p11, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 416
    return-void
.end method

.method public a(Landroid/app/Activity;Lcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcma",
            "<",
            "Lchh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p2, "listener":Lcma;, "Lcma<Lchh;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "createInfo"    # Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .prologue
    .line 222
    return-void
.end method

.method public abstract a(Landroid/app/Activity;Ljava/lang/String;)V
.end method

.method public abstract a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scope"    # I
    .param p3, "dingId"    # Ljava/lang/String;
    .param p4, "wrapperUniqueId"    # Ljava/lang/String;
    .param p5, "recurrenceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 477
    return-void
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scope"    # I
    .param p3, "dingId"    # Ljava/lang/String;
    .param p4, "uniqueId"    # Ljava/lang/String;
    .param p5, "recurrenceId"    # Ljava/lang/String;
    .param p6, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 482
    return-void
.end method

.method public abstract a(Landroid/content/Context;Landroid/os/Bundle;)V
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "flags"    # I

    .prologue
    .line 213
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "createInfo"    # Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .prologue
    .line 229
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "createInfo"    # Lcom/alibaba/android/ding/base/objects/DingCreateInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/ding/base/objects/DingCreateInfo;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;ZLcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "createInfo"    # Lcom/alibaba/android/ding/base/objects/DingCreateInfo;
    .param p3, "ignorePrevent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/ding/base/objects/DingCreateInfo;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V
.end method

.method public a(Lckm$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "observer":Lckm$a;, "Lckm$a<Ljava/lang/Integer;>;"
    return-void
.end method

.method public abstract a(Lcmi;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmi",
            "<",
            "Lcdj;",
            ">;)V"
        }
    .end annotation
.end method

.method public a(Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;)V
    .locals 0
    .param p1, "dingAdsChangeListener"    # Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;

    .prologue
    .line 386
    return-void
.end method

.method public a(Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;)V
    .locals 0
    .param p1, "dingNotificationListener"    # Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;

    .prologue
    .line 448
    return-void
.end method

.method public a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing$a;)V
    .locals 0
    .param p1, "type"    # Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;
    .param p2, "observer"    # Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    .prologue
    .line 130
    return-void
.end method

.method public abstract a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
.end method

.method public a(Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 115
    return-void
.end method

.method public a(Ljava/lang/String;JLcma;)V
    .locals 0
    .param p1, "dingId"    # Ljava/lang/String;
    .param p2, "blockTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 498
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public abstract a(Ljava/lang/String;Lcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)V"
        }
    .end annotation
.end method

.method public a(Ljava/util/List;Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p1, "dingIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 1
    .param p1, "senderId"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/app/Activity;)Lcom/alibaba/android/ding/base/objects/DingCardView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 439
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/content/Context;)Lcom/alibaba/android/ding/base/objects/IDingAdsView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 355
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract b()V
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 171
    return-void
.end method

.method public b(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 192
    return-void
.end method

.method public b(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "createInfo"    # Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .prologue
    .line 533
    return-void
.end method

.method public b(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "createInfo"    # Lcom/alibaba/android/ding/base/objects/DingCreateInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/ding/base/objects/DingCreateInfo;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public b(Lckm$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "observer":Lckm$a;, "Lckm$a<Ljava/lang/Integer;>;"
    return-void
.end method

.method public b(Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;)V
    .locals 0
    .param p1, "dingAdsChangeListener"    # Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;

    .prologue
    .line 391
    return-void
.end method

.method public b(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing$a;)V
    .locals 0
    .param p1, "type"    # Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;
    .param p2, "observer"    # Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    .prologue
    .line 132
    return-void
.end method

.method public b(Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public b(Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public b(I)Z
    .locals 1
    .param p1, "bizType"    # I

    .prologue
    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/content/Context;)Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 364
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 527
    return-void
.end method

.method public c(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "dingId"    # Ljava/lang/String;

    .prologue
    .line 186
    return-void
.end method

.method public c(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 514
    return-void
.end method

.method public c(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "createInfo"    # Lcom/alibaba/android/ding/base/objects/DingCreateInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/ding/base/objects/DingCreateInfo;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/content/Context;)Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 411
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Lazb;
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 405
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 451
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method public l()V
    .locals 0

    .prologue
    .line 492
    return-void
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    return v0
.end method
