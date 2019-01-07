.class public final Lejb;
.super Leiy;
.source "AppVerMatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Leiy;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;)Z
    .locals 3
    .param p1, "rule"    # Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    .line 44
    :cond_0
    const/4 v0, 0x1

    .line 45
    .local v0, "res":Z
    sget-object v1, Lejb$1;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 49
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-super {p0, p1}, Leiy;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1035
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lele;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "localVal":Ljava/lang/String;
    return-object v0
.end method
