.class final Lbbp$83;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Lbbp;


# direct methods
.method constructor <init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 741
    iput-object p1, p0, Lbbp$83;->c:Lbbp;

    iput-object p2, p0, Lbbp$83;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object p3, p0, Lbbp$83;->b:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 744
    iget-object v0, p0, Lbbp$83;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v1

    iget-object v2, p0, Lbbp$83;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v3, p0, Lbbp$83;->b:Lcom/alibaba/wukong/Callback;

    .line 2122
    if-nez v2, :cond_0

    .line 2123
    const-string/jumbo v0, "-1"

    const-string/jumbo v2, "ding is null"

    invoke-virtual {v1, v3, v0, v2}, Lbbo;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    :goto_0
    return-void

    .line 2127
    :cond_0
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ab()Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    move-result-object v0

    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->Unconfirmed:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    if-ne v0, v4, :cond_6

    move v4, v6

    .line 2128
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ad()I

    move-result v5

    .line 2131
    invoke-static {v2}, Lbkh;->e(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2132
    if-eqz v4, :cond_1

    .line 2133
    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->h(I)V

    .line 2135
    :cond_1
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->ConfirmedFromApp:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;)V

    .line 2139
    :cond_2
    if-eqz v4, :cond_3

    .line 2140
    iget-object v0, v1, Lbbo;->f:Lbgp;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v5, -0x1

    invoke-interface {v0, v8, v9}, Lbgp;->a(Ljava/lang/String;I)I

    .line 2142
    :cond_3
    iget-object v0, v1, Lbbo;->f:Lbgp;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->ConfirmedFromApp:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    invoke-interface {v0, v8, v9}, Lbgp;->a(Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;)I

    .line 2145
    invoke-virtual {v1}, Lbbo;->e()V

    .line 2147
    iget-object v8, v1, Lbbo;->h:Lbbk;

    new-instance v0, Lbbo$64;

    invoke-direct/range {v0 .. v5}, Lbbo$64;-><init>(Lbbo;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/wukong/Callback;ZI)V

    .line 2254
    if-eqz v2, :cond_4

    .line 2255
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2256
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2257
    :cond_4
    if-eqz v0, :cond_5

    .line 2258
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2260
    :cond_5
    const-string/jumbo v0, "confirm ding failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "dingIsNull or invalidate dingId"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move v4, v7

    .line 2127
    goto :goto_1

    .line 2264
    :cond_7
    new-instance v1, Lbbk$71;

    invoke-direct {v1, v8, v0}, Lbbk$71;-><init>(Lbbk;Lcma;)V

    .line 2280
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v3, "[DataSourceRemote] confirmDing."

    aput-object v3, v0, v7

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 2281
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 2282
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lbbk$82;

    invoke-direct {v3, v8, v1}, Lbbk$82;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->confirmDing(Ljava/lang/Long;Liyv;)V

    goto/16 :goto_0
.end method
