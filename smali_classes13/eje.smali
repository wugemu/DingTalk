.class public final Leje;
.super Leiy;
.source "OsMatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Leiy;-><init>()V

    .line 36
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
    .line 26
    const/4 v0, 0x0

    .line 28
    .local v0, "res":Z
    if-nez p1, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 39
    :goto_0
    return v1

    .line 32
    :cond_0
    sget-object v1, Leje$1;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    move v1, v0

    .line 39
    goto :goto_0

    .line 34
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "android"

    return-object v0
.end method
