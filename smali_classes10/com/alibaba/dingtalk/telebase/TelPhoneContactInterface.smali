.class public abstract Lcom/alibaba/dingtalk/telebase/TelPhoneContactInterface;
.super Lckb;
.source "TelPhoneContactInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lckb;-><init>()V

    return-void
.end method

.method public static a()Lcom/alibaba/dingtalk/telebase/TelPhoneContactInterface;
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/telebase/TelPhoneContactInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/telebase/TelPhoneContactInterface;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactObject"    # Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;

    .prologue
    .line 179
    return-void
.end method

.method public a(Lgwt;)Z
    .locals 1
    .param p1, "contactObject"    # Lgwt;

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "contactName"    # Ljava/lang/String;
    .param p2, "photoData"    # [B
    .param p3, "numberType"    # Ljava/lang/String;
    .param p5, "email"    # Ljava/lang/String;
    .param p6, "website"    # Ljava/lang/String;
    .param p7, "remark"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 79
    .local p4, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method
