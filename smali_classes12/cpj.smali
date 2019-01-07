.class public Lcpj;
.super Ljava/lang/Object;
.source "PhoneCallUtil.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    const-class v0, Lcpj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcpj;->a:Ljava/lang/String;

    .line 48
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "subscription"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Subscription"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.android.phone.extra.slot"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "phone"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "com.android.phone.DialingMode"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "simId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "simnum"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "phone_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "simSlot"

    aput-object v2, v0, v1

    sput-object v0, Lcpj;->b:[Ljava/lang/String;

    .line 61
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "subscription"

    aput-object v1, v0, v3

    const-string/jumbo v1, "calling_operation"

    aput-object v1, v0, v4

    sput-object v0, Lcpj;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;I)Landroid/telecom/PhoneAccountHandle;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 479
    if-nez p0, :cond_1

    .line 480
    const/4 v0, 0x0

    .line 511
    :cond_0
    :goto_0
    return-object v0

    .line 482
    :cond_1
    const/4 v0, 0x0

    .line 483
    .local v0, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x16

    if-lt v8, v9, :cond_0

    .line 484
    invoke-static {p0}, Lcpj;->j(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 485
    .local v1, "accountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 486
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    .line 487
    .local v7, "subManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v7, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    .line 488
    .local v5, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v5, :cond_0

    .line 489
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 490
    .local v2, "handle":Landroid/telecom/PhoneAccountHandle;
    if-eqz v2, :cond_2

    .line 493
    invoke-virtual {v2}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v3

    .line 494
    .local v3, "handleId":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 495
    .local v6, "subId":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v4

    .line 502
    .local v4, "iccId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 503
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 504
    :cond_4
    move-object v0, v2

    .line 505
    goto :goto_0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcpj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0x16

    const/4 v5, -0x1

    .line 770
    const/4 v1, 0x0

    .line 771
    .local v1, "number":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 772
    :cond_0
    const/4 v4, 0x0

    .line 792
    :goto_0
    return-object v4

    .line 775
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_4

    .line 776
    invoke-static {p0}, Lcpj;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 777
    .local v2, "slotInfos":Ljava/util/List;, "Ljava/util/List<Lckp;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1747
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_5

    :cond_2
    move v3, v5

    .line 779
    .local v3, "subId":I
    :goto_1
    if-lez v3, :cond_4

    .line 780
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckp;

    .line 781
    .local v0, "info":Lckp;
    if-eqz v0, :cond_3

    .line 2080
    iget v5, v0, Lckp;->a:I

    .line 784
    if-ne v5, v3, :cond_3

    .line 3056
    iget-object v1, v0, Lckp;->c:Ljava/lang/String;

    .end local v0    # "info":Lckp;
    .end local v2    # "slotInfos":Ljava/util/List;, "Ljava/util/List<Lckp;>;"
    .end local v3    # "subId":I
    :cond_4
    move-object v4, v1

    .line 792
    goto :goto_0

    .line 1751
    .restart local v2    # "slotInfos":Ljava/util/List;, "Ljava/util/List<Lckp;>;"
    :cond_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_7

    .line 1752
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 1753
    if-eqz v7, :cond_7

    .line 1754
    const/4 v4, 0x0

    move v6, v4

    :goto_2
    const/4 v4, 0x2

    if-ge v6, v4, :cond_7

    .line 1755
    sget-object v4, Lcpj;->c:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1756
    sget-object v4, Lcpj;->c:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1757
    if-ltz v4, :cond_6

    const/4 v8, 0x5

    if-ge v4, v8, :cond_6

    :goto_3
    move v3, v4

    .line 1766
    goto :goto_1

    .line 1754
    :cond_6
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_2

    :cond_7
    move v4, v5

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 702
    if-eqz p0, :cond_0

    .line 703
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.CALL"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 708
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "tel:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 709
    if-ltz p2, :cond_4

    .line 710
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-lt v5, v6, :cond_5

    .line 711
    invoke-static {p0, p2}, Lcpj;->a(Landroid/content/Context;I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    .line 712
    .local v4, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    if-nez v4, :cond_2

    .line 714
    invoke-static {p0}, Lcpj;->j(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 715
    .local v0, "accountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge p2, v5, :cond_2

    .line 716
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    .line 719
    .end local v0    # "accountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .restart local v4    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_2
    if-eqz v4, :cond_3

    .line 720
    const-string/jumbo v5, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 727
    .end local v4    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_3
    const-string/jumbo v5, "dingtalkbase"

    sget-object v6, Lcpj;->a:Ljava/lang/String;

    const-string/jumbo v7, "Make call with extras"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_4
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 732
    :catch_0
    move-exception v1

    .line 733
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v5, "dingtalkbase"

    sget-object v6, Lcpj;->a:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "Make call exp: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :try_start_1
    const-string/jumbo v5, "android.intent.action.DIAL"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 739
    :catch_1
    move-exception v5

    const-string/jumbo v5, "dingtalkbase"

    sget-object v6, Lcpj;->a:Ljava/lang/String;

    const-string/jumbo v7, "No dial activity exp"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 723
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v5, 0x9

    if-ge v2, v5, :cond_3

    .line 724
    sget-object v5, Lcpj;->b:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 723
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 553
    if-nez p0, :cond_0

    move v0, v2

    .line 567
    :goto_0
    return v0

    .line 556
    :cond_0
    const/4 v0, 0x0

    .line 557
    .local v0, "isMultiSlot":Z
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v3, v4, :cond_2

    .line 558
    invoke-static {p0}, Lcpj;->k(Landroid/content/Context;)I

    move-result v1

    .line 559
    .local v1, "maxActiveCount":I
    if-lt v1, v7, :cond_1

    .line 560
    const/4 v0, 0x1

    .line 565
    .end local v1    # "maxActiveCount":I
    :cond_1
    :goto_1
    const-string/jumbo v3, "dingtalkbase"

    sget-object v4, Lcpj;->a:Ljava/lang/String;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v6, v5, v2

    const/4 v2, 0x1

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v6, v5, v2

    const-string/jumbo v2, "is multi-slot "

    aput-object v2, v5, v7

    const/4 v2, 0x3

    .line 566
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 565
    invoke-static {v3, v4, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 563
    :cond_2
    invoke-static {p0}, Lcpj;->b(Landroid/content/Context;)Z

    move-result v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 7
    .param p0, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v3

    .line 89
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 90
    .local v0, "len":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1067
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    .line 90
    :goto_1
    if-nez v1, :cond_0

    move v3, v4

    .line 91
    goto :goto_0

    .line 1070
    :cond_2
    const/16 v1, 0x30

    .line 1071
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 1072
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :cond_3
    move v2, v3

    .line 1075
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 1076
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1077
    if-eq v1, v6, :cond_4

    move v1, v3

    .line 1079
    goto :goto_1

    .line 1075
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v1, v4

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x2

    .line 573
    if-nez p0, :cond_0

    move v2, v3

    .line 590
    :goto_0
    return v2

    .line 576
    :cond_0
    const/4 v2, 0x0

    .line 577
    .local v2, "isMultiCard":Z
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x16

    if-lt v4, v5, :cond_2

    .line 578
    invoke-static {p0}, Lcpj;->l(Landroid/content/Context;)I

    move-result v0

    .line 579
    .local v0, "activeCount":I
    if-lt v0, v8, :cond_1

    .line 580
    const/4 v2, 0x1

    .line 588
    .end local v0    # "activeCount":I
    :cond_1
    :goto_1
    const-string/jumbo v4, "dingtalkbase"

    sget-object v5, Lcpj;->a:Ljava/lang/String;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v3, 0x1

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v7, v6, v3

    const-string/jumbo v3, "is multi-card "

    aput-object v3, v6, v8

    const/4 v3, 0x3

    .line 589
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 588
    invoke-static {v4, v5, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 583
    :cond_2
    invoke-static {p0}, Lcpj;->i(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 584
    .local v1, "imeiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v8, :cond_1

    .line 585
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 601
    const/4 v1, 0x1

    .line 602
    .local v1, "hasSIMCard":Z
    if-nez p0, :cond_0

    .line 618
    :goto_0
    return v3

    .line 605
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x16

    if-lt v4, v5, :cond_2

    .line 606
    invoke-static {p0}, Lcpj;->l(Landroid/content/Context;)I

    move-result v0

    .line 607
    .local v0, "activeCount":I
    if-gtz v0, :cond_1

    .line 608
    const/4 v1, 0x0

    .line 616
    .end local v0    # "activeCount":I
    :cond_1
    :goto_1
    const-string/jumbo v4, "dingtalkbase"

    sget-object v5, Lcpj;->a:Ljava/lang/String;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v8, v6, v7

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v3, 0x2

    const-string/jumbo v7, "has sim card "

    aput-object v7, v6, v3

    const/4 v3, 0x3

    .line 617
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 616
    invoke-static {v4, v5, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v1

    .line 618
    goto :goto_0

    .line 611
    :cond_2
    invoke-static {p0}, Lcpj;->i(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 612
    .local v2, "imeiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 613
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static d(Landroid/content/Context;)Ljava/util/List;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lckp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 624
    if-nez p0, :cond_1

    .line 625
    const/4 v15, 0x0

    .line 691
    :cond_0
    :goto_0
    return-object v15

    .line 627
    :cond_1
    const/4 v15, 0x0

    .line 628
    .local v15, "slotInfoList":Ljava/util/List;, "Ljava/util/List<Lckp;>;"
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-lt v4, v6, :cond_4

    .line 629
    invoke-static/range {p0 .. p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v17

    .line 630
    .local v17, "subManager":Landroid/telephony/SubscriptionManager;
    if-eqz v17, :cond_5

    .line 631
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v16

    .line 632
    .local v16, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v16, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 633
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "slotInfoList":Ljava/util/List;, "Ljava/util/List<Lckp;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 634
    .restart local v15    # "slotInfoList":Ljava/util/List;, "Ljava/util/List<Lckp;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/SubscriptionInfo;

    .line 635
    .local v14, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v14, :cond_2

    .line 638
    invoke-virtual {v14}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    .line 639
    .local v3, "slotId":I
    invoke-virtual {v14}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    .line 640
    .local v5, "id":I
    const/4 v1, 0x0

    .line 641
    .local v1, "displayName":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 642
    invoke-virtual {v14}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 644
    :cond_3
    invoke-virtual {v14}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 645
    .local v2, "number":Ljava/lang/String;
    new-instance v0, Lckp;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lckp;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 647
    .local v0, "slotInfo":Lckp;
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    const-string/jumbo v4, "dingtalkbase"

    sget-object v7, Lcpj;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lckp;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 653
    .end local v0    # "slotInfo":Lckp;
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "slotId":I
    .end local v5    # "id":I
    .end local v14    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v16    # "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v17    # "subManager":Landroid/telephony/SubscriptionManager;
    :cond_4
    invoke-static/range {p0 .. p0}, Lcpj;->i(Landroid/content/Context;)Ljava/util/List;

    move-result-object v13

    .line 654
    .local v13, "imsiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v13, :cond_5

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 655
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "slotInfoList":Ljava/util/List;, "Ljava/util/List<Lckp;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .restart local v15    # "slotInfoList":Ljava/util/List;, "Ljava/util/List<Lckp;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_5

    .line 657
    move v3, v12

    .line 659
    .restart local v3    # "slotId":I
    const-string/jumbo v1, ""

    .line 660
    .restart local v1    # "displayName":Ljava/lang/String;
    new-instance v0, Lckp;

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object v6, v0

    move-object v7, v1

    move v9, v3

    move v11, v3

    invoke-direct/range {v6 .. v11}, Lckp;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 662
    .restart local v0    # "slotInfo":Lckp;
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    const-string/jumbo v4, "dingtalkbase"

    sget-object v6, Lcpj;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lckp;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 667
    .end local v0    # "slotInfo":Lckp;
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v3    # "slotId":I
    .end local v12    # "i":I
    .end local v13    # "imsiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    if-eqz v15, :cond_0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_0

    .line 668
    new-instance v4, Lcpj$1;

    invoke-direct {v4}, Lcpj$1;-><init>()V

    invoke-static {v15, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_0
.end method

.method private static e(Landroid/content/Context;)Ljava/util/List;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    if-nez p0, :cond_1

    .line 103
    const/4 v3, 0x0

    .line 151
    :cond_0
    :goto_0
    return-object v3

    .line 106
    :cond_1
    :try_start_0
    const-string/jumbo v10, "phone"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 107
    .local v9, "tm":Landroid/telephony/TelephonyManager;
    const-string/jumbo v10, "com.android.internal.telephony.Phone"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string/jumbo v10, "GEMINI_SIM_1"

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 111
    .local v1, "fields1":Ljava/lang/reflect/Field;
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 112
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 113
    .local v7, "simId_1":Ljava/lang/Integer;
    const-string/jumbo v10, "GEMINI_SIM_2"

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 114
    .local v2, "fields2":Ljava/lang/reflect/Field;
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 115
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    .end local v1    # "fields1":Ljava/lang/reflect/Field;
    .end local v2    # "fields2":Ljava/lang/reflect/Field;
    .local v8, "simId_2":Ljava/lang/Integer;
    :goto_1
    :try_start_2
    const-class v10, Landroid/telephony/TelephonyManager;

    const-string/jumbo v11, "getSubscriberIdGemini"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 122
    .local v6, "m":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 123
    .local v4, "imsi_1":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 141
    .local v5, "imsi_2":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v3, "imeis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v4}, Lcpj;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 143
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_2
    invoke-static {v5}, Lcpj;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 146
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "imeis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "imsi_1":Ljava/lang/String;
    .end local v5    # "imsi_2":Ljava/lang/String;
    .end local v6    # "m":Ljava/lang/reflect/Method;
    .end local v7    # "simId_1":Ljava/lang/Integer;
    .end local v8    # "simId_2":Ljava/lang/Integer;
    .end local v9    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v10

    const/4 v3, 0x0

    goto :goto_0

    .line 117
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "tm":Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v10

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 118
    .restart local v7    # "simId_1":Ljava/lang/Integer;
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    .restart local v8    # "simId_2":Ljava/lang/Integer;
    goto :goto_1
.end method

.method private static f(Landroid/content/Context;)Ljava/util/List;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    if-nez p0, :cond_1

    .line 162
    const/4 v4, 0x0

    .line 211
    :cond_0
    :goto_0
    return-object v4

    .line 165
    :cond_1
    :try_start_0
    const-string/jumbo v13, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 166
    .local v10, "tm":Landroid/telephony/TelephonyManager;
    const-string/jumbo v13, "com.android.internal.telephony.Phone"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 170
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string/jumbo v13, "GEMINI_SIM_1"

    invoke-virtual {v1, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 171
    .local v2, "fields1":Ljava/lang/reflect/Field;
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 172
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 173
    .local v8, "simId_1":Ljava/lang/Integer;
    const-string/jumbo v13, "GEMINI_SIM_2"

    invoke-virtual {v1, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 174
    .local v3, "fields2":Ljava/lang/reflect/Field;
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 175
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    .end local v2    # "fields1":Ljava/lang/reflect/Field;
    .end local v3    # "fields2":Ljava/lang/reflect/Field;
    .local v9, "simId_2":Ljava/lang/Integer;
    :goto_1
    :try_start_2
    const-class v13, Landroid/telephony/TelephonyManager;

    const-string/jumbo v14, "getDefault"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 182
    .local v7, "mx":Ljava/lang/reflect/Method;
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    invoke-virtual {v7, v10, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 183
    .local v11, "tm1":Landroid/telephony/TelephonyManager;
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-virtual {v7, v10, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 185
    .local v12, "tm2":Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "imsi_1":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 201
    .local v6, "imsi_2":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v4, "imeis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v5}, Lcpj;->a(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 203
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_2
    invoke-static {v6}, Lcpj;->a(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 206
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "imeis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "imsi_1":Ljava/lang/String;
    .end local v6    # "imsi_2":Ljava/lang/String;
    .end local v7    # "mx":Ljava/lang/reflect/Method;
    .end local v8    # "simId_1":Ljava/lang/Integer;
    .end local v9    # "simId_2":Ljava/lang/Integer;
    .end local v10    # "tm":Landroid/telephony/TelephonyManager;
    .end local v11    # "tm1":Landroid/telephony/TelephonyManager;
    .end local v12    # "tm2":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v13

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 177
    .restart local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "tm":Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v13

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 178
    .restart local v8    # "simId_1":Ljava/lang/Integer;
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    .restart local v9    # "simId_2":Ljava/lang/Integer;
    goto :goto_1
.end method

.method private static g(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 221
    if-nez p0, :cond_1

    move-object v1, v8

    .line 261
    :cond_0
    :goto_0
    return-object v1

    .line 225
    :cond_1
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v10, "Coolpad"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v10, "dazen X7"

    .line 226
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    move-object v1, v8

    .line 227
    goto :goto_0

    .line 231
    :cond_3
    :try_start_0
    const-string/jumbo v9, "com.android.internal.telephony.PhoneFactory"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 232
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v9, "getServiceName"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 233
    .local v4, "m":Ljava/lang/reflect/Method;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "phone"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v4, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 235
    .local v5, "spreadTmService":Ljava/lang/String;
    const-string/jumbo v9, "phone"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 236
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "imsi_1":Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 240
    .local v7, "tm1":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "imsi_2":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v1, "imeis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2}, Lcpj;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 253
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_4
    invoke-static {v3}, Lcpj;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 256
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "imeis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "imsi_1":Ljava/lang/String;
    .end local v3    # "imsi_2":Ljava/lang/String;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "spreadTmService":Ljava/lang/String;
    .end local v6    # "tm":Landroid/telephony/TelephonyManager;
    .end local v7    # "tm1":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v9

    move-object v1, v8

    goto :goto_0
.end method

.method private static h(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 271
    if-nez p0, :cond_1

    move-object v3, v8

    .line 320
    :cond_0
    :goto_0
    return-object v3

    .line 276
    :cond_1
    :try_start_0
    const-string/jumbo v9, "android.telephony.MSimTelephonyManager"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 277
    .local v0, "cx":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v9, "phone_msim"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 278
    .local v5, "obj":Ljava/lang/Object;
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 279
    .local v6, "simId_1":Ljava/lang/Integer;
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 286
    .local v7, "simId_2":Ljava/lang/Integer;
    const-string/jumbo v9, "getSubscriberId"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 294
    .local v4, "ms":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-virtual {v4, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 295
    .local v1, "imsi_1":Ljava/lang/String;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-virtual {v4, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 300
    .local v2, "imsi_2":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v3, "imsis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcpj;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 302
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_2
    invoke-static {v2}, Lcpj;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 305
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    .end local v0    # "cx":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "imsi_1":Ljava/lang/String;
    .end local v2    # "imsi_2":Ljava/lang/String;
    .end local v3    # "imsis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "ms":Ljava/lang/reflect/Method;
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "simId_1":Ljava/lang/Integer;
    .end local v7    # "simId_2":Ljava/lang/Integer;
    :catch_0
    move-exception v9

    move-object v3, v8

    goto :goto_0
.end method

.method private static i(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    if-nez p0, :cond_1

    .line 326
    const/4 v4, 0x0

    .line 404
    :cond_0
    :goto_0
    return-object v4

    .line 329
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v4, "imsiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v10, "phone"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 333
    .local v9, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "imsi":Ljava/lang/String;
    invoke-static {v1}, Lcpj;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 335
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :cond_2
    :try_start_1
    const-string/jumbo v10, "phone1"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 340
    .local v7, "telephonyManager1":Landroid/telephony/TelephonyManager;
    if-eqz v7, :cond_3

    .line 341
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "imsi1":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-static {v2}, Lcpj;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 343
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 344
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 352
    .end local v2    # "imsi1":Ljava/lang/String;
    .end local v7    # "telephonyManager1":Landroid/telephony/TelephonyManager;
    :cond_3
    :goto_1
    :try_start_2
    const-string/jumbo v10, "phone2"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 353
    .local v8, "telephonyManager2":Landroid/telephony/TelephonyManager;
    if-eqz v8, :cond_4

    .line 354
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "imsi2":Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-static {v3}, Lcpj;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 356
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 357
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 365
    .end local v3    # "imsi2":Ljava/lang/String;
    .end local v8    # "telephonyManager2":Landroid/telephony/TelephonyManager;
    :cond_4
    :goto_2
    :try_start_3
    invoke-static {p0}, Lcpj;->h(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 366
    .local v5, "imsis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 367
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 368
    .local v6, "item":Ljava/lang/String;
    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 369
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 401
    .end local v1    # "imsi":Ljava/lang/String;
    .end local v5    # "imsis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "item":Ljava/lang/String;
    .end local v9    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 374
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "imsi":Ljava/lang/String;
    .restart local v5    # "imsis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "tm":Landroid/telephony/TelephonyManager;
    :cond_6
    :try_start_4
    invoke-static {p0}, Lcpj;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 375
    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_8

    .line 376
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 377
    .restart local v6    # "item":Ljava/lang/String;
    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 378
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 383
    .end local v6    # "item":Ljava/lang/String;
    :cond_8
    invoke-static {p0}, Lcpj;->f(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 384
    if-eqz v5, :cond_a

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_a

    .line 385
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 386
    .restart local v6    # "item":Ljava/lang/String;
    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 387
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 392
    .end local v6    # "item":Ljava/lang/String;
    :cond_a
    invoke-static {p0}, Lcpj;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 393
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 394
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 395
    .restart local v6    # "item":Ljava/lang/String;
    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 396
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    .end local v5    # "imsis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "item":Ljava/lang/String;
    :catch_1
    move-exception v10

    goto/16 :goto_2

    :catch_2
    move-exception v10

    goto/16 :goto_1
.end method

.method private static j(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    if-nez p0, :cond_1

    .line 446
    const/4 v1, 0x0

    .line 473
    :cond_0
    :goto_0
    return-object v1

    .line 448
    :cond_1
    const/4 v1, 0x0

    .line 450
    .local v1, "accountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :try_start_0
    const-string/jumbo v4, "telecom"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/TelecomManager;

    .line 451
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v3, :cond_0

    .line 452
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_2

    .line 453
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 456
    :cond_2
    const-class v4, Landroid/telecom/TelecomManager;

    const-string/jumbo v5, "getCallCapablePhoneAccounts"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 457
    .local v2, "getCallCapablePhoneAccounts":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_3

    .line 458
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 460
    :cond_3
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/List;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2    # "getCallCapablePhoneAccounts":Ljava/lang/reflect/Method;
    .end local v3    # "telecomManager":Landroid/telecom/TelecomManager;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 471
    :catch_1
    move-exception v4

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method private static k(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 517
    if-nez p0, :cond_1

    .line 518
    const/4 v0, 0x0

    .line 530
    :cond_0
    :goto_0
    return v0

    .line 520
    :cond_1
    const/4 v0, 0x0

    .line 522
    .local v0, "activeCount":I
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_0

    .line 523
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 524
    .local v1, "subManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCountMax()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 527
    .end local v1    # "subManager":Landroid/telephony/SubscriptionManager;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "dingtalkbase"

    sget-object v3, Lcpj;->a:Ljava/lang/String;

    const-string/jumbo v4, "getActiveSubscriptionInfoCountMax exp"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static l(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 536
    if-nez p0, :cond_1

    .line 537
    const/4 v0, 0x0

    .line 549
    :cond_0
    :goto_0
    return v0

    .line 539
    :cond_1
    const/4 v0, 0x0

    .line 541
    .local v0, "activeCount":I
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_0

    .line 542
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 543
    .local v1, "subManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 546
    .end local v1    # "subManager":Landroid/telephony/SubscriptionManager;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "dingtalkbase"

    sget-object v3, Lcpj;->a:Ljava/lang/String;

    const-string/jumbo v4, "getActiveSubscriptionInfoCount exp"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
