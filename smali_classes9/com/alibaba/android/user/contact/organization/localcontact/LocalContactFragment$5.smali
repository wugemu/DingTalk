.class final Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$5;
.super Ljava/lang/Object;
.source "LocalContactFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->a(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$5;->a:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/16 v5, 0x23

    .line 350
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    check-cast p2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 1353
    if-ne p1, p2, :cond_1

    .line 1373
    :cond_0
    :goto_0
    return v0

    .line 1356
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 1357
    goto :goto_0

    .line 1359
    :cond_2
    if-nez p2, :cond_3

    move v0, v2

    .line 1360
    goto :goto_0

    .line 1363
    :cond_3
    invoke-static {p1}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->a(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v3

    .line 1364
    invoke-static {p2}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->a(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v4

    .line 1365
    if-eq v3, v4, :cond_0

    .line 1369
    if-ne v3, v5, :cond_4

    move v0, v2

    .line 1370
    goto :goto_0

    .line 1372
    :cond_4
    if-ne v4, v5, :cond_5

    move v0, v1

    .line 1373
    goto :goto_0

    .line 1375
    :cond_5
    sub-int v0, v3, v4

    .line 350
    goto :goto_0
.end method
