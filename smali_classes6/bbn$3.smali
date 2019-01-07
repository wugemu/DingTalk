.class final Lbbn$3;
.super Ljava/lang/Object;
.source "DingComparators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/16 v1, 0x7b

    const/16 v3, 0x23

    .line 90
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    check-cast p2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1093
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    .line 1094
    invoke-static {v0, v3}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v0

    .line 1095
    if-ne v0, v3, :cond_0

    move v0, v1

    .line 1098
    :cond_0
    iget-object v2, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    .line 1099
    invoke-static {v2, v3}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v2

    .line 1100
    if-ne v2, v3, :cond_3

    .line 1103
    :goto_0
    if-ne v0, v1, :cond_1

    .line 1104
    const/4 v0, 0x0

    .line 1106
    :goto_1
    return v0

    :cond_1
    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    .line 90
    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method
