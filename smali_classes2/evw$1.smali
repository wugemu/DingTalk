.class final Levw$1;
.super Ljava/lang/Object;
.source "BigShowHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Levw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

.field final synthetic b:J

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;JLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Levw$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    iput-wide p2, p0, Levw$1;->b:J

    iput-object p4, p0, Levw$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 68
    iget-object v0, p0, Levw$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    iget-wide v2, p0, Levw$1;->b:J

    invoke-static {v2, v3}, Lewa;->a(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->phoneNum:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Levw$1;->a:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->phoneNum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Levw;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "createBigShow phoneNum is null"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Levw$1$1;

    invoke-direct {v1, p0}, Levw$1$1;-><init>(Levw$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
