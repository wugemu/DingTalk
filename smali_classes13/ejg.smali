.class public final Lejg;
.super Leiy;
.source "UidMatcher.java"


# static fields
.field public static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lejg;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Leiy;-><init>()V

    .line 38
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
    .line 28
    if-nez p1, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    .line 32
    :cond_0
    const/4 v0, 0x1

    .line 33
    .local v0, "res":Z
    sget-object v1, Lejg$1;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 36
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 23
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
