.class public final Ljyd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljyd$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/xiaomi/mipush/sdk/d;",
            "Ljyd$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljyd;->a:Ljava/util/HashMap;

    sget-object v0, Lcom/xiaomi/mipush/sdk/d;->a:Lcom/xiaomi/mipush/sdk/d;

    new-instance v1, Ljyd$a;

    const-string/jumbo v2, "com.xiaomi.assemble.control.HmsPushManager"

    const-string/jumbo v3, "newInstance"

    invoke-direct {v1, v2, v3}, Ljyd$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljyd;->a(Lcom/xiaomi/mipush/sdk/d;Ljyd$a;)V

    sget-object v0, Lcom/xiaomi/mipush/sdk/d;->b:Lcom/xiaomi/mipush/sdk/d;

    new-instance v1, Ljyd$a;

    const-string/jumbo v2, "com.xiaomi.assemble.control.FCMPushManager"

    const-string/jumbo v3, "newInstance"

    invoke-direct {v1, v2, v3}, Ljyd$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljyd;->a(Lcom/xiaomi/mipush/sdk/d;Ljyd$a;)V

    sget-object v0, Lcom/xiaomi/mipush/sdk/d;->c:Lcom/xiaomi/mipush/sdk/d;

    new-instance v1, Ljyd$a;

    const-string/jumbo v2, "com.xiaomi.assemble.control.COSPushManager"

    const-string/jumbo v3, "newInstance"

    invoke-direct {v1, v2, v3}, Ljyd$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljyd;->a(Lcom/xiaomi/mipush/sdk/d;Ljyd$a;)V

    return-void
.end method

.method public static a(Lcom/xiaomi/mipush/sdk/d;)Lcom/xiaomi/mipush/sdk/ao;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Ljye;->a:[I

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/d;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/ao;->c:Lcom/xiaomi/mipush/sdk/ao;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/ao;->d:Lcom/xiaomi/mipush/sdk/ao;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/xiaomi/mipush/sdk/ao;->e:Lcom/xiaomi/mipush/sdk/ao;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lcom/xiaomi/mipush/sdk/d;Ljyd$a;)V
    .locals 1

    sget-object v0, Ljyd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
