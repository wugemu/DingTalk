.class final Lewb$15;
.super Ljava/lang/Object;
.source "Navigation.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewb;->a(Landroid/content/Context;JLcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lewb$15;->a:Landroid/content/Context;

    iput-object p2, p0, Lewb$15;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 341
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1344
    if-eqz p1, :cond_0

    .line 1346
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 1347
    iget-object v1, p0, Lewb$15;->a:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lewb$15;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-static {v1, v0, v2, v3}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    .line 341
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 358
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lewb;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "Create user by mobile "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ","

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    .line 359
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 358
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-wide/16 v0, 0x0

    .line 363
    .local v0, "errorCode":J
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 364
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 369
    :cond_0
    :goto_0
    const-wide/16 v2, 0x198

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 370
    sget v2, Leuj$l;->dt_conference_no_network_exp:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 374
    :goto_1
    return-void

    .line 372
    :cond_1
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 354
    return-void
.end method
