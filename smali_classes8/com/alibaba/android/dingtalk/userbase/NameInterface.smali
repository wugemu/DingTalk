.class public abstract Lcom/alibaba/android/dingtalk/userbase/NameInterface;
.super Lckb;
.source "NameInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lckb;-><init>()V

    return-void
.end method

.method public static a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;)Lckl;
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "orgId"    # J
    .param p4, "uid"    # J
    .param p6, "nameScheme"    # Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "nick"    # Ljava/lang/String;
    .param p3, "orgUserName"    # Ljava/lang/String;
    .param p4, "orgNickName"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "orgId"    # J
    .param p4, "uid"    # J
    .param p6, "nameScheme"    # Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lckl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p7, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lckl;>;"
    return-void
.end method
