.class public Lewa;
.super Ljava/lang/Object;
.source "ContactsManager.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lewa;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lewa;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JLjava/lang/String;)Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    .locals 12
    .param p0, "uid"    # J
    .param p2, "possibleMobile"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 55
    const/4 v2, 0x0

    .line 57
    .local v2, "userMobileObject":Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, v10, v11, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 59
    .local v1, "localContacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    new-instance v2, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    .end local v2    # "userMobileObject":Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    invoke-direct {v2}, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;-><init>()V

    .line 61
    .restart local v2    # "userMobileObject":Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    iput-object p2, v2, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    .line 62
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lewa;->a:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "Query num from local by mobile "

    aput-object v6, v5, v7

    .line 64
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 63
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .end local v1    # "localContacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    :cond_0
    if-nez v2, :cond_1

    cmp-long v3, p0, v10

    if-lez v3, :cond_1

    .line 70
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->i(J)Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    move-result-object v0

    .line 71
    .local v0, "localContactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    if-eqz v0, :cond_1

    .line 72
    new-instance v2, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    .end local v2    # "userMobileObject":Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    invoke-direct {v2}, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;-><init>()V

    .line 73
    .restart local v2    # "userMobileObject":Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    .line 74
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 75
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lewa;->a:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "Query num from local by uid "

    aput-object v6, v5, v7

    iget-object v6, v2, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    .line 76
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .end local v0    # "localContactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    :cond_1
    return-object v2
.end method

.method public static a(J)Ljava/lang/String;
    .locals 2
    .param p0, "uid"    # J

    .prologue
    .line 42
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lewa;->a(JLjava/lang/String;)Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    move-result-object v0

    .line 43
    .local v0, "userMobileObject":Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    if-eqz v0, :cond_0

    .line 44
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    .line 46
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static b(J)Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    .locals 10
    .param p0, "uid"    # J

    .prologue
    .line 84
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gtz v4, :cond_1

    .line 85
    const/4 v3, 0x0

    .line 101
    :cond_0
    :goto_0
    return-object v3

    .line 87
    :cond_1
    const/4 v3, 0x0

    .line 89
    .local v3, "userMobileObject":Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v2, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {}, Leyh;->a()Leyh;

    move-result-object v4

    invoke-virtual {v4, v2}, Leyh;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 92
    .local v0, "mobileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 93
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 94
    .local v1, "size":I
    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "userMobileObject":Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    check-cast v3, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    .line 95
    .restart local v3    # "userMobileObject":Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    iget-object v4, v3, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 96
    const-string/jumbo v4, "tele_conf"

    sget-object v5, Lewa;->a:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "Query num from local from cache db "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v3, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    .line 97
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 96
    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
